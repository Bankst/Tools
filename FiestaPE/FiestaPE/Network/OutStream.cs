using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Sockets;
using System.Threading;

namespace FiestaPE
{
    class OutStream
    {
        private const int MaxReceiveBuffer = 16384;
        public delegate void StreamPass(OutStream pStream);
        public delegate void PacketPass(Packet pPacket, OutStream pStream);
        public event PacketPass OnPacket;
        public event StreamPass OnDisconnect;
        private int mDisconnected;
        public bool IsConnected { get; private set; }

        private byte[] mReceiveBuffer;
        private int mReceiveStart = 0;
        private int mReceiveLength = 0;
        //private DateTime mReceiveLast = DateTime.Now; // <-- not used anywhere
        private Queue<ByteArraySegment> mSendSegments;
        private int mSending;
        private short xorPos;
        private bool gotxor = false;

        private ushort mReceivingPacketLength = 0;
        private byte mHeaderSize = 1;

        public string Host { get; private set; }
        public Socket Socket { get; set; }
        public ClientTunnel Tunnel { get; private set; }

        private string IP;
        private ushort Port;


        public OutStream(string pIP, ushort pPort, ClientTunnel pTunnel)
        {
            Tunnel = pTunnel;
            IP = pIP;
            Port = pPort;
            mReceiveBuffer = new byte[MaxReceiveBuffer];
            mSendSegments = new Queue<ByteArraySegment>();
        }

        public void Connect()
        {
            Socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            Socket.BeginConnect(IP, Port, new AsyncCallback(OnConnected), null);
        }

        private void OnConnected(IAsyncResult ar)
        {
            try
            {
                Socket.EndConnect(ar);
                IsConnected = true;
                if (mSendSegments.Count > 0)
                    SendQueue();
                Tunnel.InStream.OutIsReady();

                BeginReceive();
            }
            catch (Exception ex)
            {
                Log.WriteLine(LogLevel.Exception, "Error connecting to out: {0}", ex.Message);
                Disconnect();
            }
        }

        public void Disconnect()
        {
            if (Interlocked.CompareExchange(ref mDisconnected, 1, 0) == 0)
            {
                if (OnDisconnect != null)
                {
                    OnDisconnect.Invoke(this);
                }
                Log.WriteLine(LogLevel.Debug, "OutStream disconnected.");
                IsConnected = false;
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
                Log.WriteLine(LogLevel.Debug, "Error beginrecv outstream");
                Disconnect();
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
                Log.WriteLine(LogLevel.Debug, "Error endrecv for outstream.");
                Disconnect();
                return;
            }
            mReceiveLength += pArguments.BytesTransferred;

            while (mReceiveLength > 1 && gotxor)
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
                    Packet packet = new Packet(packetData);
                    if (OnPacket != null)
                    {
                        OnPacket.Invoke(packet, this);
                    }
                    mReceivingPacketLength = 0;
                }
            }

            if (!gotxor)
            {
                this.xorPos = BitConverter.ToInt16(mReceiveBuffer, 3);
                Log.WriteLine(LogLevel.Info, "Got Xor: {0}", this.xorPos);
                mReceiveStart += mReceiveLength;
                mReceiveLength = 0;
                gotxor = true;
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
            if (!IsConnected)
            {
                EnqueueSend(pPacket.ToArray(true, ref xorPos));
            }
            else
            {
                this.Send(pPacket.ToArray(true, ref xorPos));
            }
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
                Log.WriteLine(LogLevel.Debug, "beginsend outstream failed.");
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
                Log.WriteLine(LogLevel.Debug, "Error endsend outstream.");
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
