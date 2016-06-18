using DragonDataSniffer.Manager;
using DragonDataSniffer.Object;

namespace DragonDataSniffer.Network.ServerHandler
{
    public class MapEntryHandler
    {
        [ServerPacketHandler(Handler7Type._Header, Handler7Type.SpawnSingleObject)]
        public static void On_SpawnSingleObject(ServerClient client, FiestaPacket packet)
        {
            NPC pNPC = new NPC(packet,client.pCharacter.MapID);

            if (!NPCDataManager.Instance.IsNPCContains(pNPC.MobID))//check is npc
            {
                return;
            }
            Map pMap;
            if (MapDataManager.Instance.GetMapByID(client.pCharacter.MapID, out pMap))
            {
                pMap.Invoke(pNPC);

            }
            client.cClient.SendPacket(packet);
        }
        [ServerPacketHandler(Handler7Type._Header, Handler7Type.SpawnMultiObject)]
        public static void On_SpawnMultiObject(ServerClient client, FiestaPacket packet)
        {
            byte pCount;
            if (!packet.TryReadByte(out pCount))
            {
                client.Dispose();
                return;
            }


            for (int i = 0; i < pCount; i++)
            {

                NPC pNPC = new NPC(packet, client.pCharacter.MapID);

                if (!NPCDataManager.Instance.IsNPCContains(pNPC.MobID))//check is npc
                {
                    continue;
                }
                Map pMap;
                if (MapDataManager.Instance.GetMapByID(client.pCharacter.MapID, out pMap))
                {
                    pMap.Invoke(pNPC);
                  
                }

            }
            client.cClient.SendPacket(packet);

        }
    }
}
