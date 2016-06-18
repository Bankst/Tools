using System.Net.Sockets;
using System;
using DragonDataSniffer.Manager;
using System.Collections.Concurrent;
using DragonDataSniffer.ClientHandler;
using System.Reflection;

namespace DragonDataSniffer.Network
{
    public class GameClient : ClientBase
    {

        public ServerClient sClient { get; set; }
        public string ConnectIP { get; set; }

        public GameClient() : base()
        {

        }
        public GameClient(Socket pSock, ClientType pClientType) : base(pSock, pClientType)
        {

            Disconnected += new EventHandler<EventArgs>(Client_OnDisconnect);
            PacketReceived += new EventHandler<PacketReceivedEventArgs>(Client_OnPacket);

        }
        public override void Start()
        {

            base.Start();
        }

        void Client_OnDisconnect(object sender, EventArgs e)
        {
            Log.WriteLine(LogLevel.Info, "GameClient {0} Disconnected.", base.IP);

            GameClientManager.Instance.RemovByType(pType);
        }

        void Client_OnPacket(object sender, PacketReceivedEventArgs e)
        {

            MethodInfo method = ClientHandlerStore.GetHandler(e.Packet.Header, e.Packet.Type);
            if (method != null)
            {
                Action action = ClientHandlerStore.GetCallback(method, this, e.Packet);
                Worker.Instance.AddCallback(action);
            }
            else
            {
                //Log.WriteLine(LogLevel.Debug, "Unhandled packet: {0}", e.Packet);
                sClient.SendPacket(e.Packet);
            }
        }

    }
}
