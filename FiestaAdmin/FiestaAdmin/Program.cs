using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using FiestaAdmin.Tools;
using FiestaAdmin.Networking;

namespace FiestaAdmin
{
    class Program
    {
        public static bool IsRunning = false;
        public static Listener Listener;
        static void Main(string[] args)
        {
            IsRunning = Start();
            while (IsRunning)
            {
                try
                {
                    CommandHandler.HandleCommand(Console.ReadLine());
                }
                catch (Exception ex)
                {
                    Log.WriteLine(LogLevel.Exception, "Exception: {0} || {1}", ex.Message, ex.StackTrace);
                }
            }
        }

        private static bool Start()
        {
            try
            {
                DateTime start = DateTime.Now;
                Log.WriteLine(LogLevel.Info, "Started loading.");
                //load stuff here
                Console.Title = "FiestaAdmin Server v" + Assembly.GetExecutingAssembly().GetName().Version.ToString();
                Program.Listener = new Networking.Listener(9111);
                Log.WriteLine(LogLevel.Info, "Loading done in {0}ms", Math.Round((DateTime.Now - start).TotalMilliseconds, 0));
                return true;
            }
            catch (Exception ex)
            {
                Log.WriteLine(LogLevel.Exception, "Error while starting: {0} || {1}", ex.Message, ex.StackTrace);
                Console.ReadLine();
                return false;
            }
        }
    }
}
