using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Sockets;
using System.Threading;

namespace FiestaPE
{
    class InStream
    {
        private const int MaxReceiveBuffer = 16384;
        public delegate void StreamPass(InStream pStream);
        public delegate void PacketPass(Packet pPacket, InStream pStream);
        public event PacketPass OnPacket;
        public event StreamPass OnDisconnect;
        private int mDisconnected;

        private byte[] mReceiveBuffer;
        private int mReceiveStart;
        private int mReceiveLength;
        //private DateTime mReceiveLast = DateTime.Now; // <-- not used anywhere
        private Queue<ByteArraySegment> mSendSegments;
        private int mSending;
        private short xorPos;

        private ushort mReceivingPacketLength;
        private byte mHeaderSize = 1;

        public string Host { get; private set; }
        public Socket Socket { get; set; }
        public ClientTunnel Tunnel { get; private set; }

        //TODO: write decent client linking

        public InStream(Socket pSocket, ClientTunnel pTunnel)
        {
            Tunnel = pTunnel;
            mSendSegments = new Queue<ByteArraySegment>();
            this.Socket = pSocket;
            this.Host = ((IPEndPoint) this.Socket.RemoteEndPoint).Address.ToString();
            mReceiveBuffer = new byte[MaxReceiveBuffer];
            Random ran = new Random();
            xorPos = (short) ran.Next(0, 498);
        }

        public void OutIsReady()
        {
            SendHandshake(xorPos);
            BeginReceive();
        }

        public void Disconnect()
        {
            if (Interlocked.CompareExchange(ref mDisconnected, 1, 0) == 0)
            {
                if (OnDisconnect != null)
                {
                    OnDisconnect.Invoke(this);
                }
                Log.WriteLine(LogLevel.Debug, "InStream Client disconnected.");
            }
        }

        private void BeginReceive()
        {
            if (mDisconnected != 0) return;
            SocketAsyncEventArgs args = new SocketAsyncEventArgs();
            args.Completed += EndReceive;
            args.SetBuffer(mReceiveBuffer, mReceiveStart, mReceiveBuffer.Length - (mReceiveStart + mReceiveLength));
            try
            {
                if (!this.Socket.ReceiveAsync(args))
                {
                    EndReceive(this, args);
                }
            }
            catch (ObjectDisposedException)
            {
                Disconnect();
                Log.WriteLine(LogLevel.Debug, "Disconnect on beginrecv instream");
            }
        }

        private void EndReceive(object sender, SocketAsyncEventArgs pArguments)
        {
            if (mDisconnected != 0) return;

            if (pArguments.BytesTransferred <= 0)
            {
                if (pArguments.SocketError != SocketError.Success && pArguments.SocketError != SocketError.ConnectionReset)
                {
                    Log.WriteLine(LogLevel.Error, "[{0}] Receive Error: {1}", this.Host, pArguments.SocketError);
                }
                Disconnect();
                return;
            }
            mReceiveLength += pArguments.BytesTransferred;

            while (mReceiveLength > 1)
            {
                if (mReceivingPacketLength == 0) //new packet
                {
                    if (mReceiveBuffer[mReceiveStart] != 0)
                    {
                        mReceivingPacketLength = mReceiveBuffer[mReceiveStart];
                        mHeaderSize = 1;
                    }
                    else
                    {
                        mHeaderSize = 3;
                        if (mReceiveLength >= 3)
                        {
                            mReceivingPacketLength = BitConverter.ToUInt16(mReceiveBuffer, mReceiveStart + 1);
                        }
                        else return;
                    }
                }
                if (mReceivingPacketLength > 0 && mReceiveLength >= mReceivingPacketLength + mHeaderSize)
                {
                    byte[] packetData = new byte[mReceivingPacketLength];
                    Buffer.BlockCopy(mReceiveBuffer, mReceiveStart + mHeaderSize, packetData, 0, mReceivingPacketLength);

                    mReceiveStart += mReceivingPacketLength + mHeaderSize;
                    mReceiveLength -= mReceivingPacketLength + mHeaderSize;

                    Cryptography.Decrypt(packetData, 0, mReceivingPacketLength, ref xorPos);
                    Packet packet = new Packet(packetData);
                    if (OnPacket != null)
                    {
                        OnPacket.Invoke(packet, this);
                    }
                    mReceivingPacketLength = 0;
                }
            }

            if (mReceiveLength == 0)
            {
                mReceiveStart = 0;
            }
            else if (mReceiveStart > 0 && (mReceiveStart + mReceiveLength) >= mReceiveBuffer.Length)
            {
                Buffer.BlockCopy(mReceiveBuffer, mReceiveStart, mReceiveBuffer, 0, mReceiveLength);
                mReceiveStart = 0;
            }

            if (mReceiveLength == mReceiveBuffer.Length)
            {
                Log.WriteLine(LogLevel.Error, "[{0}] Receive Overflow", this.Host);
                Disconnect();
            }
            else
            {
                BeginReceive();
            }
            pArguments.Dispose();
        }

        private void SendHandshake(short pXorPos)
        {
            byte[] buffer = new byte[]
            {
                0x04, 0x07, 0x08, (byte) pXorPos, (byte) (pXorPos >> 8)
            };
            Send(buffer);
        }

        public void Send(byte[] pBuffer)
        {
            if (mDisconnected != 0) return;
            mSendSegments.Enqueue(new ByteArraySegment(pBuffer));
            if (Interlocked.CompareExchange(ref mSending, 1, 0) == 0)
            {
                BeginSend();
            }
        }

        public void EnqueueSend(byte[] pBuffer)
        {
            if (mDisconnected != 0) return;
            mSendSegments.Enqueue(new ByteArraySegment(pBuffer));
        }

        public void SendQueue()
        {
            if (Interlocked.CompareExchange(ref mSending, 1, 0) == 0)
            {
                BeginSend();
            }
        }

        public void SendPacket(Packet pPacket)
        {
            short refshit = 0;
            this.Send(pPacket.ToArray(false, ref refshit));
        }

        private void BeginSend()
        {
            SocketAsyncEventArgs args = new SocketAsyncEventArgs();
            ByteArraySegment segment = mSendSegments.Peek();
            args.Completed += EndSend;
            args.SetBuffer(segment.Buffer, segment.Start, segment.Length);
            try
            {
                if (!this.Socket.SendAsync(args))
                {
                    EndSend(this, args);
                }
            }
            catch (ObjectDisposedException)
            {
                Log.WriteLine(LogLevel.Exception, "Error beginsend, instream");
                Disconnect();
            }
        }

        private void EndSend(object sender, SocketAsyncEventArgs pArguments)
        {
            if (mDisconnected != 0) return;

            if (pArguments.BytesTransferred <= 0)
            {
                if (pArguments.SocketError != SocketError.Success)
                {
                    Log.WriteLine(LogLevel.Error, "[{0}] Send Error: {1}", this.Host, pArguments.SocketError);
                }
                Disconnect();
                return;
            }
            ByteArraySegment segment = mSendSegments.Peek();
            if (segment.Advance(pArguments.BytesTransferred))
            {
                mSendSegments.Dequeue();
            }

            if (mSendSegments.Count > 0)
            {
                this.BeginSend();
            }
            else
            {
                mSending = 0;
            }
        }
    }
}
