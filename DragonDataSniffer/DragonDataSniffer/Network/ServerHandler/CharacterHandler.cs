using DragonDataSniffer.Object;
using DragonDataSniffer.Manager;
using DragonDataSniffer.Data;

namespace DragonDataSniffer.Network.ServerHandler
{
    public class CharacterHandler
    {
        [ServerPacketHandler(Handler4Type._Header, Handler4Type.Chardeatiledinfo)]
        public static void CharDetailedInfo(ServerClient client, FiestaPacket pPacket)
        {
     
            string MapName;

            if (!pPacket.ReadSkip(66) ||
            !pPacket.TryReadString(out MapName, 12))
                return;

            MapInfo inf;
            if(MapDataManager.Instance.GetMapInfoByName(MapName,out inf))
            {
                Character pChar = new Character(inf.ID);

                client.pCharacter = pChar;
                client.cClient.pCharacter = pChar;
                Map pMap;
                if(MapDataManager.Instance.GetMapByID(inf.ID,out pMap))
                {
                    pMap.Invoke(pChar);
                }
            }

            client.cClient.SendPacket(pPacket);
        }
    }
}
