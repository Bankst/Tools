using System.Net.Sockets;
using System.Net;
using System;
using FiestaAdmin.Tools;
using System.Collections.Generic;

namespace FiestaAdmin.Networking
{
    class Listener
    {
        public int Port { get; private set; }
        private Socket socket;
        List<Client> clients = new List<Client>();

        public Listener(int port)
        {
            this.Port = port;
            this.socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            this.socket.Bind(new IPEndPoint(IPAddress.Any, Port));
            this.socket.Listen(10);
            Log.WriteLine(LogLevel.Info, "Listening on port {0}", port);
            this.socket.BeginAccept(new AsyncCallback(OnConnect), null);
        }

        private void OnConnect(IAsyncResult ar)
        {
            if (!Program.IsRunning) return;
            try
            {
                Socket newSocket = this.socket.EndAccept(ar);
                Client newclient = new Client(newSocket);
                newclient.OnDisconnect += new Client.PassClient(newclient_OnDisconnect);
                newclient.OnPacket += new Client.PassPacket(newclient_OnPacket);
                Log.WriteLine(LogLevel.Info, "New connection from {0}", newclient.Host);
                lock (clients)
                {
                    clients.Add(newclient);
                }
                newclient.Begin();
            }
            catch (Exception ex)
            {
                Log.WriteLine(LogLevel.Warn, "Error finishing connection attempt. {0}", ex.Message);
            }
            finally
            {
                this.socket.BeginAccept(new AsyncCallback(OnConnect), null);
            }
        }

        void newclient_OnPacket(Client client, Packet packet)
        {
           
        }

        void newclient_OnDisconnect(Client client)
        {
            Log.WriteLine(LogLevel.Info, "{0} disconnected.", client.Host);
            lock (clients)
            {
                clients.Remove(client);
            }
        }
    }
}