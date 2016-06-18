using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DragonDataSniffer.Chat;

namespace DragonDataSniffer.Network.ClientHandler
{
    public class ChatHandler
    {
        
        [ClientPacketHandler(Handler8Type._Header, Handler8Type.ChatNormalReqest)]
        public static void On_ReadChatNormalrequest(GameClient client, FiestaPacket packet)
        {
            byte msglen;
            string msg;
            byte unk;
            if(!packet.TryReadByte(out unk) ||
                !packet.TryReadByte(out msglen) || 
                !packet.TryReadString(out msg,msglen))
            {
                client.Dispose();
                return;
            }

            if(msg.StartsWith("!"))
            {
                string[] cmd = msg.Split(' ');
                CommandHandler.Instance.ExecuteCommand(cmd);
            }
            else
            {
                client.sClient.SendPacket(packet);
            }
        }
    }
}
