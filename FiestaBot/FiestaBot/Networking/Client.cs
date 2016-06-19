using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Sockets;
using System.Threading;
using FiestaBot.Tools;

namespace FiestaBot
{
    public class Client
    {
        private const int MAX_RECEIVE_BUFFER = 16384;

        private Socket mSocket = null;
        public string mHost = null;
        public ushort mPort = 0;
        private int mDisconnected = 0;

        private byte[] mReceiveBuffer = null;
        private int mReceiveStart = 0;
        private int mReceiveLength = 0;
        private DateTime mReceiveLast = DateTime.Now;
        private LockFreeQueue<ByteArraySegment> mSendSegments = new LockFreeQueue<ByteArraySegment>();
        private int mSending = 0;
        private short mXorPos = -1;

        private ushort mReceivingPacketLength = 0;

        private DateTime mLastPing = DateTime.Now;
        private DateTime mLastPong = DateTime.Now;

        public delegate void PassClient(Client pClient);
        public delegate void PassPacket(Packet pPacket, Client pClient);
        public event PassClient OnConnect;
        public event PassPacket OnPacket;
        public event PassClient OnDisconnect;


        public Client(string pIP, ushort pPort)
        {
            mHost = pIP;
            mPort = pPort;
        }

        public void Connect()
        {
            if (mPort == 0) throw new Exception("No ip set to client.");
            mSocket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            mSocket.BeginConnect(mHost, mPort, new AsyncCallback(OnConnected), mSocket);
            mReceiveBuffer = new byte[MAX_RECEIVE_BUFFER];
        }

        private void OnConnected(IAsyncResult ar)
        {
            try
            {
                mSocket.EndConnect(ar);
                BeginReceive();
            }
            catch
            {
                Disconnect();
            }
        }

        public void Disconnect(bool pRaiseEvent = true)
        {
            if (mDisconnected != 0) return;
            try
            {
                mSocket.Shutdown(SocketShutdown.Both);
            }
            catch { }
            if (OnDisconnect != null && pRaiseEvent)
                OnDisconnect.Invoke(this);
            mDisconnected = 1;
        }

        private void BeginReceive()
        {
            if (mDisconnected != 0) return;
            SocketAsyncEventArgs args = new SocketAsyncEventArgs();
            args.Completed += (s, a) => EndReceive(a);
            args.SetBuffer(mReceiveBuffer, mReceiveStart, mReceiveBuffer.Length - (mReceiveStart + mReceiveLength));
            try { if (!mSocket.ReceiveAsync(args)) EndReceive(args); }
            catch (ObjectDisposedException) { Disconnect(); }
        }

        private void EndReceive(SocketAsyncEventArgs pArguments)
        {
            if (mDisconnected != 0) return;
            if (pArguments.BytesTransferred <= 0)
            {
                if (pArguments.SocketError != SocketError.Success && pArguments.SocketError != SocketError.ConnectionReset)
                Disconnect();
                return;
            }
            mReceiveLength += pArguments.BytesTransferred;

            while (mReceiveLength > 1)
            {
                if (mXorPos < 0) //retrieve handshake
                {
                    if (mReceiveLength != 5) throw new Exception("Error retrieving handshake.");
                    mXorPos = BitConverter.ToInt16(mReceiveBuffer, 3);
                    mReceiveStart += 5;
                    mReceiveLength -= 5;
                    if (OnConnect != null)
                        OnConnect.Invoke(this);
                    continue;
                }

                if (mReceivingPacketLength == 0) 
                {
                    if (mReceiveBuffer[mReceiveStart] != 0)
                        mReceivingPacketLength = mReceiveBuffer[mReceiveStart];
                    else
                    {
                        if (mReceiveLength >= 3)
                            mReceivingPacketLength = BitConverter.ToUInt16(mReceiveBuffer, mReceiveStart + 1);
                        else return;
                    }
                }

                if (mReceivingPacketLength > 0 && mReceiveLength >= mReceivingPacketLength + 1)
                {
                    Packet packet;
                    if (mReceivingPacketLength > 0xff)
                    {
                        packet = new Packet(mReceiveBuffer, mReceiveStart + 3, mReceivingPacketLength);
                        mReceiveStart += mReceivingPacketLength + 3;
                        mReceiveLength -= mReceivingPacketLength + 3;
                    }
                    else
                    {
                        packet = new Packet(mReceiveBuffer, mReceiveStart + 1, mReceivingPacketLength);
                        mReceiveStart += mReceivingPacketLength + 1;
                        mReceiveLength -= mReceivingPacketLength + 1;
                    }
                    if (OnPacket != null)
                        OnPacket.Invoke(packet, this);
                    mReceivingPacketLength = 0;
                    mReceiveLast = DateTime.Now;
                }
            }

            if (mReceiveLength == 0) mReceiveStart = 0;
            else if (mReceiveStart > 0 && (mReceiveStart + mReceiveLength) >= mReceiveBuffer.Length)
            {
                Buffer.BlockCopy(mReceiveBuffer, mReceiveStart, mReceiveBuffer, 0, mReceiveLength);
                mReceiveStart = 0;
            }
            if (mReceiveLength >= mReceiveBuffer.Length)
            {
                Log.WriteLine("[{0}:{1}] Receive Overflow", mHost, mPort);
                Disconnect();
            }
            else BeginReceive();
        }

        private void BeginSend()
        {
            SocketAsyncEventArgs args = new SocketAsyncEventArgs();
            args.Completed += (s, a) => EndSend(a);
            ByteArraySegment segment = mSendSegments.Next;
            args.SetBuffer(segment.Buffer, segment.Start, segment.Length);
            try { if (!mSocket.SendAsync(args)) EndSend(args); }
            catch (ObjectDisposedException) { Disconnect(); }
        }

        public void SendRaw(byte[] pBuffer)
        {
            if (mDisconnected != 0) return;
            mSendSegments.Enqueue(new ByteArraySegment(pBuffer));
            if (Interlocked.CompareExchange(ref mSending, 1, 0) == 0) BeginSend();
        }

        private void Encrypt(byte[] buffer, int offset, int len)
        {
            for (int i = 0; i < len; ++i)
            {
                buffer[i + offset] ^= Crypto.xorTable[mXorPos];
                mXorPos++;
                if (mXorPos == 499) mXorPos = 0;
            }
        }

        public void SendPacket(Packet pPacket)
        {
            byte[] pToSend = pPacket.Dump();
            if (pToSend.Length > 0x100)
                Encrypt(pToSend, 3, pToSend.Length - 3);
            else
                Encrypt(pToSend, 1, pToSend.Length - 1);
            SendRaw(pToSend);
        }

        public byte[] GetEncryptedPacket(Packet pPacket)
        {
            byte[] pToSend = pPacket.Dump();
            if (pToSend.Length > 0x100)
                Encrypt(pToSend, 3, pToSend.Length - 3);
            else
                Encrypt(pToSend, 1, pToSend.Length - 1);
            return pToSend;
        }

        private void EndSend(SocketAsyncEventArgs pArguments)
        {
            if (mDisconnected != 0) return;
            if (pArguments.BytesTransferred <= 0)
            {
                Disconnect();
                return;
            }
            if (mSendSegments.Next.Advance(pArguments.BytesTransferred)) mSendSegments.Dequeue();
            if (mSendSegments.Next != null) BeginSend();
            else mSending = 0;
        }
    }
}
