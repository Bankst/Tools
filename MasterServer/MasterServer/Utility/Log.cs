using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MasterServer.Utility
{
    class Log
    {
        public enum MessageType
        {
            Information,
            Warning,
            Error,
        }

        public static void Write(String Text, MessageType MType)
        {
            Console.ForegroundColor = ConsoleColor.Cyan;
            Console.Write("[" + DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss") + "] ");

            switch (MType)
            {
                case MessageType.Information:
                    Console.ForegroundColor = ConsoleColor.White;
                    break;
                case MessageType.Warning:
                    Console.ForegroundColor = ConsoleColor.Yellow;
                    break;
                case MessageType.Error:
                    Console.ForegroundColor = ConsoleColor.Red;
                    break;
            }
            Console.Write(Text + "\n");
            Console.ResetColor();
        }
    }
}
