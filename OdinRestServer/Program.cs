using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Configuration;
using System.Configuration.Install;
using System.Reflection;
using System.Collections;
using System.Security.Cryptography;
using System.IO;
using System.Diagnostics;
using System.Net;
namespace OdinRestServer
{
    static class Program
    {
        public static oLogger L = new oLogger();
        public static Dictionary<string, string> Settings = new Dictionary<string, string>();
        public static DatabaseManager DBM;

        public static ServiceBase[] ServicesToRun;
        /// <summary>
        /// The main entry point for the application.
        /// </summary>

        static void Main()
        {

            L.log("Main", "Service Starting", true);
            if (System.Environment.UserInteractive)
            {
                ServiceController ctl = ServiceController.GetServices().Where(s => s.DisplayName == "_OdinRestServer").FirstOrDefault();
                if (ctl == null)
                {
                    L.log("Main", "NO SERVICE UPLOADED", true);
                    System.Diagnostics.Process process = new System.Diagnostics.Process();
                    System.Diagnostics.ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
                    startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
                    startInfo.FileName = "cmd.exe";
                    startInfo.Arguments = String.Format("/C sc create AESIRGAMES_OdinRestServer binPath= \"{0}\" DisplayName= _OdinRestServer", Assembly.GetExecutingAssembly().Location);
                    process.StartInfo = startInfo;
                    process.Start();
                    System.Windows.Forms.MessageBox.Show("<SERVICE UPLOAD ONLY OK>");
                    L.log("Main", "<SERVICE UPLOAD ONLY OK>", true);
                    Environment.Exit(0);
                }
                else { L.log("Main", "<NO START AS SERVICE>", true); Environment.Exit(0); }
            }



            AppDomain.CurrentDomain.UnhandledException += new UnhandledExceptionEventHandler(onCrash);
            oSettingsParser SP = new oSettingsParser();

            try
            {
                if ((Settings["OdinServer.TokenManager.EnforceExpireDate"] != "True") && (Settings["OdinServer.TokenManager.EnforceExpireDate"] != "False"))
                {
                    Exception e1 = new Exception("Invalid value [OdinServer.TokenManager.EnforceExpireDate][True/False]::" + Settings["OdinServer.TokenManager.EnforceExpireDate"]);
                    Program.L.log("Main", "READ SETTINGS FAIL", e1);
                    Environment.Exit(0);
                }
            }
            catch
            {
                Exception e2 = new Exception("Invalid value [OdinServer.TokenManager.EnforceExpireDate]::<SETTING NOT FOUND>");
                Program.L.log("Main", "READ SETTINGS FAIL", e2);
                Environment.Exit(0);

            }

            try
            {
                if (Settings["OdinServer.Debug"] != "1" && Settings["OdinServer.Debug"] != "0")
                {
                    Exception e3 = new Exception("Invalid value [OdinServer.Debug][1/0]::" + Settings["OdinServer.Debug"]);
                    Program.L.log("Main", "READ SETTINGS FAIL", e3);
                    Environment.Exit(0);
                }
            }
            catch
            {
                Exception e4 = new Exception("Invalid value [OdinServer.Debug]::<SETTING NOT FOUND>");
                Program.L.log("Main", "READ SETTINGS FAIL", e4);
                Environment.Exit(0);
            }


            try
            {
                if ((Settings["OdinServer.TokenManager.DeleteUsedTokens"] != "True") && (Settings["OdinServer.TokenManager.DeleteUsedTokens"] != "False"))
                {
                    Exception e1 = new Exception("Invalid value [OdinServer.TokenManager.DeleteUsedTokens][True/False]::" + Settings["OdinServer.TokenManager.DeleteUsedTokens"]);
                    Program.L.log("Main", "READ SETTINGS FAIL", e1);
                    Environment.Exit(0);
                }
            }
            catch(Exception a)
            {
                Program.L.log("Main", "READ SETTINGS FAIL", a);
                Exception e2 = new Exception("Invalid value [OdinServer.TokenManager.DeleteUsedTokens]::<SETTING NOT FOUND>");
                Program.L.log("Main", "READ SETTINGS FAIL", e2);
                Environment.Exit(0);

            }



            DBM = new DatabaseManager();
            ServicesToRun = new ServiceBase[] 
            { 
                new OdinRest() 
            };

            ServiceBase.Run(ServicesToRun);
        }

        static void onCrash(object sender, UnhandledExceptionEventArgs args)
        {
            Exception e = (Exception)args.ExceptionObject;
            L.log("Crash", "<EXTRINSIC STUDIO REST SERVER CRASH>");
            L.log("Crash", "===============================================================");
            L.log("Crash", e.Message);
            Application.Exit();
            Environment.Exit(0);
        }

        private static AssemblyInstaller GetAssemblyInstaller(string[] commandLine)
        {
            AssemblyInstaller installer = new AssemblyInstaller();
            installer.Path = Assembly.GetExecutingAssembly().Location;
            installer.CommandLine = commandLine;
            installer.UseNewContext = false;
            return installer;
        }

        public static string GenerateToken()
        {
            int Lenght = 43;
            int NonAlphaNumericChars = 10;
            string allowedChars = "abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ0123456789";
            string allowedNonAlphaNum = "!@^&*()_-[{]};:<>|";
            Random rd = new Random();
            char[] pass = new char[Lenght];
            int[] pos = new int[Lenght];
            int i = 0, j = 0, temp = 0;
            bool flag = false;
            while (i < Lenght - 1)
            {
                j = 0;
                flag = false;
                temp = rd.Next(0, Lenght);
                for (j = 0; j < Lenght; j++)
                    if (temp == pos[j])
                    {
                        flag = true;
                        j = Lenght;
                    }

                if (!flag)
                {
                    pos[i] = temp;
                    i++;
                }
            }
            for (i = 0; i < Lenght - NonAlphaNumericChars; i++)
                pass[i] = allowedChars[rd.Next(0, allowedChars.Length)];
            for (i = Lenght - NonAlphaNumericChars; i < Lenght; i++)
                pass[i] = allowedNonAlphaNum[rd.Next(0, allowedNonAlphaNum.Length)];
            char[] sorted = new char[Lenght];
            for (i = 0; i < Lenght; i++)
                sorted[i] = pass[pos[i]];
            string Pass = new String(sorted);
            return Pass + ".";
        }
    }
}
