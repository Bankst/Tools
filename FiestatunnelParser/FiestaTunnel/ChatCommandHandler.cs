using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FiestaTunnel
{
    public class ChatCommandHandler
    {
        public static void HandleChatCommand(string text,LinkedClient pClient)
        {
            string[] command = text.Split(' ');
            switch (command[0].ToLower())
            {
                case "!anim":
                    byte animid = byte.Parse(command[1]);
                    pClient.Emote(animid);
                    break;
                default:
                    pClient.DropMessage("Could not parse command.");
                    break;
            }
        }
    }
}
