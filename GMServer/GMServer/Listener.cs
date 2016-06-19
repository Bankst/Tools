using System;
using System.Net.Sockets;
using System.Net;
using System.Text;
using System.Collections.Generic;
using MapleLib.PacketLib;

namespace GMServer
{
    /// <summary>
    /// A Nework Socket Acceptor (Listener)
    /// </summary>
    public class Listener
    {
        /// <summary>
        /// The listener socket
        /// </summary>
        private readonly Socket _listener;

        /// <summary>
        /// Method called when a client is connected
        /// </summary>
        public delegate void ClientConnectedHandler(Session session);

        /// <summary>
        /// Client connected event
        /// </summary>
        public event ClientConnectedHandler OnClientConnected;
        /// <summary>
        /// A List contains all the sessions connected to the listener.
        /// </summary>
        public List<Session> Sessions { get; set; }
        public bool Running { get { return _listener.IsBound; } }
        /// <summary>
        /// Creates a new instance of Acceptor
        /// </summary>
        public Listener()
        {
            Sessions = new List<Session>();
            _listener = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
        }

        /// <summary>
        /// Starts listening and accepting connections
        /// </summary>
        /// <param name="port">Port to listen to</param>
        public void Listen(int port)
        {
            _listener.Bind(new IPEndPoint(IPAddress.Any, port));
            _listener.Listen(15);
            _listener.BeginAccept(new AsyncCallback(OnClientConnect), null);
        }

        /// <summary>
        /// Client connected handler
        /// </summary>
        /// <param name="iarl">The IAsyncResult</param>
        private void OnClientConnect(IAsyncResult async)
        {
                Socket socket = _listener.EndAccept(async);
                Session session = new Session(socket, SessionType.SERVER_TO_CLIENT);
                if (OnClientConnected != null)
                    OnClientConnected(session);

                session.WaitForData();

                _listener.BeginAccept(new AsyncCallback(OnClientConnect), null);
        }

        /// <summary>
        /// Stops listening.
        /// </summary>
        public void Close()
        {
            _listener.Close();
        }
    }
}
