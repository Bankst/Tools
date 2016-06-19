using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FiestaAdmin.Tools;
using System.Net.Sockets;
using System.Net;
using FiestaAdmin.Security;
using System.Threading;

namespace FiestaAdmin.Networking
{
    class Client
    {
        private const int MAX_RECEIVE_BUFFER = 16384;

        public delegate void PassClient(Client client);
        public delegate void PassPacket(Client client, Packet packet);
        public event PassPacket OnPacket;
        public event PassClient OnDisconnect;

        private Socket mSocket = null;
        private string mHost = null;
        private int mDisconnected = 0;

        private byte[] mReceiveBuffer = null;
        private int mReceiveStart = 0;
        private int mReceiveLength = 0;
        private DateTime mReceiveLast = DateTime.Now;
        private LockFreeQueue<ByteArraySegment> mSendSegments = new LockFreeQueue<ByteArraySegment>();
        private int mSending = 0;
        private ushort mReceivingPacketLength = 0;
        public string Host { get { return mHost; } }

        private Crypto sendcrypt;
        private Crypto recvcrypt;

        public Client(Socket pSocket)
        {
            Random rand = new Random();
            byte[] siv = new byte[4];
            byte[] riv = new byte[4];
            rand.NextBytes(siv);
            rand.NextBytes(riv);

            sendcrypt = new Crypto(siv, 13);
            recvcrypt = new Crypto(riv, 13);

            mSocket = pSocket;
            mReceiveBuffer = new byte[MAX_RECEIVE_BUFFER];
            mHost = ((IPEndPoint)mSocket.RemoteEndPoint).Address.ToString();
        }

        public void Begin()
        {
            SendHandshake(sendcrypt.IV, recvcrypt.IV);
            BeginReceive();
        }

        private void BeginReceive()
        {
            if (mDisconnected != 0) return;
            SocketAsyncEventArgs args = new SocketAsyncEventArgs();
            args.Completed += (s, a) => EndReceive(a);
            args.SetBuffer(mReceiveBuffer, mReceiveStart, mReceiveBuffer.Length - (mReceiveStart + mReceiveLength));
            try { if (!mSocket.ReceiveAsync(args)) EndReceive(args); }
            catch (ObjectDisposedException) { }
        }

        public void Disconnect()
        {
            if (Interlocked.CompareExchange(ref mDisconnected, 1, 0) == 0) //if not disconnected, do now
            {
                mSocket.Shutdown(SocketShutdown.Both);
                mSocket.Close();
                if (OnDisconnect != null)
                    OnDisconnect.Invoke(this);
            }
        }

        private void SendHandshake(byte[] siv, byte[] riv)
        {
            byte[] packet = new byte[9];
            packet[0] = 123;
            Buffer.BlockCopy(siv, 0, packet, 1, 4);
            Buffer.BlockCopy(riv, 0, packet, 5, 4);
            Send(packet);
        }

        private void EndReceive(SocketAsyncEventArgs pArguments)
        {
            if (mDisconnected != 0) return;
            if (pArguments.BytesTransferred <= 0)
            {
                if (pArguments.SocketError != SocketError.Success && pArguments.SocketError != SocketError.ConnectionReset) Log.WriteLine(LogLevel.Error, "[{0}] Receive Error: {1}", Host, pArguments.SocketError);
                Disconnect();
                return;
            }
            mReceiveLength += pArguments.BytesTransferred;

            while (mReceiveLength > 4)
            {
                if (mReceivingPacketLength == 0)
                {
                    byte[] header = new byte[4];
                    Buffer.BlockCopy(mReceiveBuffer, mReceiveStart, header, 0, 4);
                    if (recvcrypt.ValidateHeader(header))
                    {
                        mReceivingPacketLength = Crypto.GetPacketLength(header);
                    }
                    else
                    {
                        Log.WriteLine(LogLevel.Warn, "Incorrect header -> Disconnecting.");
                        Disconnect();
                    }
                }
                if (mReceivingPacketLength > 0 && mReceiveLength >= mReceivingPacketLength + 4)
                {
                    byte[] data = new byte[mReceivingPacketLength];
                    Buffer.BlockCopy(mReceiveBuffer, mReceiveStart + 4, data, 0, mReceivingPacketLength);
                    recvcrypt.Decrypt(data);

                    Packet packet;
                    packet = new Packet(data);
                    if (OnPacket != null)
                    {
                        OnPacket.Invoke(this, packet);
                    }

                    mReceiveStart += mReceivingPacketLength + 4;
                    mReceiveLength -= mReceivingPacketLength + 4;
                    mReceivingPacketLength = 0;
                    mReceiveLast = DateTime.Now;
                }
                else
                    break;
            }

            if (mReceiveLength == 0) mReceiveStart = 0;
            else if (mReceiveStart > 0 && (mReceiveStart + mReceiveLength) >= mReceiveBuffer.Length)
            {
                Buffer.BlockCopy(mReceiveBuffer, mReceiveStart, mReceiveBuffer, 0, mReceiveLength);
                mReceiveStart = 0;
            }
            if (mReceiveLength == mReceiveBuffer.Length)
            {
                Log.WriteLine(LogLevel.Warn, "[{0}] Receive Overflow", Host);
                Disconnect();
            }
            else BeginReceive();
        }

        public void SendPacket(Packet pPacket)
        {
            byte[] tosend = new byte[pPacket.Length + 4];
            Buffer.BlockCopy(sendcrypt.ConstructHeader(pPacket.Length), 0, tosend, 0, 4);
            byte[] data = pPacket.ToArray();
            sendcrypt.Encrypt(data);
            Buffer.BlockCopy(data, 0, tosend, 4, data.Length);
            Send(tosend);
        }

        private void BeginSend()
        {
            SocketAsyncEventArgs args = new SocketAsyncEventArgs();
            args.Completed += (s, a) => EndSend(a);
            ByteArraySegment segment = mSendSegments.Next;
            args.SetBuffer(segment.Buffer, segment.Start, segment.Length);
            try { if (!mSocket.SendAsync(args)) EndSend(args); }
            catch (ObjectDisposedException) { }
        }

        public void Send(byte[] pBuffer)
        {
            if (mDisconnected != 0) return;
            mSendSegments.Enqueue(new ByteArraySegment(pBuffer));
            if (Interlocked.CompareExchange(ref mSending, 1, 0) == 0) BeginSend();
        }

        private void EndSend(SocketAsyncEventArgs pArguments)
        {
            if (mDisconnected != 0) return;
            if (pArguments.BytesTransferred <= 0)
            {
                if (pArguments.SocketError != SocketError.Success) Log.WriteLine(LogLevel.Error, "[{0}] Send Error: {1}", Host, pArguments.SocketError);
                Disconnect();
                return;
            }
            if (mSendSegments.Next.Advance(pArguments.BytesTransferred)) mSendSegments.Dequeue();
            if (mSendSegments.Next != null) BeginSend();
            else mSending = 0;
        }
    }
}
