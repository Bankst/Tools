using System;
using System.Text;
using FiestaBot.Tools;
using System.IO;

namespace FiestaBot
{
    public sealed class Packet
    {
        private const int DEFAULT_SIZE = 256;

        private byte[] mBuffer = null;
        private int mWriteCursor = 0;
        private int mReadCursor = 0;
        public ushort mOpcode = 0;

        public Packet(ushort pOpcode)
        {
            mBuffer = new byte[DEFAULT_SIZE];
            mOpcode = pOpcode;
            WriteUShort((ushort)pOpcode);
        }

        internal Packet(byte[] pData, int pStart, int pLength)
        {
            mBuffer = new byte[pLength];
            WriteBytes(pData, pStart, pLength);
            ReadUShort(out mOpcode);
        }

        internal byte[] InnerBuffer { get { return mBuffer; } }
        public int Length { get { return mWriteCursor; } }
        public int Cursor { get { return mReadCursor; } }
        public int Remaining { get { return mWriteCursor - mReadCursor; } }

        private void Prepare(int pLength)
        {
            if (mBuffer.Length - mWriteCursor >= pLength) return;
            int newSize = mBuffer.Length * 2;
            while (newSize < mWriteCursor + pLength) newSize *= 2;
            Array.Resize<byte>(ref mBuffer, newSize);
        }

        public void Rewind(int pPosition)
        {
            if (pPosition < 0) pPosition = 0;
            else if (pPosition > mWriteCursor) pPosition = mWriteCursor;
            mReadCursor = pPosition;
        }

