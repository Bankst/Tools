using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FiestaTunnel;
using FiestaLib.Networking;
using FiestaLib.Objects;
using FiestaLib.Util.Database;
using FiestaLib.Data;

namespace FiestaTunnel.Handler
{
    internal sealed class MapObjectHandler
    {
        [PacketHandler((ushort)ServerOpCode.SpawnMultiObject)]
        public static void GetMultiObjects(LinkedClient pClient, Packet pPacket)
        {
            Packet packet = pPacket;

            byte pCount;
            packet.TryReadByte(out pCount);


            if (pClient.MapName == "")
            {
                pClient.inClient.SendPacket(packet);
                return;
            }

            for (int i = 0; i < pCount; i++)
            {
                NPC Npc = NPC.GetNpcFromPacket(packet);
                Npc.Map = Program.map.MapID;
                if (!pClient.isNPC(Npc.NpcId))
                    continue;


                var check = pClient.npcs.Where(o => o.Map == Program.map.MapID).Where(o => o.NpcId == Npc.NpcId).Where(o => o.x == Npc.x).Where(o => o.y == Npc.y);
                //Console.WriteLine("Total NPC Count: {0} - Result Count : {1}", pClient.npcs.Count, check.Count());
                if (check.Count() == 0)
                {
                    pClient.npcs.Add(Npc);
                    Npc.AddToDB();
                    Console.WriteLine("Added MultiObj to DB : Npc: {0} @Coordinates [{1},{2}] Rotation: {3} Map: {4}", Npc.NpcId, Npc.x, Npc.y, Npc.rot, Program.map.MapID);
                    if (Npc.isGate == 1)
                        pClient.SetGateInfo(Npc);
                }
                
            }

            pClient.inClient.SendPacket(pPacket);

        }

        [PacketHandler((ushort)ServerOpCode.SpawnSingleObject)]
        public static void GetSingleObject(LinkedClient pClient, Packet pPacket)
        {
            Packet packet = pPacket;
            if (String.IsNullOrEmpty(pClient.MapName))
            {
                pClient.inClient.SendPacket(packet);
                return;
            }

            NPC Npc = NPC.GetNpcFromPacket(packet);
            Npc.Map = Program.map.MapID;
            if (!pClient.isNPC(Npc.NpcId))
                return;
            Console.WriteLine("SingleObj is Npc ! [{0}]", Npc.NpcId);
            var check = pClient.npcs.Where(o => o.Map == Program.map.MapID).Where(o => o.NpcId == Npc.NpcId).Where(o => o.x == Npc.x).Where(o => o.y == Npc.y);
            //Console.WriteLine("Total NPC Count: {0} - Result Count : {1}", pClient.npcs.Count, check.Count());
            if (check.Count() == 0)
            {
                pClient.npcs.Add(Npc);
                Npc.AddToDB();
                Console.WriteLine("Added SingleObj to DB : Npc: {0} @Coordinates [{1},{2}] Rotation: {3} Map: {4}", Npc.NpcId, Npc.x, Npc.y, Npc.rot, Program.map.MapID);
                if (Npc.isGate == 1)
                  pClient.SetGateInfo(Npc);
            }

            pClient.inClient.SendPacket(pPacket);

        }

        [PacketHandler((ushort)ServerOpCode.Chardeatiledinfo)]
        public static void GetMapFromDetails(LinkedClient pClient, Packet pPacket)
        {
            Packet packet = pPacket;
            string MapName;

            if (!packet.ReadSkip(62) ||
            !packet.TryReadString(out MapName, 12))
                return;
            pClient.MapName = MapName;
            Program.map = new Map(pClient.MapNameToID(MapName));
           pClient.inClient.SendPacket(packet);
        }

        [PacketHandler((ushort)ServerOpCode.ChangeMap)]
        public static void MapChange(LinkedClient pClient, Packet pPacket)
        {
            Packet packet = pPacket;
            short MapID;

            if (!packet.TryReadShort(out MapID))
                return;
            pClient.MapName = pClient.MapIDToName(MapID);
            Program.map = new Map(MapID);
            pClient.inClient.SendPacket(packet);
        }

    }
}
