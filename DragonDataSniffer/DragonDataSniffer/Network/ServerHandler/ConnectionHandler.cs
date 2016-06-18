using DragonDataSniffer.Manager;


namespace DragonDataSniffer.Network.ServerHandler
{
    public sealed class ConnectionHandler
    {
        [ServerPacketHandler(Handler6Type._Header, Handler6Type.ZoneIP)]
        public static void On_ReadZoneServerIP(ServerClient client, FiestaPacket packet)
        {
            ushort MapID, Port, unk;

            int X, Y;
            string IP;

            if (!packet.TryReadUInt16(out MapID)
                || !packet.TryReadInt32(out X)
                || !packet.TryReadInt32(out Y)
                || !packet.TryReadString(out IP, 16)
                || !packet.TryReadUInt16(out Port)
                || !packet.TryReadUInt16(out unk))
            {
                client.OnDisconnect();
                return;
            }
            ServerClientManager.Instance.AddIPByType(ClientType.Zone, IP);
            GameAcceptorManager.Instance.StopAcceptorByType(ClientType.Zone);
            GameAcceptorManager.Instance.StartAcceptor(ClientType.Zone, Port);

            using (var m = new FiestaPacket(Handler6Type._Header, Handler6Type.ZoneIP))
            {
                m.WriteUInt16(MapID);
                m.WriteInt32(X);
                m.WriteInt32(Y);
                m.WriteString(Config.Instance.TunnelIP, 16);
                m.WriteUInt16(Port);
                m.WriteUInt16(unk);
                client.cClient.SendPacket(m);

            }

        }

        [ServerPacketHandler(Handler4Type._Header, Handler4Type.GameServerIP)]
        public static void On_ReadGameServerIP(ServerClient client, FiestaPacket packet)
        {
            string GameIP;
            ushort GamePort;

            if (!packet.TryReadString(out GameIP, 16)
            || !packet.TryReadUInt16(out GamePort))
            {
                client.OnDisconnect();
                return;
            }
            ServerClientManager.Instance.AddIPByType(ClientType.Zone, GameIP);
            GameAcceptorManager.Instance.StopAcceptorByType(ClientType.Zone);
            GameAcceptorManager.Instance.StartAcceptor(ClientType.Zone, GamePort);
        
            using (var p = new FiestaPacket(Handler4Type._Header, Handler4Type.GameServerIP))
            {
                p.WriteString(Config.Instance.TunnelIP, 16);
                p.WriteUInt16(GamePort);
                client.cClient.SendPacket(p);
            }

        }

        [ServerPacketHandler(Handler3Type._Header, Handler3Type.WorldServerIP)]
        public static void On_ReadWorldServerIP(ServerClient client, FiestaPacket packet)
        {
            byte worlsstate;
            string worldIP;
            ushort worldport;
            byte[] uniq;
            if (!packet.TryReadByte(out worlsstate)
                || !packet.TryReadString(out worldIP, 16)
                || !packet.TryReadUInt16(out worldport)
                || !packet.TryReadBytes(out uniq, 64))
            {
                client.OnDisconnect();
                return;
            }
            ServerClientManager.Instance.AddIPByType(ClientType.World,worldIP);
            GameAcceptorManager.Instance.StartAcceptor(ClientType.World, worldport);
            using (var p = new FiestaPacket(Handler3Type._Header, Handler3Type.WorldServerIP))
            {
                p.WriteByte(worlsstate);
                p.WriteString(Config.Instance.TunnelIP, 16);
                p.WriteUInt16(worldport);
                p.WriteBytes(uniq);
                client.cClient.SendPacket(p);
            }

            GameAcceptorManager.Instance.StopAcceptorByType(ClientType.Login);


        }
    }
}
