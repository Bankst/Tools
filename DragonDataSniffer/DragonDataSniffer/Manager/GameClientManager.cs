using System;
using System.Collections.Generic;
using DragonDataSniffer.Network;


namespace DragonDataSniffer.Manager
{
    [TunnelModule(InitializationStage.Clients)]
   public class GameClientManager
    {
        private Dictionary<ClientType, GameClient> ClientList { get; set; }
        public static GameClientManager Instance { get; private set; }

        private GameClientManager()
        {
            ClientList = new Dictionary<ClientType, GameClient>();
        }
        [InitializerMethod]
        public static bool Load()
        {
            try
            {
                Instance = new GameClientManager();
                return true;
            }
            catch (Exception ex)
            {
                Log.WriteLine(LogLevel.Exception, "GameClientManager exception: {0}", ex.ToString());
                return false;
            }
        }
        public void DropMessage(string text)
        {
            GameClient pClient;
            if (GetClientByType(ClientType.Zone, out pClient))
            {
                using (var packet = new FiestaPacket(Handler8Type._Header, Handler8Type.GMNote))
                {
                    packet.WriteByte((byte)text.Length);
                    packet.WriteString(text, text.Length);
                    pClient.SendPacket(packet);
                }
            }
        }
        public bool GetClientByType(ClientType pType, out GameClient pClient)
        {
            if (ClientList.TryGetValue(pType, out pClient))
                return true;

            return false;
        }
        public bool AddClient(GameClient pClient,ClientType pClientType)
        {
            if (!ClientList.ContainsKey(pClientType))
            {
                ClientList.Add(pClientType,pClient);
                return true;
            }
            return false;
        }

        public bool IsConnect(ClientType pType)
        {
            return ClientList.ContainsKey(pType);
        }

        public bool RemovByType(ClientType pType)
        {
            return ClientList.Remove(pType);
        }
    }
}
