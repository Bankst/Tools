using System;
using System.Collections.Generic;
using FiestaBot;

namespace FiestaBot.Packets
{
    public class LoginPackets
    {
        public static Packet LoginData(string pUsername, string pPassword)
        {
            Packet pPacket = new Packet(0xC20);
            pPacket.WritePaddedString(pUsername, 32);
            pPacket.WriteShort(0);
            pPacket.WritePaddedString(pPassword, 32);
            return pPacket;
        }

        public static Packet FileHash()
        {
            Packet FileHash = new Packet(0xC04);
            FileHash.WriteHexString("1D 33 33 42 35 34 33 42 30 43 41 36 45 37 43 34 31 45 35 44 31 44 30 36 35 31 33 30 37 00");
         return FileHash;
        }
    }
}
