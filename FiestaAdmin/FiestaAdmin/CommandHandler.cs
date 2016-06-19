using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FiestaAdmin.Data;
using FiestaAdmin.Security;
using FiestaAdmin.Tools;

namespace FiestaAdmin
{
    public static class CommandHandler
    {
        public static void HandleCommand(string line)
        {
            string[] command = line.Split(' ');
            switch (command[0].ToLower())
            {
                case "account":
                    AccountCommand(command[1]);
                    break;
                case "isadmin":
                    AdminCheckCommand(command[1]);
                    break;
                case "block":
                    BlockCommand(command[1], true);
                    break;
                case "unblock":
                    BlockCommand(command[1], false);
                    break;
                case "stop":
                case "exit":
                    Program.IsRunning = false;
                    break;
                case "debug":
                    DebugCommand();
                    break;
                default:
                 Log.WriteLine(LogLevel.Warn, "Command not recognized.");
                    break;
            }
        }

        private static void DebugCommand()
        {
            byte[] header = new byte[] { 0x02, 0x03, 0x05, 0xff };
            byte[] second = new byte[4];
            header.CopyTo(second, 0);
            Crypto enc = new Crypto(header, 10);
            Crypto dec = new Crypto(second, 10);
            byte[] data = System.Text.Encoding.ASCII.GetBytes("this has to be encrypted");
            enc.Encrypt(data);
            Console.WriteLine("Encrypted shit: {0}", System.Text.Encoding.ASCII.GetString(data));
            dec.Decrypt(data);
            Console.WriteLine(System.Text.Encoding.ASCII.GetString(data));
        }

        private static void AccountCommand(string username)
        {
            tUser account;
            if ((account = AccountManipulator.GetUser("Csharp")) != null)
            {
                Log.WriteLine(LogLevel.Info, "Username: {0}; Blocked: {1}; Admin: {2}; LastIP: {3}", username, account.bIsBlock, account.nAuthID, account.sUserIP);
            }
            else
                Log.WriteLine(LogLevel.Info ,"User not found.");
        }

        private static void BlockCommand(string username, bool value)
        {
            if (AccountManipulator.SetBlock(username, value))
            {
                Log.WriteLine(LogLevel.Info, "Username: {0}; Blocked: {1}", username, value);
            }
            else
                Log.WriteLine(LogLevel.Info, "Cannot find {0}.", username);
        }

        private static void AdminCheckCommand(string username)
        {
          Log.WriteLine(LogLevel.Info, "Username: {0}; Admin: {1}", username, AccountManipulator.IsAdmin(username));
        }
    }
}
