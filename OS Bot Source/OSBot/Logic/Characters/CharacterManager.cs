using System;
using OSBot.Network;

namespace OSBot.Logic.Characters
{
    public static class CharacterManager
    {
        [PacketHandlerMethod(GameOpCode.Server.H3.CharacterList)]
        public static void On_WorldClient_CharacterList(FiestaClient Client, FiestaPacket Packet)
        {
            Console.WriteLine("Received character list :D");
        }
    }
}