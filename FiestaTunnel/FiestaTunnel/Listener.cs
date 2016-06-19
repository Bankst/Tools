using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Sockets;
using FiestaLib.Networking;

namespace FiestaTunnel
{
    public class Listener
    {
        public int Port { get; private set; }
        private Socket socket;
        public string IP { get; set; }

        public Listener(int port, string ip = "127.0.0.1")
        {
            this.Port = port;
            IP = ip;
            try
            {
                this.socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                this.socket.Bind(new IPEndPoint(IPAddress.Any, port));
                this.socket.Listen(10);
                Console.WriteLine("Tunnel ready at {0} to {1}", port, IP);
            }
            catch (SocketException ex) {
                Console.WriteLine("Error starting tunnel: {0}", ex.Message);
                Console.ReadLine();
                return;
            }
            this.socket.BeginAccept(new AsyncCallback(OnConnect), null);
        }

        public void Close()
        {
            this.socket.Close();
        }

        private void OnConnect(IAsyncResult ar)
        {
            if (!Program.isRunning) return;
            try
            {
                Socket newSocket = this.socket.EndAccept(ar);
                LinkedClient client = new LinkedClient(newSocket, IP, this.Port);
                Console.WriteLine("New session started.");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error accepting connection: {0}@@{1}", ex.Message, ex.StackTrace);
            }
            finally
            {
                this.socket.BeginAccept(new AsyncCallback(OnConnect), null);
            }
        }
    }
}
