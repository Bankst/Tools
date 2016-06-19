using System;
using System.IO;
using System.Text;
using System.Threading;

namespace OSBot.Network
{
    public class Packet : IDisposable
    {
        public DateTime CreateTime { get; private set; }

        public byte Type { get; private set; }
        public byte Header { get; private set; }
        public ushort OpCode { get; private set; }
        
        public long Length
        {
            get
            {
                return stream.Length;
            }
        }
        public long Position
        {
            get
            {
                return stream.Position;
            }
        }
        public long Remaining
        {
            get
            {
                return Length - Position;
            }
        }

        public bool IsDisposed
        {
            get
            {
                return IsDisposedInt > 0;
            }
        }
        private int IsDisposedInt;


        protected MemoryStream stream { get; private set; }
        protected BinaryReader reader { get; private set; }
        protected BinaryWriter writer { get; private set; }



        public Packet(byte[] Data)
            : this()
        {
            stream = new MemoryStream(Data);
            reader = new BinaryReader(stream);


            ushort OpCode;
            if (!ReadUInt16(out OpCode))
                throw new InvalidDataException("Unable to read packet header.");

            this.OpCode = OpCode;
            Header = (byte)(OpCode >> 10);
            Type = (byte)(OpCode & 1023);
        }
        protected Packet(byte Header, byte Type)
            : this()
        {
            this.Header = Header;
            this.Type = Type;
            OpCode = (ushort)((Header << 10) + (Type & 1023));

            stream = new MemoryStream();
            writer = new BinaryWriter(stream);


            WriteUInt16(OpCode);
        }
        private Packet()
        {
            CreateTime = DateTime.Now;
        }
        
        #region Read

        public bool ReadByte(out byte Value)
        {
            Value = 0;

            if (Remaining < 1)
                return false;

            Value = reader.ReadByte();
            return true;
        }
        public bool ReadSByte(out sbyte Value)
        {
            Value = 0;

            if (Remaining < 1)
                return false;

            Value = reader.ReadSByte();
            return true;
        }
        public bool ReadBytes(int Length, out byte[] Value)
        {
            Value = null;

            if (Remaining < Length)
                return false;

            Value = reader.ReadBytes(Length);
            return true;
        }
        public bool ReadSkip(int Length)
        {
            if (Remaining < Length)
                return false;

            stream.Seek(Length, SeekOrigin.Current);
            return true;
        }

        public bool ReadBool(out bool Value)
        {
            Value = false;

            if (Remaining < 1)
                return false;

            Value = reader.ReadBoolean();
            return true;
        }

        public bool ReadInt16(out short Value)
        {
            Value = 0;

            if (Remaining < 2)
                return false;

            Value = reader.ReadInt16();
            return true;
        }
        public bool ReadInt32(out int Value)
        {
            Value = 0;

            if (Remaining < 4)
                return false;

            Value = reader.ReadInt32();
            return true;
        }
        public bool ReadInt64(out long Value)
        {
            Value = 0;

            if (Remaining < 8)
                return false;

            Value = reader.ReadInt64();
            return true;
        }

        public bool ReadUInt16(out ushort Value)
        {
            Value = 0;

            if (Remaining < 2)
                return false;

            Value = reader.ReadUInt16();
            return true;
        }
        public bool ReadUInt32(out uint Value)
        {
            Value = 0;

            if (Remaining < 4)
                return false;

            Value = reader.ReadUInt32();
            return true;
        }
        public bool ReadUInt64(out ulong Value)
        {
            Value = 0;

            if (Remaining < 8)
                return false;

            Value = reader.ReadUInt64();
            return true;
        }

        public bool ReadFloat(out float Value)
        {
            Value = 0;

            if (Remaining < 4)
                return false;

            Value = reader.ReadSingle();
            return true;
        }
        public bool ReadDouble(out double Value)
        {
            Value = 0;

            if (Remaining < 8)
                return false;

            Value = reader.ReadDouble();
            return true;
        }
        public bool ReadDecimal(out decimal Value)
        {
            Value = 0;

            if (Remaining < 16)
                return false;

            Value = reader.ReadDecimal();
            return true;
        }

        public bool ReadString(out string Value)
        {
            Value = "";
            if (Remaining < 1)
                return false;
            byte len;
            ReadByte(out len);
            if (Remaining < len)
                return false;
            return ReadString(out Value, len);
        }
        public bool ReadString(out string Value, int Len)
        {
            Value = "";
            if (Remaining < Len)
                return false;

            byte[] buffer;
            ReadBytes(Len, out buffer);
            int length = 0;
            if (buffer[Len - 1] != 0)
            {
                length = Len;
            }
            else
            {
                while (buffer[length] != 0x00 && length < Len)
                {
                    length++;
                }
            }
            if (length > 0)
            {
                Value = Encoding.ASCII.GetString(buffer, 0, length);
            }

            return true;
        }

        public bool ReadDateTime(out DateTime Value)
        {
            Value = DateTime.MinValue;

            long data;
            if (Remaining < 8
            || !ReadInt64(out data))
                return false;

            Value = DateTime.FromBinary(data);

            return true;
        }

        #endregion


        #region Write

        public void WriteByte(byte Value)
        {
            writer.Write(Value);
        }
        public void WriteSByte(sbyte Value)
        {
            writer.Write(Value);
        }
        public void WriteBytes(byte[] Value)
        {
            writer.Write(Value);
        }
        public void WriteBool(bool Value)
        {
            writer.Write(Value);
        }

        public void WriteInt16(short Value)
        {
            writer.Write(Value);
        }
        public void WriteInt32(int Value)
        {
            writer.Write(Value);
        }
        public void WriteInt64(long Value)
        {
            writer.Write(Value);
        }

        public void WriteUInt16(ushort Value)
        {
            writer.Write(Value);
        }
        public void WriteUInt32(uint Value)
        {
            writer.Write(Value);
        }
        public void WriteUInt64(ulong Value)
        {
            writer.Write(Value);
        }

        public void WriteFloat(float Value)
        {
            writer.Write(Value);
        }
        public void WriteDouble(double Value)
        {
            writer.Write(Value);
        }
        public void WriteDecimal(decimal Value)
        {
            writer.Write(Value);
        }

        public void WriteString(string pValue)
        {
            WriteBytes(Encoding.UTF8.GetBytes(pValue));
        }
        public void WriteString(string pValue, int pLen)
        {
            var buffer = Encoding.UTF8.GetBytes(pValue);
            WriteBytes(buffer);
            WriteNulls(pLen - buffer.Length);
        }

        public void WriteDateTime(DateTime Value)
        {
            WriteInt64(Value.ToBinary());
        }
        public void Fill(int Len, byte Value)
        {
            for (int i = 0; i < Len; i++)
                WriteByte(Value);
        }
        public void WriteNulls(int Len)
        {
            Fill(Len, 0);
        }
        public void WriteHexAsBytes(string Hex)
        {
            WriteBytes(ByteUtils.HexToBytes(Hex));
        }
        #endregion



        public virtual byte[] ToArray()
        {
            return stream.ToArray();
        }






        public void Dispose()
        {
            if (Interlocked.CompareExchange(ref IsDisposedInt, 1, 0) == 0)
            {
                if (reader != null)
                    reader.Dispose();
                reader = null;

                if (writer != null)
                    writer.Dispose();
                writer = null;


                stream.Dispose();
                stream = null;
            }
        }
        ~Packet()
        {
            Dispose();
        }
    }
}
