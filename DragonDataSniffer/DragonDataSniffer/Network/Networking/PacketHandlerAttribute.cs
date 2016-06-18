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

        public ServerPacketHandlerAttribute(byte header, byte type)
        {
            Header = header;
            Type = type;
        }

    }

    [AttributeUsage(AttributeTargets.Method)]
    public sealed class ClientPacketHandlerAttribute : Attribute
    {
        public byte Header { get; private set; }
        public byte Type { get; private set; }

        public ClientPacketHandlerAttribute(byte header, byte type)
        {
            Header = header;
            Type = type;
        }
      //  public ClientPacketHandlerAttribute(Handler2Type type) : this(2, (byte)type) { }
     //   public ClientPacketHandlerAttribute(Handler3Type type) : this(3, (byte)type) { }
    }


}
