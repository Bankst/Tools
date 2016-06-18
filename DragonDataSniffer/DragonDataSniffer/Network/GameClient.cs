using System.Net.Sockets;
using System;
using DragonDataSniffer.Manager;
using System.Collections.Concurrent;

namespace DragonDataSniffer.Network
{
    public class GameClient : ClientBase
    {
       
       public ServerClient sClient { get; set; }

        public GameClient() : base()
        {

        }
        public GameClient(Socket pSock, ClientType pClientType) : base(pSock,pClientType)
        {
            keyPosSet = false;
            receiveBuffer = new byte[MaxReceiveBuffer];
            sendBuffer = new ConcurrentQueue<byte[]>();
            Disconnected += new EventHandler<EventArgs>(Client_OnDisconnect);
            PacketReceived += new EventHandler<PacketReceivedEventArgs>(Client_OnPacket);
        }

    
        void Client_OnDisconnect(object sender, EventArgs e)
        {
            Log.WriteLine(LogLevel.Debug, "{0} Disconnected.", base.IP);
            GameClientManager.Instance.RemovByType(pType);
        }

        void Client_OnPacket(object sender, PacketReceivedEventArgs e)
        {
            /*
            MethodInfo method = HandlerStore.GetHandler(e.Packet.Header, e.Packet.Type);
            if (method != null)
            {
                Action action = HandlerStore.GetCallback(method, this, e.Packet);
                Worker.Instance.AddCallback(action);
            }
            else
            {
                Log.WriteLine(LogLevel.Debug, "Unhandled packet: {0}", e.Packet);
            }*/
        }

    }
}
