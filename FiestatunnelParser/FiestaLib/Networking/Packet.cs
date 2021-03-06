﻿using System;
using System.Linq;
using System.Text;
using System.IO;
using FiestaLib.Util;
using FiestaLib.Encryption;
using FiestaLib.Data;

namespace FiestaLib.Networking
{
    public sealed class Packet : IDisposable
    {

        private MemoryStream memoryStream;
        private BinaryReader reader;
        private BinaryWriter writer;

        public ushort OpCode { get; private set; }
        public int Length { get { return (int)this.memoryStream.Length; } }
        public int Cursor { get { return (int)this.memoryStream.Position; } }
        public int Remaining { get { return (int)(this.memoryStream.Length - this.memoryStream.Position); } }

        public Packet(ushort pOpCode)
        {
            this.memoryStream = new MemoryStream();
            this.writer = new BinaryWriter(this.memoryStream);
            this.OpCode = pOpCode;
            WriteUShort(pOpCode);
        }
        public Packet(ServerOpCode pOpCode)
        {
            this.memoryStream = new MemoryStream();
            this.writer = new BinaryWriter(this.memoryStream);
            this.OpCode = (ushort)pOpCode;
            WriteUShort((ushort)pOpCode);
        }
        public Packet()
        {
            this.memoryStream = new MemoryStream();
            this.writer = new BinaryWriter(this.memoryStream);
        }

        internal Packet(byte[] pData)
        {
            this.memoryStream = new MemoryStream(pData);
            this.reader = new BinaryReader(this.memoryStream);
            this.writer = new BinaryWriter(this.memoryStream);

            ushort opCode;
            this.TryReadUShort(out opCode);
            this.OpCode = opCode;
        }

        public void Dispose()
        {
            if (this.writer != null) this.writer.Close();
            if (this.reader != null) this.reader.Close();
            this.memoryStream = null;
            this.writer = null;
            this.reader = null;
        }

        ~Packet()
        {
            Dispose();
        }

        public void SetOffset(int offset)
        {
            if (offset > this.Length) throw new IndexOutOfRangeException("Cannot go to packet offset.");
            this.memoryStream.Seek(offset, SeekOrigin.Begin);
        }

        #region Write methods

        public void WriteHexAsBytes(string hexString)
        {
            byte[] bytes = ByteUtils.HexToBytes(hexString);
            WriteBytes(bytes);
        }

        public void SetByte(long pOffset, byte pValue)
        {
            long oldoffset = this.memoryStream.Position;
            this.memoryStream.Seek(pOffset, SeekOrigin.Begin);
            this.writer.Write(pValue);
            this.memoryStream.Seek(oldoffset, SeekOrigin.Begin);
        }

        public void Fill(int pLenght, byte pValue)
        {
            for (int i = 0; i < pLenght; ++i)
            {
                WriteByte(pValue);
            }
        }

        public void WriteDouble(double pValue)
        {
            this.writer.Write(pValue);
        }

        public void WriteBool(bool pValue)
        {
            this.writer.Write(pValue);
        }

        public void WriteByte(byte pValue)
        {
            this.writer.Write(pValue);
        }

        public void WriteSByte(sbyte pValue)
        {
            this.writer.Write(pValue);
        }

        public void WriteBytes(byte[] pBytes)
        {
            this.writer.Write(pBytes);
        }

        public void WriteUShort(ushort pValue)
        {
            this.writer.Write(pValue);
        }

        public void WriteShort(short pValue)
        {
            this.writer.Write(pValue);
        }

        public void WriteUInt(uint pValue)
        {
            this.writer.Write(pValue);
        }

        public void WriteInt(int pValue)
        {
            this.writer.Write(pValue);
        }

        public void WriteFloat(float pValue)
        {
            this.writer.Write(pValue);
        }

        public void WriteULong(ulong pValue)
        {
            this.writer.Write(pValue);
        }

        public void WriteLong(long pValue)
        {
            this.writer.Write(pValue);
        }

        public void WriteString(string pValue)
        {
            WriteBytes(Encoding.ASCII.GetBytes(pValue));
        }

        public void WriteString(string pValue, int pLen)
        {
            byte[] buffer = Encoding.ASCII.GetBytes(pValue);
            if (buffer.Length > pLen)
            {
                throw new OutOfMemoryException();
            }
            else
            {
                WriteBytes(buffer);
                for (int i = 0; i < pLen - buffer.Length; i++)
                {
                    WriteByte(0);
                }
            }
        }

