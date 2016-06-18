using System.IO;
using System.Text;
namespace QuestEditor
{
    public class QuestStream
    {
        public QuestStream(byte[] data)
        {
            Encoding = Encoding.ASCII;
            content = new MemoryStream(data);
            cReader = new BinaryReader(content);
            cWriter = new BinaryWriter(content);
        }

        public QuestStream()
        {
            Encoding = Encoding.ASCII;
            Clear();
        }

        public void Fill(int length)
        {
            for (int i = 0; i < length; i++)
                cWriter.Write((byte)00);
        }

        public void Write(RewardMethod data)
        {
            cWriter.Write((byte)data);
        }

        public void Write(RewardType data)
        {
            cWriter.Write((byte)data);
        }

        public void Write(string data)
        {
            cWriter.Write(Encoding.GetBytes(data));
        }

        public void Write(ulong data)
        {
            cWriter.Write(data);
        }

        public void Write(uint data)
        {
            cWriter.Write(data);
        }

        public void Write(ushort data)
        {
            cWriter.Write(data);
        }

        public void Write(short data)
        {
            cWriter.Write(data);
        }

        public void Write(byte[] data)
        {
            cWriter.Write(data);
        }

        public void Write(byte data)
        {
            cWriter.Write(data);
        }

        public byte[] ReadBytes(int len)
        {
            return cReader.ReadBytes(len);
        }

        public byte ReadByte()
        {
            return cReader.ReadByte();
        }

        public ushort ReadUInt16()
        {
            return cReader.ReadUInt16();
        }

        public short ReadInt16()
        {
            return cReader.ReadInt16();
        }

        public uint ReadUInt32()
        {
            return cReader.ReadUInt32();
        }

        public ulong ReadUInt64()
        {
            return cReader.ReadUInt64();
        }

        public byte[] ToArray()
        {
            return content.ToArray();
        }

        public override string ToString()
        {
            return Encoding.GetString(ToArray());
        }

        public void SetWriterPosition(long pos)
        {
            cWriter.BaseStream.Position = pos;
        }

        public long GetWriterPosition()
        {
            return cWriter.BaseStream.Position;
        }

        public void SetReaderPosition(long pos)
        {
            cReader.BaseStream.Position = pos;
        }

        public long GetReaderPosition()
        {
            return cReader.BaseStream.Position;
        }

        public void Clear()
        {
            content = new MemoryStream();
            cReader = new BinaryReader(content);
            cWriter = new BinaryWriter(content);
        }

        public void Close()
        {
            cReader.Close();
            cWriter.Close();
            content.Close();
        }

        public long Length { get { return content.Length; } }

        public Encoding Encoding;
        private BinaryReader cReader;
        private BinaryWriter cWriter;
        private MemoryStream content;
    }
}
