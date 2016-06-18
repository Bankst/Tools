using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Forms;
using WeifenLuo.WinFormsUI.Docking;

namespace QuestDataAnalyser
{
	public class QuestStream
	{
		private byte[] mBuffer = null;
		private int mCursor = 0;
		

		public QuestStream(byte[] pBuffer)
		{
            mBuffer = pBuffer;
			
		}

		public byte[] InnerBuffer { get { return mBuffer; } }
		public int Cursor { get { return mCursor; } }
		public int Length { get { return mBuffer.Length; } }
		public int Remaining { get { return mBuffer.Length - mCursor; } }

		public void Rewind() { mCursor = 0; }


		public bool ReadByte(out byte pValue)
		{
			pValue = 0;
			if (mCursor + 1 > mBuffer.Length) return false;
			pValue = mBuffer[mCursor++];
			return true;
		}
		public bool ReadSByte(out sbyte pValue)
		{
			pValue = 0;
			if (mCursor + 1 > mBuffer.Length) return false;
			pValue = (sbyte)mBuffer[mCursor++];
			return true;
		}
		public bool ReadUShort(out ushort pValue)
		{
			pValue = 0;
			if (mCursor + 2 > mBuffer.Length) return false;
			pValue = (ushort)(mBuffer[mCursor++] |
							  mBuffer[mCursor++] << 8);
			return true;
		}
		public bool ReadShort(out short pValue)
		{
			pValue = 0;
			if (mCursor + 2 > mBuffer.Length) return false;
			pValue = (short)(mBuffer[mCursor++] |
							 mBuffer[mCursor++] << 8);
			return true;
		}
		public bool ReadUInt(out uint pValue)
		{
			pValue = 0;
			if (mCursor + 4 > mBuffer.Length) return false;
			pValue = (uint)(mBuffer[mCursor++] |
							mBuffer[mCursor++] << 8 |
							mBuffer[mCursor++] << 16 |
							mBuffer[mCursor++] << 24);
			return true;
		}
		public bool ReadInt(out int pValue)
		{
			pValue = 0;
			if (mCursor + 4 > mBuffer.Length) return false;
			pValue = (int)(mBuffer[mCursor++] |
						   mBuffer[mCursor++] << 8 |
						   mBuffer[mCursor++] << 16 |
						   mBuffer[mCursor++] << 24);
			return true;
		}
		public bool ReadFloat(out float pValue)
		{
			pValue = 0;
			if (mCursor + 4 > mBuffer.Length) return false;
			pValue = BitConverter.ToSingle(mBuffer, mCursor);
			mCursor += 4;
			return true;
		}
		public bool ReadULong(out ulong pValue)
		{
			pValue = 0;
			if (mCursor + 8 > mBuffer.Length) return false;
			pValue = (ulong)(mBuffer[mCursor++] |
							 mBuffer[mCursor++] << 8 |
							 mBuffer[mCursor++] << 16 |
							 mBuffer[mCursor++] << 24 |
							 mBuffer[mCursor++] << 32 |
							 mBuffer[mCursor++] << 40 |
							 mBuffer[mCursor++] << 48 |
							 mBuffer[mCursor++] << 56);
			return true;
		}
		public bool ReadLong(out long pValue)
		{
			pValue = 0;
			if (mCursor + 8 > mBuffer.Length) return false;
			pValue = (long)(mBuffer[mCursor++] |
							mBuffer[mCursor++] << 8 |
							mBuffer[mCursor++] << 16 |
							mBuffer[mCursor++] << 24 |
							mBuffer[mCursor++] << 32 |
							mBuffer[mCursor++] << 40 |
							mBuffer[mCursor++] << 48 |
							mBuffer[mCursor++] << 56);
			return true;
		}
		public bool ReadDouble(out double pValue)
		{
			pValue = 0;
			if (mCursor + 8 > mBuffer.Length) return false;
			pValue = BitConverter.ToDouble(mBuffer, mCursor);
			mCursor += 8;
			return true;
		}
		public bool ReadBytes(byte[] pBytes) { return ReadBytes(pBytes, 0, pBytes.Length); }
		public bool ReadBytes(byte[] pBytes, int pStart, int pLength)
		{
			if (mCursor + pLength > mBuffer.Length) return false;
			Buffer.BlockCopy(mBuffer, mCursor, pBytes, pStart, pLength);
			mCursor += pLength;
			return true;
		}
        /*	pValue = 0;
			if (mCursor + 1 > mBuffer.Length) return false;
			pValue = mBuffer[mCursor++];
			return true;*/
        public bool ReadNulledString(out string pValue,out int pindex)
        {
            try
            {
                byte[] data = new byte[256];
                pindex = 0;
                byte b;
                while ((ReadByte(out b)) && b != 0)
                {
                    if (data.Length == pindex) Array.Resize(ref data, data.Length * 2);
                    data[pindex++] = b;
                }
                pValue = Encoding.ASCII.GetString(data, 0, pindex);
                
                return true;
            }
            catch
            {
                pindex = 0;
                pValue = "";
                return false;
            }
        }
        public void DropMessage(string msg)
        {
            MessageBox.Show(msg);
        }
		public bool ReadPaddedString(out string pValue, int pLength)
		{
			pValue = "";
			if (mCursor + pLength > mBuffer.Length) return false;
			int length = 0;
			while (length < pLength && mBuffer[mCursor + length] != 0x00) ++length;
			if (length > 0) pValue = Encoding.ASCII.GetString(mBuffer, mCursor, length);
			mCursor += pLength;
			return true;
		}
		
	}
}