        public void WriteSkip(int pLength)
        {
            Prepare(pLength);
            mWriteCursor += pLength;
        }
        public void WriteBool(bool pValue)
        {
            Prepare(1);
            mBuffer[mWriteCursor++] = (byte)(pValue ? 1 : 0);
        }
        public void WriteByte(byte pValue)
        {
            Prepare(1);
            mBuffer[mWriteCursor++] = pValue;
        }
        public void WriteSByte(sbyte pValue)
        {
            Prepare(1);
            mBuffer[mWriteCursor++] = (byte)pValue;
        }
        public void WriteBytes(byte[] pBytes) { WriteBytes(pBytes, 0, pBytes.Length); }
        public void WriteBytes(byte[] pBytes, int pStart, int pLength)
        {
            Prepare(pLength);
            Buffer.BlockCopy(pBytes, pStart, mBuffer, mWriteCursor, pLength);
            mWriteCursor += pLength;
        }
        public void WriteUShort(ushort pValue)
        {
            Prepare(2);
            mBuffer[mWriteCursor++] = (byte)(pValue & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 8) & 0xFF);
        }
        public void WriteShort(short pValue)
        {
            Prepare(2);
            mBuffer[mWriteCursor++] = (byte)(pValue & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 8) & 0xFF);
        }
        public void WriteUInt(uint pValue)
        {
            Prepare(4);
            mBuffer[mWriteCursor++] = (byte)(pValue & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 8) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 16) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 24) & 0xFF);
        }
        public void WriteInt(int pValue)
        {
            Prepare(4);
            mBuffer[mWriteCursor++] = (byte)(pValue & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 8) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 16) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 24) & 0xFF);
        }
        public void WriteFloat(float pValue)
        {
            byte[] buffer = BitConverter.GetBytes(pValue);
            if (!BitConverter.IsLittleEndian) Array.Reverse(buffer);
            WriteBytes(buffer);
        }
        public void WriteULong(ulong pValue)
        {
            Prepare(8);
            mBuffer[mWriteCursor++] = (byte)(pValue & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 8) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 16) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 24) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 32) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 40) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 48) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 56) & 0xFF);
        }
        public void WriteLong(long pValue)
        {
            Prepare(8);
            mBuffer[mWriteCursor++] = (byte)(pValue & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 8) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 16) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 24) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 32) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 40) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 48) & 0xFF);
            mBuffer[mWriteCursor++] = (byte)((pValue >> 56) & 0xFF);
        }
        public void WriteString(string pValue)
        {
            WriteUShort((ushort)pValue.Length);
            WriteBytes(Encoding.ASCII.GetBytes(pValue));
        }

        public void WriteString(string pValue, int pLen)
        {
            byte[] buffer = Encoding.ASCII.GetBytes(pValue);
            Array.Resize(ref buffer, pLen);
            if (buffer[buffer.Length - 1] != 0x00) buffer[buffer.Length - 1] = 0x00;
            WriteBytes(buffer);
        }

        public void WritePaddedString(string pValue, int pLength)
        {
            byte[] buffer = Encoding.ASCII.GetBytes(pValue);
            Array.Resize(ref buffer, pLength);
            if (buffer[buffer.Length - 1] != 0x00) buffer[buffer.Length - 1] = 0x00;
            WriteBytes(buffer);
        }
    
        public bool ReadSkip(int pLength)
        {
            if (mReadCursor + pLength > mWriteCursor) return false;
            mReadCursor += pLength;
            return true;
        }

        public bool ReadBool()
        {
            return mBuffer[mReadCursor++] != 0;
        }

        public bool ReadBool(out bool pValue)
        {
            pValue = false;
            if (mReadCursor + 1 > mWriteCursor) return false;
            pValue = mBuffer[mReadCursor++] != 0;
            return true;
        }

        public bool ReadByte(out byte pValue)
        {
            pValue = 0;
            if (mReadCursor + 1 > mWriteCursor) return false;
            pValue = mBuffer[mReadCursor++];
            return true;
        }

        public byte ReadByte()
        {
            return mBuffer[mReadCursor++];
        }

        public bool ReadSByte(out sbyte pValue)
        {
            pValue = 0;
            if (mReadCursor + 1 > mWriteCursor) return false;
            pValue = (sbyte)mBuffer[mReadCursor++];
            return true;
        }

        public bool ReadBytes(byte[] pBytes) { return ReadBytes(pBytes, 0, pBytes.Length); }
        public bool ReadBytes(byte[] pBytes, int pStart, int pLength)
        {
            if (mReadCursor + pLength > mWriteCursor + 1) return false;
            Buffer.BlockCopy(mBuffer, mReadCursor, pBytes, pStart, pLength);
            mReadCursor += pLength;
            return true;
        }

        public byte[] ReadBytes(int pLength)
        {
            if (mReadCursor + pLength > mWriteCursor) return null;
            byte[] buff = new byte[pLength];
            Buffer.BlockCopy(mBuffer, mReadCursor, buff, 0, pLength);
            mReadCursor += pLength;
            return buff;
        }

        public bool ReadUShort(out ushort pValue)
        {
            pValue = 0;
            if (mReadCursor + 2 > mWriteCursor) return false;
            pValue = mBuffer[mReadCursor++];
            pValue |= (ushort)(mBuffer[mReadCursor++] << 8);
            return true;
        }

        public ushort ReadUShort()
        {
            ushort val;
            ReadUShort(out val);
            return val;
        }

        public bool ReadShort(out short pValue)
        {
            pValue = 0;
            if (mReadCursor + 2 > mWriteCursor) return false;
            pValue = mBuffer[mReadCursor++];
            pValue |= (short)(mBuffer[mReadCursor++] << 8);
            return true;
        }

        public short ReadShort()
        {
            short val;
            ReadShort(out val);
            return val;
        }

        public bool ReadFloat(out float pValue)
        {
            pValue = 0;
            byte[] buffer = new byte[4];
            if (!ReadBytes(buffer)) return false;
            if (!BitConverter.IsLittleEndian) Array.Reverse(buffer);
            pValue = BitConverter.ToSingle(buffer, 0);
            return true;
        }

        public bool ReadUInt(out uint pValue)
        {
            pValue = 0;
            if (mReadCursor + 4 > mWriteCursor) return false;
            pValue = mBuffer[mReadCursor++];
            pValue |= (uint)(mBuffer[mReadCursor++] << 8);
            pValue |= (uint)(mBuffer[mReadCursor++] << 16);
            pValue |= (uint)(mBuffer[mReadCursor++] << 24);
            return true;
        }

        public uint ReadUInt()
        {
            uint val;
            ReadUInt(out val);
            return val;
        }

        public bool ReadInt(out int pValue)
        {
            pValue = 0;
            if (mReadCursor + 4 > mWriteCursor) return false;
            pValue = mBuffer[mReadCursor++];
            pValue |= (mBuffer[mReadCursor++] << 8);
            pValue |= (mBuffer[mReadCursor++] << 16);
            pValue |= (mBuffer[mReadCursor++] << 24);
            return true;
        }

        public int ReadInt()
        {
            int val;
            ReadInt(out val);
            return val;
        }

        public bool ReadULong(out ulong pValue)
        {
            pValue = 0;
            if (mReadCursor + 8 > mWriteCursor) return false;
            pValue = mBuffer[mReadCursor++];
            pValue |= ((ulong)mBuffer[mReadCursor++] << 8);
            pValue |= ((ulong)mBuffer[mReadCursor++] << 16);
            pValue |= ((ulong)mBuffer[mReadCursor++] << 24);
            pValue |= ((ulong)mBuffer[mReadCursor++] << 32);
            pValue |= ((ulong)mBuffer[mReadCursor++] << 40);
            pValue |= ((ulong)mBuffer[mReadCursor++] << 48);
            pValue |= ((ulong)mBuffer[mReadCursor++] << 56);
            return true;
        }

        public ulong ReadULong()
        {
            ulong val;
            ReadULong(out val);
            return val;
        }

        public bool ReadString(out string pValue)
        {
            ushort length;
            pValue = "";
            if (!ReadUShort(out length)) return false;
            if (mReadCursor + length > mWriteCursor) return false;
            pValue = Encoding.ASCII.GetString(mBuffer, mReadCursor, length);
            mReadCursor += length;
            return true;
        }

        public bool ReadString(out string pValue, int pLen)
        {
            pValue = "";
            if (mReadCursor + pLen > mWriteCursor) return false;
            int length = 0;
            while (mBuffer[mReadCursor + length] != 0x00 && length < pLen) ++length;
            if (length > 0) pValue = Encoding.ASCII.GetString(mBuffer, mReadCursor, length);
            mReadCursor += pLen;
            return true;
        }

        public string ReadString()
        {
            string val;
            ReadString(out val);
            return val;
        }

        public string ReadString(int pLength)
        {
            string val;
            ReadPaddedString(out val, pLength);
            return val;
        }

        public bool ReadPaddedString(out string pValue, int pLength)
        {
            pValue = "";
            if (mReadCursor + pLength > mWriteCursor) return false;
            int length = 0;
            while (mBuffer[mReadCursor + length] != 0x00 && length < pLength) ++length;
            if (length > 0) pValue = Encoding.ASCII.GetString(mBuffer, mReadCursor, length);
            mReadCursor += pLength;
            return true;
        }

        public void WriteHexString(string pString)
        {
            WriteBytes(HexEncoding.GetBytes(pString));
        }

        public byte[] Dump()
        {
            if (mWriteCursor == 0) return null;
            byte[] toRet;
            if (this.Length <= 0xff)
            {
                toRet = new byte[mWriteCursor + 1];
                Buffer.BlockCopy(mBuffer, 0, toRet, 1, this.Length);
                toRet[0] = (byte)this.Length;
            }
            else
            {
                toRet = new byte[this.Length + 3];
                Buffer.BlockCopy(mBuffer, 0, toRet, 3, this.Length);
                toRet[1] = (byte)this.Length;
                toRet[2] = (byte)(this.Length >> 8);
            }
            return toRet;
        }
    }

    class PacketMerger
    {
        private MemoryStream mStream;
        private BinaryWriter mWriter;
        public byte PacketCount {get; set;}
        public PacketMerger()
        {
            mStream = new MemoryStream();
            mWriter = new BinaryWriter(mStream);
            PacketCount = 0;
        }

        public void Append(byte[] pData)
        {
            mWriter.Write(pData);
            PacketCount++;
        }

        public byte[] Dump(bool pDispose)
        {
            byte[] toRet = new byte[mStream.Length];
            mStream.Seek(0, SeekOrigin.Begin);
            mStream.Read(toRet, 0, (int)mStream.Length);
            if (pDispose)
                mStream.Dispose();
            return toRet;
        }
    }
}
