using System;
using System.Collections.Concurrent;
using System.Net;
using System.Net.Sockets;
using System.Threading;
using FiestaLib.Encryption;
using FiestaLib.Util;

namespace FiestaLib.Networking
{
    public class Client
    {
        private const int MaxReceiveBuffer = 64000;

        private int mDisconnected;
        private byte[] mReceiveBuffer;
        private int mReceiveStart;
        private int mReceiveLength;
        private ConcurrentQueue<ByteArraySegment> mSendSegments;
        private int mSending;
        private NetCrypto crypto;
        private ushort mReceivingPacketLength;
        private bool BigHeader = false;

        public Socket Socket { get; set; }
        public ClientType ClientType { get; private set; }
        public event EventHandler<NetworkEventArgs> OnEvent;

        public Client(Socket socket, ClientType type)
        {
            this.ClientType = type;
            mSendSegments = new ConcurrentQueue<ByteArraySegment>();
            this.Socket = socket;
            mReceiveBuffer = new byte[MaxReceiveBuffer];
        }

        public void Start()
        {
            if (this.ClientType == Networking.ClientType.ToClient)
            {
                crypto = new NetCrypto(MathUtils.RandomizeShort(498));
                SendHandshake(crypto.XorPos);
            }
            BeginReceive();
        }

