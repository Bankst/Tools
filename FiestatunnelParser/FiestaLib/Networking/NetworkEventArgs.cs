using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FiestaLib.Networking
{
    public sealed class NetworkEventArgs : EventArgs
    {
        public NetworkEventType Type { get; private set; }
        public object Obj { get; private set; }

        public NetworkEventArgs(NetworkEventType type)
        {
            this.Type = type;
        }

        public NetworkEventArgs(NetworkEventType type, object obj)
        {
            this.Type = type;
            this.Obj = obj;
        }
    }

    public enum NetworkEventType : byte
    {
        Disconnected,
        PacketReceived,
        CryptoReceived,
    }
}
