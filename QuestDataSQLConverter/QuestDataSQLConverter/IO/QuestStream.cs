using System;
using System.Text;
using System.IO;


namespace QuestDataSQLConverter.IO
{
    public class QuestStream : IDisposable
    {
        private Stream memStream;
        private BinaryReader binReader;


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

        public QuestStream(string filename)
        {
    
            binReader = new BinaryReader(File.Open(filename,FileMode.Open));
            memStream = binReader.BaseStream;
        }
        public bool ReadSkip(Int32 pLength)
        {
            if (Remaining < pLength)
            {
                return false;
            }
            memStream.Seek(pLength, SeekOrigin.Current);
            return true;
        }

      
        public bool  TryReadNulledString(out string pString)
        {
            try
            {
                byte[] data = new byte[256];
                int index = 0;
                byte b;
                while ((b = binReader.ReadByte()) != 0)
                {
                    if (data.Length == index) Array.Resize(ref data, data.Length * 2);
                    data[index++] = b;
                }
                pString = Encoding.ASCII.GetString(data, 0, index);
                return true;
            }
            catch
            {
                pString = null;
                return false;
            }
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

        public bool TryReadString(out string pValue, int pLen)
        {
            pValue = "";
            if (Remaining < pLen) return false;

            byte[] buffer = binReader.ReadBytes(pLen);

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

        public void Dispose()
        {
            Dispose(true);
        }
        protected virtual void Dispose(bool pDisposing)
        {
            if (pDisposing)
            {
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
          
            }
        }
    }
}
