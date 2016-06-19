using System;

namespace OSBot.Network
{
    public class FiestaPacket : Packet
    {
        public FiestaPacket(byte[] Data): base(Data)
        {
        }

        protected FiestaPacket(byte Header, byte Type): base(Header, Type)
        {
        }
                
        public FiestaPacket(GameOpCode.Client.H3 OpCode): this(3, (byte)OpCode) { }
        
        /*
        public override byte[] ToArray()
        {
            byte[] buffer;
            if (Length <= 0xff)
            {
                buffer = new byte[Length + 1];
                Buffer.BlockCopy(stream.ToArray(), 0, buffer, 1, (int)Length);
                buffer[0] = (byte)Length;
            }
            else
            {
                buffer = new byte[Length + 3];
                Buffer.BlockCopy(stream.ToArray(), 0, buffer, 3, (int)Length);
                Buffer.BlockCopy(BitConverter.GetBytes((ushort)Length), 0, buffer, 1, 2);
            }
            return buffer;
        }
        */
    }
}
