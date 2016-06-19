using System;

namespace OSBot.Network
{
    public sealed class PacketHandlerMethod : Attribute
    {
        public byte Header { get; private set; }
        public byte Type { get; private set; }
        public ushort OpCode { get; private set; }



        private PacketHandlerMethod(byte Header, byte Type)
        {
            this.Header = Header;
            this.Type = Type;
            OpCode = (ushort)((Header << 10) + (Type & 1023));
        }
            public PacketHandlerMethod(GameOpCode.Server.H3 OpCode): this(3, (byte)OpCode) { }
    }
}