using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Sockets;

namespace FiestaPE
{
    class GameListener
    {
        public ushort Port { get; private set; }
        public ClientType ClientType { get; private set; }
        private Socket socket;

        public GameListener(ushort port, ClientType clientType)
        {
            this.Port = port;
            this.ClientType = clientType;
            
            this.socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            try
            {
                this.socket.Bind(new IPEndPoint(IPAddress.Any, Port));
                this.socket.Listen(10);
                this.socket.BeginAccept(new AsyncCallback(OnConnect), null);
            }
            catch
            {
                Log.WriteLine(LogLevel.Exception, "Could not bind on port {0}", port);
            }
        }

        private void OnConnect(IAsyncResult ar)
        {
            if (!Program.IsRunning) return;
            try
            {
                Socket newConnection = this.socket.EndAccept(ar);
                ClientTunnel tunnel = new ClientTunnel(newConnection, ClientType, this.Port);
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
    }

    public enum ClientType
    {
        None = 0,
        Login,
        World,
        Zone1,
        Zone2,
        Zone3
    }
}
