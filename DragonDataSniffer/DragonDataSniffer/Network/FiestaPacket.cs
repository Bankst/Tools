using System;
using System.IO;
using System.Linq;
using System.Text;
using DragonDataSniffer.Utils;


namespace DragonDataSniffer.Network
{
    public class FiestaPacket : IDisposable
    {
        public FiestaPacket()
        {
            memStream = new MemoryStream();
            binReader = new BinaryReader(memStream);
            binWriter = new BinaryWriter(memStream);
        }
        public FiestaPacket(byte pHeader, byte pType) : this()
        {
            Header = pHeader;
            Type = pType;
            ushort opcode = (ushort)((pHeader << 10) + (pType & 1023));
            OpCode = opcode;
            WriteUInt16(opcode);
        }
        public FiestaPacket(byte[] pData) : this()
        {
            memStream.Write(pData, 0, pData.Length);
            memStream.Seek(0, SeekOrigin.Begin);

            UInt16 opcode;
            if (!TryReadUInt16(out opcode))
            {
                throw new InvalidDataException();
            }
            byte header = (byte)(opcode >> 10);
            byte type = (byte)(opcode & 1023);

            OpCode = opcode;
            Header = header;
            Type = type;
        }

        public byte Header { get; private set; }
        public byte Type { get; private set; }
        public ushort OpCode { get; private set; }

        public int Length
        {
            get { return (int)memStream.Length; }
        }
        public int Cursor
        {
            get { return (int)memStream.Position; }
        }
        public int Remaining
        {
            get { return Length - Cursor; }
        }

        public void Padding(Int32 pCount)
        {
            binWriter.Write(Enumerable.Repeat((byte)0x00, pCount).ToArray());
        }

        // isn't this the same as WriteString(pValue, pCount)?
        public void FillPadding(String pValue, Int32 pCount)
        {
            Int32 padding = pCount - pValue.Length;
            foreach (char c in pValue)
            {
                binWriter.Write((byte)c);
            }
            Padding(padding);
        }

        #region Write-Methods

        public void WriteByte(byte pData)
        {
            binWriter.Write(pData);
        }
        public void WriteBytes(byte[] pData)
        {
            binWriter.Write(pData);
        }
        public void WriteSByte(sbyte pData)
        {
            binWriter.Write(pData);
        }
        public void WriteBool(Boolean pData)
        {
            binWriter.Write(Convert.ToByte(pData));
        }
        public void WriteInt16(Int16 pData)
        {
            binWriter.Write(pData);
        }
        public void WriteUInt16(UInt16 pData)
        {
            binWriter.Write(pData);
        }
        public void WriteInt32(Int32 pData)
        {
            binWriter.Write(pData);
        }
        public void WriteUInt32(UInt32 pData)
        {
            binWriter.Write(pData);
        }
        public void WriteInt64(Int64 pData)
        {
            binWriter.Write(pData);
        }
        public void WriteUInt64(UInt64 pData)
        {
            binWriter.Write(pData);
        }
        public void WriteString(String pValue)
        {
            binWriter.Write(Encoding.ASCII.GetBytes(pValue));
        }
        public void WriteString(String pValue, Int32 pLength)
        {
            // Initialize an array of length pLength, filled with 0x00-Values.
            byte[] buffer = Enumerable.Repeat((byte)0, pLength).ToArray();
            byte[] encoded = Encoding.ASCII.GetBytes(pValue);
            int min = Math.Min(encoded.Length, pLength);
            for (int i = 0; i < min; i++)
            {
                buffer[i] = encoded[i];
            }
            WriteBytes(buffer);
        }
        public void WriteStringLen(String pValue, bool pNullTerminator = false)
        {
            if (pNullTerminator)
            {
                pValue += char.MinValue;
            }
            if (pValue.Length > 0xFF)
            {
                throw new ArgumentOutOfRangeException("pValue");
            }
            WriteByte((byte)pValue.Length);
            WriteBytes(Encoding.ASCII.GetBytes(pValue));
        }

        #endregion

        #region Read-Methods

