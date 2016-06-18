using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer.Network.ClientHandler
{
    public class MapEntryHandler

    { 
        [ClientPacketHandler(Handler9Type._Header, Handler9Type.SelectObject)]
        public static void On_SelectEntry(GameClient client, FiestaPacket packet)
        {
            short objectID;
            if(!packet.TryReadInt16(out objectID))
            {
                client.Dispose();
            }
            client.pCharacter.TargetID = objectID;

            client.sClient.SendPacket(packet);
        }
        [ClientPacketHandler(Handler9Type._Header, Handler9Type.DelectObject)]
        public static void On_DelectEntry(GameClient client, FiestaPacket packet)
        {
            client.pCharacter.TargetID = -1;
            client.sClient.SendPacket(packet);
        }
    }
}
