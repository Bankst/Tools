using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Net.Sockets;
using System.Web;

namespace OdinRestServer
{
    public partial class OdinRest : ServiceBase
    {
        private static string IP = Program.Settings["OdinServer.Socket.IP"];
        private static int Port = int.Parse(Program.Settings["OdinServer.Socket.Port"]);
        private Socket Server;
        public static oLogger L = new oLogger();

        public OdinRest()
        {
            InitializeComponent();
            this.ServiceName = "AesirGames::Odin Rest Server";
        }

        protected override void OnStart(string[] args)
        {
            base.OnStart(args);
            try
            {
                L.log("Socket", "Starting Add Listen " + IP + ":" + Port.ToString(), true);
                Server = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                Server.Bind(new IPEndPoint(IPAddress.Parse(IP), Port));
                Server.Listen(100);
            }
            catch(Exception A)
            {
                L.log("Socket", "ADD LISTEN FAIL", A);
                this.Stop();
                Environment.Exit(0);
            }

            Server.BeginAccept(new AsyncCallback(onClientConnect), Server);

        }


        private void onClientConnect(IAsyncResult ar)
        {
            RestClient c = new RestClient(Server.EndAccept(ar));
            Server.BeginAccept(new AsyncCallback(onClientConnect), Server);
        }





        protected override void OnStop()
        {
        }


        

    }
}
