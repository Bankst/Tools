using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer.Network.ServerHandler
{
    public sealed class Handler2
    {
        [ServerPacketHandler(Handler2Type._Header,Handler2Type.SetXorKeyPosition)]
        public static void On_ReadXorPos(ServerClient client, FiestaPacket packet)
        {
            short XorPos;
            if (!packet.TryReadInt16(out XorPos))
            {
                client.OnDisconnect();
            }
      
            client.cClient.Crypto = new FiestaCryptoProvider(XorPos);
            client.Crypto = new FiestaCryptoProvider(XorPos);
            client.cClient.SendPacket(packet);
            client.cClient.Start();

        }
    }
}
