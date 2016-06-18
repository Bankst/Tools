using System;
using System.Collections.Generic;
using DragonDataSniffer.Network;

namespace DragonDataSniffer.Manager
{
    [TunnelModule(InitializationStage.Clients)]
    public class ServerClientManager
    {
        private Dictionary<ClientType,string> IPAdressByType { get; set; }
        private Dictionary<ClientType,ServerClient> ClientList { get; set; }
        public static ServerClientManager Instance { get; private set; }

        public ServerClientManager()
        {
            ClientList = new Dictionary<ClientType, ServerClient>();
            IPAdressByType = new Dictionary<ClientType, string>();
            AddIPByType(ClientType.Login, Config.Instance.ConnectIP);
        }
        [InitializerMethod]
        public static bool Load()
        {
            try
            {
                Instance = new ServerClientManager();
                return true;
            }
            catch (Exception ex)
            {
                Log.WriteLine(LogLevel.Exception, "ServerClientManager exception: {0}", ex.ToString());
                return false;
            }
        }

        public bool GetClientByType(ClientType pType,out ServerClient pClient)
        {
            if (ClientList.TryGetValue(pType, out pClient))
                return true;

            return false;
        }
        public bool AddIPByType(ClientType pType, string IP)
        {
            if (IPAdressByType.ContainsKey(pType))
            {
                IPAdressByType[pType] = IP; //Update ip for next connect
                return true;
            }
            else
            {
                IPAdressByType.Add(pType, IP);
                return true;
            }
        }

        public bool GetIPByType(ClientType pType, out string IP)
        {
            return IPAdressByType.TryGetValue(pType, out IP);
        }

        public bool AddClient(ServerClient pClient, ClientType pClientType)
        {
            if (!ClientList.ContainsKey(pClientType))
            {
                ClientList.Add(pClientType, pClient);
                return true;
            }
            return false;
        }
        public bool RemovByType(ClientType pType)
        {
            return ClientList.Remove(pType);
        }

        public bool IsConnect(ClientType pType)
        {
            return ClientList.ContainsKey(pType);
        }
    }
}
