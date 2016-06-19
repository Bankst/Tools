using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using System.Diagnostics;

namespace FiestaPE
{
    static class Program
    {
        public static string Token;
        public static string FiestaPath;
        public static string LoginIP { get; private set; }
        public static string WorldIP { get; private set; }
        public static string Zone1IP { get; private set; }
        public static string Zone2IP { get; private set; }
        public static string Zone3IP { get; private set; }
        public static bool IsRunning { get; set; }
        public static GameListener Login { get; set; }
        public static GameListener World { get; set; }
        public static GameListener Zone1 { get; set; }
        public static GameListener Zone2 { get; set; }
        public static GameListener Zone3 { get; set; }

        
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            IsRunning = true;
            FiestaPath = "FiestaR.bin";
            LaunchSockets();
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new frmMain());
        }

        private static void LaunchSockets()
        {
            Login = new GameListener(9010, ClientType.Login);
            World = new GameListener(9110, ClientType.World);
            Zone1 = new GameListener(9120, ClientType.Zone1);
            Zone2 = new GameListener(9121, ClientType.Zone2);
            Zone3 = new GameListener(9122, ClientType.Zone3);
        }

        public static void LaunchOfficial()
        {
            string[] param = Environment.GetCommandLineArgs();
            if (param.Length < 5)
            {
                MessageBox.Show("Invalid launch. This program has to be launched by Outspark Launcher!");
                Environment.Exit(0);
                return;
            }
            //IP: offsets 4, 10, Token: 2
            LoginIP = param[4];
            Log.WriteLine(LogLevel.Info, "Forwarding IP {0}", LoginIP);
            param[4] = "127.0.0.1";
            param[10] = "127.0.0.1";
            Token = param[2];
            string newparam = "";
            for (int i = 1; i < param.Length; ++i)
            {
                newparam += param[i] + " ";
            }
            ProcessStartInfo info = new ProcessStartInfo(FiestaPath, newparam);
            info.Verb = "runas";
            info.UseShellExecute = false;
            Process process = new Process();
            process.StartInfo = info;
            process.Start();
        }
    }
}
