using System.Net.Sockets;
using DragonDataSniffer.Manager;
using System;

namespace DragonDataSniffer.Network
{
    public sealed class GameClientAcceptor : Listener
    {
        public static GameClientAcceptor Instance { get; private set; }
        public ClientType AcceptorType { get; private set; }



        public static bool Load(int Port, ClientType pType)
        {
            try
            {
                Instance = new GameClientAcceptor(Port, pType);
                return true;
            }
            catch (Exception ex)
            {
                Log.WriteLine(LogLevel.Exception, "GameClientAcceptor exception: {0}", ex.ToString());
                return false;
            }
        }
        public GameClientAcceptor(int port, ClientType pType)
                : base(port)
        {
            AcceptorType = pType;
            Start();
            Log.WriteLine(LogLevel.Info, "Accepting GameClients on port {0}", port);
        }
        public override void OnClientConnect(Socket socket)
        {
            GameClient pClient = new GameClient(Socket,AcceptorType);
           
            if (GameClientManager.Instance.AddClient(pClient, AcceptorType))
            {
                pClient.sClient = new ServerClient(Config.Instance.ConnectIP, Config.Instance.TunnelPort, pClient);

                Log.WriteLine(LogLevel.Debug, "Client connected from {0}", pClient.IP);
            }
            else
            {
                pClient.Dispose();
            }
        }
    }
}
