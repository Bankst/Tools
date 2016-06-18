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
using FiestaLib.Util;
using FiestaLib.Objects;

namespace FiestaTunnel
{
    class Program
    {
        public static Map map;
        public static Settings settings;
        public const bool IS_DEBUG = true;

        public static string IP = "";
        public static Dictionary<int, Listener> listeners = new Dictionary<int, Listener>();
        public static bool isRunning = true;
        public static TextWriter writer;

        static void Main(string[] args)
        {
            Console.Title = "FiestaPE";
            LoadSettings("settings.xml");

            if (Reflector.GetInitializerMethods().Any(method => !method.Invoke()))
            {

                return;
            }

            if (settings.LogChat)
            {
                writer = new StreamWriter("ChatLog.txt", true);
            }

                IP = settings.LoginIP;
           
                
                CreateListener(settings.LoginIP, 9010);
            
            while (true)
                Console.ReadLine();
        }


        private static void LoadSettings(string path)
        {
            Settings setting = Settings.Load(path);
            if (setting == null)
            {
                Program.settings = new Settings();
                Program.settings.LoginIP = "46.253.147.147";
                Program.settings.ProxyIP = "127.0.0.1";
                Program.settings.LoginPort = 9010;
                Program.settings.LogChat = true;
                Program.settings.Save(path);
            }
            else
            {
                Program.settings = setting;
            }
            FiestaLib.Util.Database.DatabaseHelper.Initialize("User ID=fiesta;Password=fiesta;Host=localhost;Port=3306;Database=fiestare_game;Protocol=TCP;Compress=false;Pooling=true;Min Pool Size=0;Max Pool Size=2000;Connection Lifetime=0;", "WorkerConn");

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
