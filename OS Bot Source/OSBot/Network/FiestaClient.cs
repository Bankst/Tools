using System;
using System.Net.Sockets;
using OSBot.Logic;
using OSBot.Cryptography;

namespace OSBot.Network
{
    public class FiestaClient : TCPClient
    {
        public event MultiObjectEvent<FiestaClient, FiestaPacket> OnPacketReceive;
        public event EmptyEvent OnXorPosReceived;
        public FiestaBot Bot { get; private set; }
        
        //crypto
        private bool XorReceived;
        private ushort XorPosition;
        
        //members for parsing packets
        private int mReceiveStart;
        private int mReceiveLength;
        private ushort mReceivingPacketLength;
        private byte HeaderLength = 0;
        
        public FiestaClient(Socket Socket, FiestaBot Bot): base(Socket)
        {
            this.Bot = Bot;
        }

        protected override void DisposeInternal()
        {
            OnPacketReceive = null;
            OnXorPosReceived = null;
            Bot = null;
        }
        
        protected override sealed void BeforeSend(ref byte[] Data)
        {
            //encrypt data
            XorCrypto.Crypt(ref XorPosition, ref Data, 0, Data.Length);
            //write length before data
            WritePacketLength(ref Data);
        }

        private static void WritePacketLength(ref byte[] Data)
        {
            byte[] buffer;
            if (Data.Length <= 0xff)
            {
                buffer = new byte[Data.Length + 1];
                Buffer.BlockCopy(Data, 0, buffer, 1, Data.Length);
                buffer[0] = (byte)Data.Length;
            }
            else
            {
                buffer = new byte[Data.Length + 3];
                Buffer.BlockCopy(Data, 0, buffer, 3, Data.Length);
                Buffer.BlockCopy(BitConverter.GetBytes((ushort)Data.Length), 0, buffer, 1, 2);
            }
            Data = buffer;
        }

        protected override sealed SocketAsyncEventArgs CreateReceiveArgs()
        {
            var args = new SocketAsyncEventArgs();
            args.SetBuffer(ReceiveBuffer, mReceiveStart, ReceiveBuffer.Length - (mReceiveStart + mReceiveLength));
            return args;
        }

        protected override sealed void OnReceive(ref byte[] Data)
        {
            var transfered = Data.Length;
            mReceiveLength += transfered;
            while (mReceiveLength > 1)
            {
                //parse headers
                //TODO: proper rewrite!
                if (mReceivingPacketLength == 0)
                {
                    mReceivingPacketLength = ReceiveBuffer[mReceiveStart];
                    if (mReceivingPacketLength == 0)
                    {
                        if (mReceiveLength >= 3)
                        {
                            mReceivingPacketLength = BitConverter.ToUInt16(ReceiveBuffer, mReceiveStart + 1);
                            HeaderLength = 3;
                        }
                        else
                        {
                            break;
                        }
                    }
                    else
                    {
                        HeaderLength = 1;
                    }
                }

                //parse packets
                if (mReceivingPacketLength > 0 && mReceiveLength >= mReceivingPacketLength + HeaderLength)
                {
                    byte[] packetData = new byte[mReceivingPacketLength];
                    Buffer.BlockCopy(ReceiveBuffer, mReceiveStart + HeaderLength, packetData, 0, mReceivingPacketLength);
                    
                    //packet ready
                    //check if packet contains the xor position
                    var packet = new FiestaPacket(packetData);
                    Console.WriteLine("Received packet. {0}|{1}  >> Length: {2}", packet.Header, packet.Type, packet.Length);
                    if (!XorReceived)
                    {
                        ushort XorPos;
                        if (!packet.ReadUInt16(out XorPos))
                        {
                            Dispose();
                            return;
                        }
                        XorPosition = XorPos;
                        XorReceived = true;
                        if (OnXorPosReceived != null)
                        {
                            OnXorPosReceived.Invoke();
                        }
                        packet.Dispose();
                    }
                    else
                    {
                        if (OnPacketReceive != null)
                        {
                            OnPacketReceive.Invoke(this, packet);
                        }
                        else
                        {
                            packet.Dispose();
                        }
                    }
                    
                    //we reset this packet
                    mReceiveStart += mReceivingPacketLength + HeaderLength;
                    mReceiveLength -= mReceivingPacketLength + HeaderLength;
                    mReceivingPacketLength = 0;
                }
                else
                break;
            }

            if (mReceiveLength == 0)
                mReceiveStart = 0;
            else
                if (mReceiveStart > 0 && (mReceiveStart + mReceiveLength) >= ReceiveBuffer.Length)
                {
                    Buffer.BlockCopy(ReceiveBuffer, mReceiveStart, ReceiveBuffer, 0, mReceiveLength);
                    mReceiveStart = 0;
                }
            if (mReceiveLength == ReceiveBuffer.Length)
            {
                Dispose();
            }
        }
    }
}
