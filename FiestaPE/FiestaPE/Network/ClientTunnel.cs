using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Sockets;

namespace FiestaPE
{
    class ClientTunnel
    {
        public InStream InStream { get; set; }
        public OutStream OutStream { get; set; }
        public ClientType Type { get; set; }
        private ushort port;
        public bool IsWorking { get; private set; }

        public ClientTunnel(Socket pSock, ClientType pType, ushort pPort)
        {
            this.port = pPort;
            this.Type = pType;

            InStream = new InStream(pSock, this);
            InStream.OnPacket += new FiestaPE.InStream.PacketPass(InStream_OnPacket);
            InStream.OnDisconnect += new FiestaPE.InStream.StreamPass(InStream_OnDisconnect);
            switch (pType)
            {
                case ClientType.Login:
                    OutStream = new OutStream(Program.LoginIP, pPort, this);
                    break;
                case ClientType.World:
                    OutStream = new OutStream(Program.WorldIP, pPort, this);
                    break;
                case ClientType.Zone1:
                    OutStream = new OutStream(Program.Zone1IP, pPort, this);
                    break;
                case ClientType.Zone2:
                    OutStream = new OutStream(Program.Zone2IP, pPort, this);
                    break;
                case ClientType.Zone3:
                    OutStream = new OutStream(Program.Zone3IP, pPort, this);
                    break;
                default:
                    Log.WriteLine(LogLevel.Debug, "Could not find client type for this sort of client.");
                    break;
            }
            OutStream.OnPacket += new FiestaPE.OutStream.PacketPass(OutStream_OnPacket);
            OutStream.OnDisconnect += new FiestaPE.OutStream.StreamPass(OutStream_OnDisconnect);
            OutStream.Connect();
            IsWorking = true;
        }

        void OutStream_OnDisconnect(OutStream pStream)
        {
            IsWorking = false;
         //   InStream.Disconnect();
        }

        void OutStream_OnPacket(Packet pPacket, OutStream pStream)
        {
            InStream.SendPacket(pPacket);
        }

        void InStream_OnDisconnect(InStream pStream)
        {
            IsWorking = false;
         //   OutStream.Disconnect();
        }

        void InStream_OnPacket(Packet pPacket, InStream pStream)
        {
            OutStream.SendPacket(pPacket);
        }
    }
}
