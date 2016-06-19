using System;
using OSBot.Network;

namespace OSBot.Logic.Handlers
{
    public static class H3
    {
        [PacketHandlerMethod(GameOpCode.Server.H3.IncorrectVersion)]
        public static void On_FiestaClient_VersionIncorrect(FiestaClient Client, FiestaPacket Packet)
        {
            Client.Bot.WriteDebug("Version incorrect. Seems that the bot is timed out...");
        }
        
        [PacketHandlerMethod(GameOpCode.Server.H3.VersionAllowed)]
        public static void On_FiestaClient_VersionAllowed(FiestaClient Client, FiestaPacket Packet)
        {
            Client.Bot.WriteDebug("Version check finished. Sending file hash...");
            using (var packet = new FiestaPacket(GameOpCode.Client.H3.FileHash))
            {
                packet.WriteHexAsBytes("1D 33 33 42 35 34 33 42 30 43 41 36 45 37 43 34 31 45 35 44 31 44 30 36 35 31 33 30 37 00");
                Client.Send(packet);
            }
        }
        
        [PacketHandlerMethod(GameOpCode.Server.H3.FilecheckAllow)]
        public static void On_FiestaClient_FileCheckAllowed(FiestaClient Client, FiestaPacket Packet)
        {
            bool success;
            if (!Packet.ReadBool(out success))
            {
                Client.Bot.HandleReadError();
                return;
            }
            if (success)
            {
                Client.Bot.WriteDebug("File check success. Sending login token...");
                using (var packet = new FiestaPacket(GameOpCode.Client.H3.Login))
                {
                    //packet.WriteString(Client.Bot.LoginToken, 64);
                    //packet.WriteHexAsBytes("00 4F 72 69 67 69 6E 61 6C 00 00 00 00 00 00 00 00 00 00 00 00"); // crap ?
                    Client.Send(packet);
                }
            }
            else
            {
                Client.Bot.WriteDebug("File check error.");
            }
        }
        
        [PacketHandlerMethod(GameOpCode.Server.H3.Error)]
        public static void On_FiestaClient_LoginError(FiestaClient Client, FiestaPacket Packet)
        {
            ushort errorCode;
            if (!Packet.ReadUInt16(out errorCode))
            {
                Client.Bot.HandleReadError();
                return;
            }
            
            Client.Bot.WriteDebug("Error logging in. Error code: {0} ({1})", errorCode, (LoginError)errorCode);
        }
    }
}