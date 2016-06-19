using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Sockets;
using FiestaLib.Networking;
using System.Diagnostics;
using System.Threading;
using System.Net;
using System.IO;
using FiestaLib.Encryption;

namespace FiestaTunnel
{
    class Program
    {
        public static Settings settings;
        public const bool IS_DEBUG = false;
        private const string sitelogin = "http://rest.outspark.net/user/v1/login?realm=fiesta&user=%username%&password=%passhash%&version=500";
        private const string launchparams = "-t %token% -i %ip% -u http://store.outspark.com/game/fiesta -osk_token %token% -osk_server %ip% -osk_store http://store.outspark.com/game/fiesta";
        
        public static string IP = "";
        public static Dictionary<int, Listener> listeners = new Dictionary<int, Listener>();
        public static bool isRunning = true;

        static void Main(string[] args)
        {
            Console.Title = "FiestaPE";
            LoadSettings("settings.xml");
            if (args.Length < 9)
            {
                Program.IP = Program.settings.LoginIP;
                StartClient(Program.settings.Username, Program.settings.Password);
            }
            else
            {
                //IP offsets: 3; 9
                string param;
                Program.IP = args[3];
                args[3] = "127.0.0.1";
                args[9] = "127.0.0.1";
                param = string.Join(" ", args);
                CreateListener(Program.IP, 9010);
                LaunchOfficial(param);
            }
            while (true)
                Console.ReadLine();
        }

        private static void LoadSettings(string path)
        {
            Settings setting = Settings.Load(path);
            if (setting == null)
            {
                Program.settings = new Settings();
                Program.settings.FiestaPath = @"D:\Fiesta\Fiesta.bin";
                Program.settings.LoginIP = "207.211.84.14";
                Program.settings.LoginPort = 9010;
                Program.settings.Username = "kerelmans@gmail.com";
                Program.settings.Password = "";
                Program.settings.Save(path);
            }
            else
            {
                Program.settings = setting;
            }
        }

        private static void StartClient(string username, string password)
        {
            if (String.IsNullOrEmpty(password))
            {
                password = GetPassword("Enter password: ", true);
            }
            string url = sitelogin.Replace("%username%", username).Replace("%passhash%", MD5.MD5Hash(password));
            GetAsyncString(url, new PassString(OnLoginFinished));
        }

        static void OnLoginFinished(string result)
        {
            if (result != null)
            {
                string token = result.Substring(10, result.Length - 12);
                Console.WriteLine("Token: {0}", token);
                string param = launchparams.Replace("%token%", token).Replace("%ip%", "127.0.0.1");
                CreateListener(Program.IP, 9010);
                LaunchOfficial(param);
            }
            else
            {
                Console.Clear();
                Console.WriteLine("Incorrect login.");
                StartClient(Program.settings.Username, "");
            }
        }

        static Process fiesta;
        private static void LaunchOfficial(string param)
        {
            ProcessStartInfo info;
            info = new ProcessStartInfo(Program.settings.FiestaPath, param);
            info.Verb = "runas";
            info.UseShellExecute = false;
            fiesta = new Process();
            fiesta.StartInfo = info;
            fiesta.Start();
           // new Thread(CheckClient).Start();
        }

        private static void CheckClient()
        {
            while (Program.isRunning)
            {
                if (fiesta.HasExited)
                {
                    foreach (var listener in listeners.Values)
                    {
                        listener.Close();
                    }
                    Console.WriteLine("Closing all Fiesta sessions.");
                    break;
                }
                Thread.Sleep(1000);
            }
        }

        public static string GetPassword(string prompt, bool hide)
        {
            StringBuilder input = new StringBuilder();
            Console.Write(prompt);
            for (ConsoleKeyInfo keyinfo = Console.ReadKey(true); keyinfo.Key != ConsoleKey.Enter; keyinfo = Console.ReadKey(true))
            {
                if (keyinfo.Key == ConsoleKey.Backspace)
                {
                    if (input.Length > 0)
                    {
                        Console.SetCursorPosition(Console.CursorLeft - 1, Console.CursorTop);
                        Console.Write(" ");
                        Console.SetCursorPosition(Console.CursorLeft - 1, Console.CursorTop);
                        input.Length -= 1;
                    }
                }
                else
                {
                    Console.Write(hide ? '*' : keyinfo.KeyChar);
                    input.Append(keyinfo.KeyChar);
                }
            }
            Console.WriteLine();
            return input.ToString();
        }

        public static void CreateListener(string IP, short port)
        {
            if (listeners.ContainsKey(port))
            {
                listeners[port].IP = IP;
            }
            else
            {
                Listener listen = new Listener(port, IP);
                listeners.Add(port, listen);
            }
        }

        private static void OnAsyncStringFinished(IAsyncResult ar)
        {
            KeyValuePair<WebRequest, PassString> pair = (KeyValuePair<WebRequest, PassString>)ar.AsyncState;
            WebRequest req = pair.Key;
            PassString function = pair.Value;
            try
            {
                WebResponse resp;
                if ((resp = req.EndGetResponse(ar)) != null)
                {
                    string result = "";
                    using (StreamReader sr = new StreamReader(resp.GetResponseStream(), System.Text.Encoding.ASCII))
                    {
                        result = sr.ReadToEnd();
                    }
                    resp.Close();
                    function.Invoke(result);
                }
                else
                    function.Invoke(null);
            }
            catch
            {
                function.Invoke(null);
            }
        }

        public delegate void PassString(string value);
        public static void GetAsyncString(string URL, PassString function)
        {
            WebRequest request = (WebRequest)
                    WebRequest.Create(URL);

            KeyValuePair<WebRequest, PassString> pair = new KeyValuePair<WebRequest, PassString>(request, function);
            request.Proxy = null;
            request.BeginGetResponse(new AsyncCallback(OnAsyncStringFinished), pair);
        }
    }
}
