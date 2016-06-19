using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MasterServer.Settings;
using MasterServer.Scs;
using MasterServer.Utility;
using MasterServer.Handlers;
using MasterServer.Manager;

namespace MasterServer
{
    class Program
    {
        static ScsServer ScsServ;

        static void Main(string[] args)
        {
            Console.Title = "MasterServer";
            ScsServ = new ScsServer();
            try
            {
                MasterSettings.Load();
                ScsServ.Start();
            }
            catch (Exception ex) { Log.Write(ex.Message, Log.MessageType.Error); Console.Read(); Environment.Exit(1); }
        }
    }
}