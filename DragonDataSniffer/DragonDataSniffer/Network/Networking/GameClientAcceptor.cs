using System.Net.Sockets;
using DragonDataSniffer.Manager;
using System;

namespace DragonDataSniffer.Network
{
    public sealed class GameClientAcceptor : Listener
    {
     
        public ClientType AcceptorType { get; private set; }



        public GameClientAcceptor(int port, ClientType pType)
                : base(port)
        {
            AcceptorType = pType;
            Start();
            Log.WriteLine(LogLevel.Info, "Accepting GameClients on port {0}", port);
        }
        public override void OnClientConnect(Socket socket)
        {
            GameClient pClient = new GameClient(socket,AcceptorType);
           
            if (GameClientManager.Instance.AddClient(pClient, AcceptorType))
            {
                string IP;
                if (!ServerClientManager.Instance.GetIPByType(AcceptorType, out IP))
                {
                    Log.WriteLine(LogLevel.Info, "Failed Get IP for ConnectType {0}", AcceptorType);
                    return;
                }
                pClient.sClient = new ServerClient(IP, Port, pClient);
                Log.WriteLine(LogLevel.Info, "GameClient connected from {0}", pClient.IP);
            }
            else
            {
                pClient.OnDisconnect();
            }
        }
    }
}
