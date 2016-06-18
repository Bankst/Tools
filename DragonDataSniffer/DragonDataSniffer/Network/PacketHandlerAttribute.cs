using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer.Network
{
    [AttributeUsage(AttributeTargets.Method)]
    public sealed class ServerPacketHandlerAttribute : Attribute
    {
        public byte Header { get; private set; }
        public byte Type { get; private set; }

        private ServerPacketHandlerAttribute(byte header, byte type)
        {
            Header = header;
            Type = type;
        }
        public ServerPacketHandlerAttribute(SH2Type type) : this(2, (byte)type) { }
    }

    [AttributeUsage(AttributeTargets.Method)]
    public sealed class ClientPacketHandlerAttribute : Attribute
    {
        public byte Header { get; private set; }
        public byte Type { get; private set; }

        private ClientPacketHandlerAttribute(byte header, byte type)
        {
            Header = header;
            Type = type;
        }
        public ClientPacketHandlerAttribute(CH2Type type) : this(2, (byte)type) { }
    }


}
