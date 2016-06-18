using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FiestaLib.Networking;
using FiestaLib.Data;

namespace FiestaTunnel.Handler
{
    internal class ConnectionHandler
    {
        [PacketHandler((ushort)ServerOpCode.WorldServerIP)]
        public static void HandleWorldConnection(LinkedClient pClient, Packet pPacket)
        {
            Packet packet = pPacket;

            Console.WriteLine("WorldTransfer");
            byte worldserverstatus;
            string worldserverip;
            short worldport;
            if (!packet.TryReadByte(out worldserverstatus) ||
                !packet.TryReadString(out worldserverip, 16) ||
                !packet.TryReadShort(out worldport))
            {
                Console.WriteLine("Error parsing world_ip packet.");
                return;
            }
            Program.CreateListener(worldserverip, worldport);
            packet.SetOffset(3);
            packet.WriteString(pClient.ProxyIP, 16);
            pClient.inClient.SendPacket(packet);

        }

        [PacketHandler((ushort)ServerOpCode.GameServerIP)]
        public static void HandleGameConnection(LinkedClient pClient, Packet pPacket)
        {
            Packet packet = pPacket;


            Console.WriteLine("GameTransfer.");
            string gameip;
            short gameport;
            if (!packet.TryReadString(out gameip, 16) ||
                !packet.TryReadShort(out gameport))
            {
                Console.WriteLine("Error parsing game_ip packet.");
                return;
            }
            Program.CreateListener(gameip, gameport);
            packet.SetOffset(2);
            packet.WriteString(pClient.ProxyIP, 16);
            pClient.inClient.SendPacket(packet);
            Program.map = new Map();
        }

        [PacketHandler((ushort)ServerOpCode.ZoneIP)]
        public static void HandleZoneConnection(LinkedClient pClient, Packet pPacket)
        {
            Packet packet = pPacket;


            Console.WriteLine("ZoneTransfer");
            short mapid, zoneport;
            int xmap, ymap;
            string zoneip;
            if (!packet.TryReadShort(out mapid) ||
                !packet.TryReadInt(out xmap) ||
                !packet.TryReadInt(out ymap) ||
                !packet.TryReadString(out zoneip, 16) ||
                !packet.TryReadShort(out zoneport))
            {
                Console.WriteLine("Error reading zone transfer.");
                return;
            }
            Program.CreateListener(zoneip, zoneport);
            packet.SetOffset(12);
            packet.WriteString(zoneip, 16);
            pClient.inClient.SendPacket(packet);
            Program.map = new Map(mapid);
        }

    }
}