         public void Disconnect()
         {
             if (Interlocked.CompareExchange(ref mDisconnected, 1, 0) == 0)
             {
                 try
                 {
                     Socket.Shutdown(SocketShutdown.Both);
                 }
                 catch { }
                 if (OnEvent != null)
                 {
                     NetworkEventArgs args =  new NetworkEventArgs(NetworkEventType.Disconnected);
                     OnEvent.BeginInvoke(this,args, new AsyncCallback(EndEvent), args);
                 }
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
             catch (ObjectDisposedException ex)
             {
                 Console.WriteLine("BeginRecv: {0}", ex.Message);
                 Disconnect();
             }
         }

         private void EndReceive(object sender, SocketAsyncEventArgs pArguments)
         {
                 if (mDisconnected != 0) return;
                 if (pArguments.BytesTransferred <= 0)
                 {
                     Console.WriteLine("EndRecv: BytesTransfer <= 0");
                     Disconnect();
                     return;
                 }
                 mReceiveLength += pArguments.BytesTransferred;

                 while (mReceiveLength > 1)
                 {
                     //parse crypto headers
                     if (crypto == null)
                     {
                         if (mReceiveLength != 5 || mReceiveBuffer[mReceiveStart] != 0x04) return;
                         short xorpos = BitConverter.ToInt16(mReceiveBuffer, mReceiveStart + 3);
                         if (xorpos > 499)
                         {
                             Console.WriteLine("EndRecv: Invalid XOR Received.");
                             Disconnect();
                         }
                         crypto = new NetCrypto(xorpos);
                         mReceiveStart += mReceiveLength;
                         mReceiveLength -= mReceiveLength;
                         if (OnEvent != null)
                         {
                             NetworkEventArgs args = new NetworkEventArgs(NetworkEventType.CryptoReceived, xorpos);
                             OnEvent.BeginInvoke(this, args, new AsyncCallback(EndEvent), args);
                         }
                         break;
                     }

                     //parse headers
                     if (mReceivingPacketLength == 0)
                     {
                         mReceivingPacketLength = mReceiveBuffer[mReceiveStart];
                         if (mReceivingPacketLength == 0)
                         {
                             if (mReceiveLength >= 3)
                             {
                                 mReceivingPacketLength = BitConverter.ToUInt16(mReceiveBuffer, mReceiveStart + 1);
                                 BigHeader = true;
                                 if (mReceivingPacketLength > 10000 || mReceivingPacketLength == 0)
                                 {
                                    //shit will happen
                                 }
                             }
                             else
                             {
                                 break;
                             }
                         }
                         else
                         {
                             BigHeader = false;
                         }
                     }

                     //parse packets
                     if (mReceivingPacketLength > 0 && mReceiveLength >= mReceivingPacketLength + (BigHeader ? 3 : 1))
                     {
                         byte[] packetData = new byte[mReceivingPacketLength];
                         Buffer.BlockCopy(mReceiveBuffer, mReceiveStart + (BigHeader ? 3 : 1), packetData, 0, mReceivingPacketLength);
                         if (this.ClientType == Networking.ClientType.ToClient)
                         {
                             crypto.Crypt(packetData, 0, mReceivingPacketLength);
                         }
                         if (OnEvent != null)
                         {
                             Packet packet = new Packet(packetData);
                             NetworkEventArgs args = new NetworkEventArgs(NetworkEventType.PacketReceived, packet);
                             OnEvent.BeginInvoke(this, args, new AsyncCallback(EndEvent), args);
                         }

                         //we reset this packet
                         mReceiveStart += mReceivingPacketLength + (BigHeader ? 3 : 1);
                         mReceiveLength -= mReceivingPacketLength + (BigHeader ? 3 : 1);
                         mReceivingPacketLength = 0;
                     }
                     else break;
                 }

                 if (mReceiveLength == 0) mReceiveStart = 0;
                 else if (mReceiveStart > 0 && (mReceiveStart + mReceiveLength) >= mReceiveBuffer.Length)
                 {
                     Buffer.BlockCopy(mReceiveBuffer, mReceiveStart, mReceiveBuffer, 0, mReceiveLength);
                     mReceiveStart = 0;
                 }
                 if (mReceiveLength == mReceiveBuffer.Length)
                 {
                     Console.WriteLine("EndRecv: Buffer overflow.");
                     Disconnect();
                 }
                 else BeginReceive();
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

         public void SendPacket(Packet pPacket)
         {
             if (this.ClientType == Networking.ClientType.ToClient)
             {
                 Send(pPacket.ToArray());
             }
             else
             {
                 Send(pPacket.ToArray(this.crypto));
             }
         }

         private void BeginSend()
         {
             SocketAsyncEventArgs args = new SocketAsyncEventArgs();
             ByteArraySegment segment;
             if (mSendSegments.TryPeek(out segment))
             {
                 args.Completed += EndSend;
                 args.SetBuffer(segment.Buffer, segment.Start, segment.Length);
                // args.SetBuffer(segment.Buffer, segment.Start, Math.Min(segment.Length, 1360));
                 try
                 {
                     if (!this.Socket.SendAsync(args))
                     {
                         EndSend(this, args);
                     }
                 }
                 catch (ObjectDisposedException ex)
                 {
                     Console.WriteLine("BeginSend: {0}", ex.Message);
                     Disconnect();
                 }
             }
         }

         private void EndSend(object sender, SocketAsyncEventArgs pArguments)
         {
             if (mDisconnected != 0) return;

             if (pArguments.BytesTransferred <= 0)
             {
                 Console.WriteLine("EndSend: BytesTransferred <= 0");
                 Disconnect();
                 return;
             }

             ByteArraySegment segment;
             if (mSendSegments.TryPeek(out segment))
             {
                 if (segment.Advance(pArguments.BytesTransferred))
                 {
                     ByteArraySegment seg;
                     mSendSegments.TryDequeue(out seg); //we try to get it out
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

         private void EndEvent(IAsyncResult iar)
         {
             NetworkEventArgs args = (NetworkEventArgs)iar.AsyncState;
             //we get rid of the packet object in a clean way!
             if (args.Type == NetworkEventType.PacketReceived)
             {
                 ((Packet)args.Obj).Dispose();
             }

             try
             {
                 OnEvent.EndInvoke(iar);
             }
             catch
             {
                 throw new Exception("Event failed to execute: " + args.Type.ToString());
             }
         }
    }

    public enum ClientType
    {
        ToServer,
        ToClient
    }
}
