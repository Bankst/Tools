using System;
using System.Net;
using System.Net.Sockets;

namespace OSBot.Network
{
    public static class SocketHelper
    {
        public const int DefaultTimeout = 3000;
        public static bool Connect(string IP, ushort Port, out Socket Socket, int ConnectTimeout = DefaultTimeout)
        
        {
            Socket = null;

            IPAddress ip;
            if (!IPAddress.TryParse(IP, out ip))
                return false;
            return Connect(ip, Port, out Socket, ConnectTimeout);
        }
        public static bool Connect(IPAddress IP, ushort Port, out Socket Socket, int ConnectTimeout = DefaultTimeout)
        {
            return Connect(new IPEndPoint(IP, Port), out Socket, ConnectTimeout);
        }
        public static bool Connect(EndPoint Point, out Socket Socket, int ConnectTimeout = DefaultTimeout)
        {
            try
            {
                Socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                var async = Socket.BeginConnect(Point, null, null);
                async.AsyncWaitHandle.WaitOne(ConnectTimeout);
                return (Socket.Connected);
            }
            catch (Exception)
            {
                Socket = null;
                return false;
            }
        }
    }
}