        public bool ReadSkip(Int32 pLength)
        {
            if (Remaining < pLength)
            {
                return false;
            }
            memStream.Seek(pLength, SeekOrigin.Current);
            return true;
        }
        public bool TryReadBoolean(out Boolean pValue)
        {
            pValue = default(Boolean);
            if (Remaining < sizeof(Boolean))
            {
                return false;
            }
            pValue = binReader.ReadBoolean();
            return true;
        }
        public bool TryReadByte(out Byte pValue)
        {
            pValue = default(Byte);
            if (Remaining < sizeof(Byte))
            {
                return false;
            }
            pValue = binReader.ReadByte();
            return true;
        }
        public bool TryReadSByte(out SByte pValue)
        {
            pValue = default(SByte);
            if (Remaining < sizeof(SByte))
            {
                return false;
            }
            pValue = binReader.ReadSByte();
            return true;
        }
        public bool TryReadBytes(out byte[] pValue, Int32 pLength)
        {
            pValue = default(byte[]);
            if (Remaining < pLength)
            {
                return false;
            }
            pValue = binReader.ReadBytes(pLength);
            return true;
        }
        public bool TryReadString(out String pValue)
        {
            pValue = default(String);
            byte len;
            if (!TryReadByte(out len))
            {
                return false;
            }
            return TryReadString(out pValue, len);
        }
        public bool TryReadString(out String pValue, Int32 pLength)
        {
            pValue = default(String);
            if (Remaining < pLength)
            {
                return false;
            }
            byte[] buffer = binReader.ReadBytes(pLength);
            pValue = Encoding.ASCII.GetString(buffer);
            return true;
        }
        public bool TryReadInt16(out Int16 pValue)
        {
            pValue = default(Int16);
            if (Remaining < sizeof(Int16))
            {
                return false;
            }
            pValue = binReader.ReadInt16();
            return true;
        }
        public bool TryReadUInt16(out UInt16 pValue)
        {
            pValue = default(UInt16);
            if (Remaining < sizeof(UInt16))
            {
                return false;
            }
            pValue = binReader.ReadUInt16();
            return true;
        }
        public bool TryReadInt32(out Int32 pValue)
        {
            pValue = default(Int32);
            if (Remaining < sizeof(Int32))
            {
                return false;
            }
            pValue = binReader.ReadInt32();
            return true;
        }
        public bool TryReadUInt32(out UInt32 pValue)
        {
            pValue = default(UInt32);
            if (Remaining < sizeof(UInt32))
            {
                return false;
            }
            pValue = binReader.ReadUInt32();
            return true;
        }
        public bool TryReadInt64(out Int64 pValue)
        {
            pValue = default(Int64);
            if (Remaining < sizeof(Int64))
            {
                return false;
            }
            pValue = binReader.ReadInt64();
            return true;
        }
        public bool TryReadUInt64(out UInt64 pValue)
        {
            pValue = default(UInt64);
            if (Remaining < sizeof(UInt64))
            {
                return false;
            }
            pValue = binReader.ReadUInt64();
            return true;
        }

        #endregion

        public void Dispose()
        {
            Dispose(true);
        }
        protected virtual void Dispose(bool pDisposing)
        {
            if (pDisposing)
            {
                if (binWriter != null)
                {
                    binWriter.Close();
                }
                if (binReader != null)
                {
                    binReader.Close();
                }
                if (memStream != null)
                {
                    memStream.Close();
                }
                memStream = null;
                binReader = null;
                binWriter = null;
            }
        }

        public byte[] ToArray()
        {
            byte[] buffer;
            byte[] encBuffer = memStream.ToArray();
            if (encBuffer.Length <= byte.MaxValue)
            {
                buffer = new byte[encBuffer.Length + 1];
                Buffer.BlockCopy(encBuffer, 0, buffer, 1, encBuffer.Length);
                buffer[0] = (byte)encBuffer.Length;
            }
            else
            {
                buffer = new byte[encBuffer.Length + 3];
                Buffer.BlockCopy(encBuffer, 0, buffer, 3, encBuffer.Length);
                Buffer.BlockCopy(BitConverter.GetBytes((ushort)encBuffer.Length), 0, buffer, 1, 2);
            }
            return buffer;
        }
        public override string ToString()
        {
            byte[] buf = new byte[this.Length - 2];
            Buffer.BlockCopy(memStream.ToArray(), 2, buf, 0, buf.Length);
            var builder = new StringBuilder().Append(Header).Append("|").Append(Type)
                .Append(" Opcode: 0x").AppendFormat("{0:X4}", OpCode).Append(" Length: ")
                .Append(Length).Append(" Data: ").Append(ByteUtils.BytesToHex(buf));
            return builder.ToString();
        }

        public void Crypt(ref UInt16 pKeyPos)
        {
            byte[] buffer = memStream.ToArray();
            FiestaCryptoProvider.Crypt(ref buffer, ref pKeyPos);
            memStream.Close();
            binWriter.Close();
            binReader.Close();

            memStream = new MemoryStream(buffer);
            binWriter = new BinaryWriter(memStream);
            binReader = new BinaryReader(memStream);
        }

        private MemoryStream memStream;
        private BinaryReader binReader;
        private BinaryWriter binWriter;
    }
}