        #endregion

        #region Read methods

        public bool ReadSkip(int pLength)
        {
            if (Remaining < pLength) return false;

            this.memoryStream.Seek(pLength, SeekOrigin.Current);
            return true;
        }

        public bool TryReadBool(out bool pValue)
        {
            pValue = false;
            if (Remaining < 1) return false;
            pValue = this.reader.ReadBoolean();
            return true;
        }

        public bool TryReadByte(out byte pValue)
        {
            pValue = 0;
            if (Remaining < 1) return false;
            pValue = this.reader.ReadByte();
            return true;
        }

        public bool TryReadSByte(out sbyte pValue)
        {
            pValue = 0;
            if (Remaining < 1) return false;
            pValue = this.reader.ReadSByte();
            return true;
        }

        // UInt16 is more conventional
        public bool TryReadUShort(out ushort pValue)
        {
            pValue = 0;
            if (Remaining < 2) return false;
            pValue = this.reader.ReadUInt16();
            return true;
        }

        // Int16 is more conventional
        public bool TryReadShort(out short pValue)
        {
            pValue = 0;
            if (Remaining < 2) return false;
            pValue = this.reader.ReadInt16();
            return true;
        }

        public bool TryReadFloat(out float pValue)
        {
            pValue = 0;
            if (Remaining < 2) return false;
            pValue = this.reader.ReadSingle();
            return true;
        }

        // UInt32 is better
        public bool TryReadUInt(out uint pValue)
        {
            pValue = 0;
            if (Remaining < 4) return false;
            pValue = this.reader.ReadUInt32();
            return true;
        }

        // Int32
        public bool TryReadInt(out int pValue)
        {
            pValue = 0;
            if (Remaining < 4) return false;
            pValue = this.reader.ReadInt32();
            return true;
        }

        // UInt64
        public bool TryReadULong(out ulong pValue)
        {
            pValue = 0;
            if (Remaining < 8) return false;
            pValue = this.reader.ReadUInt64();
            return true;
        }

        // UInt64
        public bool TryReadLong(out long pValue)
        {
            pValue = 0;
            if (Remaining < 8) return false;
            pValue = this.reader.ReadInt64();
            return true;
        }

        public bool TryReadString(out string pValue)
        {
            pValue = "";
            if (this.Remaining < 1) return false;
            byte len;
            this.TryReadByte(out len);
            if (this.Remaining < len) return false;
            return TryReadString(out pValue, len);
        }

        public bool TryReadString(out string pValue, int pLen)
        {
            pValue = "";
            if (Remaining < pLen) return false;

            byte[] buffer = new byte[pLen];
            ReadBytes(buffer);
            int length = 0;
            if (buffer[pLen - 1] != 0)
            {
                length = pLen;
            }
            else
            {
                while (buffer[length] != 0x00 && length < pLen)
                {
                    length++;
                }
            }
            if (length > 0)
            {
                pValue = Encoding.ASCII.GetString(buffer, 0, length);
            }

            return true;
        }

        public bool ReadBytes(byte[] pBuffer)
        {
            if (Remaining < pBuffer.Length) return false;
            this.memoryStream.Read(pBuffer, 0, pBuffer.Length);
            return true;
        }

        #endregion

        public byte[] ToArray(NetCrypto crypt = null)
        {
            byte[] buffer;
            byte[] encbuffer = memoryStream.ToArray();
            if (crypt != null)
            {
                crypt.Crypt(encbuffer);
            }
            if (encbuffer.Length <= 0xff)
            {
                buffer = new byte[encbuffer.Length + 1];
                Buffer.BlockCopy(encbuffer, 0, buffer, 1, encbuffer.Length);
                buffer[0] = (byte)encbuffer.Length;
            }
            else
            {
                buffer = new byte[encbuffer.Length + 3];
                Buffer.BlockCopy(encbuffer, 0, buffer, 3, encbuffer.Length);
                Buffer.BlockCopy(BitConverter.GetBytes((ushort)encbuffer.Length), 0, buffer, 1, 2);
            }
            return buffer;
        }

        public string Dump()
        {
            return ByteUtils.BytesToHex(this.memoryStream.ToArray(), string.Format("Packet (0x{0} - {1}): ", this.OpCode.ToString("X4"), this.Length));
        }
    }
}
