using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Data;
using System.Windows.Forms;

namespace FiestaBot.Tools
{

    public class SHNColumn
    {
        public string name;
        public uint Type;
        public int Lenght;
    }

    public class SHNFile
    {
        public byte[] CryptHeader;
        public uint Header;
        public string Path;
        public DataTable table = new DataTable();
        public Dictionary<int, int> displayToReal = new Dictionary<int, int>();

        public List<SHNColumn> columns = new List<SHNColumn>();

        uint RecordCount;
        uint DefaultRecordLength;
        uint ColumnCount;
        string[] ColumnNames; 
        uint[] ColumnTypes;
        int[] ColumnLengths;
        public byte[] data;
        public bool isTextData = false;

        public SHNFile()
        {

        }

        public void LoadMe(string path)
        {
                BinaryReaderEx r = new BinaryReaderEx(File.OpenRead(path));
                if (path.EndsWith(".shn"))
                {
                    this.CryptHeader = r.ReadBytes(0x20);
                    data = r.ReadBytes(r.ReadInt32() - 0x24);
                }
                else
                {
                    data = r.ReadBytes((int)r.Length);
                }
                r.Close();
                this.Decrypt(data, 0, data.Length);
        }

        public SHNFile(string path)
        {
            try
            {
                columns.Clear();
                this.Path = path;
                if (System.IO.Path.GetFileNameWithoutExtension(path).ToLower().Contains("textdata")) isTextData = true;
                BinaryReaderEx r = new BinaryReaderEx(File.OpenRead(path));
                if (path.EndsWith(".shn"))
                {
                    this.CryptHeader = r.ReadBytes(0x20);
                    data = r.ReadBytes(r.ReadInt32() - 0x24);
                }
                else
                    data = r.ReadBytes((int)r.Length);
                r.Close();
                this.Decrypt(data, 0, data.Length);
                r = new BinaryReaderEx(new MemoryStream(data));
                this.Header = r.ReadUInt32();

                if (!((this.Header == 0xcdcdcdcd) | (this.Header == 0)))
                {
                   //bleh, why check, unk.dat is useless, outspark uses other enc
                } 
                //Parse columns
                this.RecordCount = r.ReadUInt32();
                this.DefaultRecordLength = r.ReadUInt32();
                this.ColumnCount = r.ReadUInt32();
                this.ColumnNames = new string[this.ColumnCount];
                this.ColumnTypes = new uint[this.ColumnCount];
                this.ColumnLengths = new int[this.ColumnCount];

                int num2 = 2;
                int unkCols = 0;
                for (uint i = 0; i < this.ColumnCount; i++)
                {
                    string str = r.ReadString(0x30);
                   // if (str.Length < 2) MessageBox.Show(str.Length.ToString());
                    uint num4 = r.ReadUInt32();
                    int num5 = r.ReadInt32();

                    SHNColumn col = new SHNColumn();
                    if (str.Length == 0)
                    {
                        str = "UnkCol" + unkCols.ToString();
                        unkCols++;
                    }
                    col.name = str;
                    col.Type = num4;
                    col.Lenght = num5;
                    columns.Add(col);
                    this.ColumnNames[i] = str;
                    this.ColumnTypes[i] = num4;
                    this.ColumnLengths[i] = num5;
                    num2 += num5;
                }
                if (num2 != this.DefaultRecordLength)
                {
                    throw new Exception("Wrong record lenght!");
                }
                //generate columns
                this.GenerateColumns(table, columns);
                //add data into rows
                this.ReadRows(r, table);
                r.Close();
            }
            catch (Exception e)
            {
                throw new Exception("Unknown File Type -- dec to unk.dat Reason: " + e.Message);
            }
        }

        public void Dispose()
        {
            table.Dispose();
            CryptHeader = null;
        }

        public uint GetDefaultRecLen()
        {
            uint start = 2;
            foreach (DataColumn colz in table.Columns)
            {
                SHNColumn col = GetColByName(colz.ColumnName);
                start += (uint)col.Lenght;
            }
            return start;
        }

        public DataColumn GetDataColByName(string name)
        {
            for (int i = 0; i < table.Columns.Count; i++)
            {
                if (table.Columns[i].ColumnName == name) return table.Columns[i];
            }
            return null;
        }

        public SHNColumn GetColByName(string name)
        {
            foreach (SHNColumn col in columns)
            {
                if (col.name.ToLower() == name.ToLower()) return col;
            }
            return null;
        }

        public int GetRowByIndex(int ColIndex, string RowInput)
        {
            for (int i = 0; i < this.table.Rows.Count; i++)
            {
                if (this.table.Rows[i][ColIndex].ToString().ToLower() == RowInput.ToLower()) return i;
            }
            return -1;
        }

        public int getColIndex(string name)
        {
            for (int i = 0; i < this.table.Columns.Count; i++)
            {
                if (this.table.Columns[i].ColumnName == name) return i;
            }
            return -1;
        }

        private void ReadRows(BinaryReaderEx r, DataTable table)
        {
            object[] values = new object[columns.Count];
            for (uint i = 0; i < this.RecordCount; i++)
            {
                r.ReadUInt16();
                for (int j = 0; j < columns.Count; j++)
                {
                    switch (this.columns[j].Type)
                    {
                        case 1:
                            values[j] = r.ReadByte();
                            break;

                        case 2:
                            values[j] = r.ReadUInt16();
                            break;

                        case 3:
                            values[j] = r.ReadUInt32();
                            break;

                        case 5:
                            values[j] = r.ReadSingle();
                            break;

                        case 9:
                            values[j] = r.ReadString(this.ColumnLengths[j]);
                            break;

                        case 11:
                            values[j] = r.ReadUInt32();
                            break;

                        case 12:
                            values[j] = r.ReadByte();
                            break;

                        case 13:
                            values[j] = r.ReadInt16();
                            break;

                        case 0x10:
                            values[j] = r.ReadByte();
                            break;

                        case 0x12:
                            values[j] = r.ReadUInt32();
                            break;

                        case 20:
                            values[j] = r.ReadSByte();
                            break;

                        case 0x15:
                            values[j] = r.ReadInt16();
                            break;

                        case 0x16:
                            values[j] = r.ReadInt32();
                            break;

                        case 0x18:
                            values[j] = r.ReadString(this.ColumnLengths[j]);
                            break;

                        case 0x1a: //unk lenght
                            values[j] = r.ReadString();
                            break;

                        case 0x1b:
                            values[j] = r.ReadUInt32();
                            break;
                    }
                }
                table.Rows.Add(values);
            }
        }

        private void GenerateColumns(DataTable table, List<SHNColumn> cols)
        {
            for (int i = 0; i < cols.Count; i++)
            {
                DataColumn column = new DataColumn();
                column.ColumnName = cols[i].name;
                column.DataType = GetType(cols[i]);
                table.Columns.Add(column);
            }
        }

        public Type GetType(SHNColumn col)
        {
            switch (col.Type)
            {
                default:
                    return typeof(object);
                case 1:
                case 12:
                    return typeof(byte);   
                case 2:
                    return typeof(UInt16);
                case 3:
                case 11:
                    return typeof(UInt32); 
                case 5:
                    return typeof(Single);
                case 0x15:   
                case 13:
                    return typeof(Int16); 
                case 0x10:
                    return typeof(byte);   
                case 0x12:
                case 0x1b:
                    return typeof(UInt32);   
                case 20:
                    return typeof(SByte);
                case 0x16:
                    return typeof(Int32); 
                case 0x18:
                case 0x1a:
                case 9:
                    return typeof(string);
                    
            }
        }

        private void Decrypt(byte[] data, int index, int length)
        {
            if (((index < 0) | (length < 1)) | ((index + length) > data.Length))
            {
                throw new IndexOutOfRangeException();
            }
            byte num = (byte)length;
            for (int i = length - 1; i >= 0; i--)
            {
                data[i] = (byte)(data[i] ^ num);
                byte num3 = (byte)i;
                num3 = (byte)(num3 & 15);
                num3 = (byte)(num3 + 0x55);
                num3 = (byte)(num3 ^ ((byte)(((byte)i) * 11)));
                num3 = (byte)(num3 ^ num);
                num3 = (byte)(num3 ^ 170);
                num = num3;
            }
        }
    }

    internal class BinaryReaderEx : BinaryReader
    {
        // Fields
        private static byte[] Buffer = new byte[0x100];
        private const int BufferLength = 0x100;

        // Methods
        public BinaryReaderEx(Stream imput)
            : base(imput)
        {
        }

        public BinaryReaderEx(Stream imput, Encoding encoding)
            : base(imput, encoding)
        {
        }

        private string _ReadString(uint bytes)
        {
            string str;
            if (bytes > 0x100)
            {
                str = this.ReadString((uint)(bytes - 0x100));
            }
            else
            {
                str = string.Empty;
            }
            this.Read(Buffer, 0, (int)bytes);
            return (str + Encoding.UTF7.GetString(Buffer, 0, (int)bytes));
        }

        public byte[] ReadByteArray(uint count)
        {
            byte[] buffer = new byte[count];
            for (uint i = 0; i < count; i++)
            {
                buffer[i] = this.ReadByte();
            }
            return buffer;
        }

        public int ReadInt(int bytes)
        {
            switch (bytes)
            {
                case 1:
                    return this.ReadSByte();

                case 2:
                    return this.ReadInt16();

                case 4:
                    return this.ReadInt32();
            }
            throw new ArgumentException();
        }

        public short[] ReadInt16Array(uint count)
        {
            short[] numArray = new short[count];
            for (uint i = 0; i < count; i++)
            {
                numArray[i] = this.ReadInt16();
            }
            return numArray;
        }

        public int[] ReadInt32Array(uint count)
        {
            int[] numArray = new int[count];
            for (uint i = 0; i < count; i++)
            {
                numArray[i] = this.ReadInt32();
            }
            return numArray;
        }

        public sbyte[] ReadSByteArray(uint count)
        {
            sbyte[] numArray = new sbyte[count];
            for (uint i = 0; i < count; i++)
            {
                numArray[i] = this.ReadSByte();
            }
            return numArray;
        }

        public override string ReadString()
        {
            int count = 0;
            for (byte i = this.ReadByte(); i != 0; i = this.ReadByte()) //read untill there's a 00
            {
                Buffer[count++] = i;
                if (count >= 0x100)
                    break;
            }
            string str = Encoding.UTF7.GetString(Buffer, 0, count);
            if (count == 0x100)
            {
                str = str + this.ReadString();
            }
            return str;
        }

        public string ReadString(int bytes)
        {
            if (bytes > 0)
            {
                return this.ReadString((uint)bytes);
            }
            return string.Empty;
        }

        public string ReadString(uint bytes)
        {
            return this._ReadString(bytes).TrimEnd(new char[1]);
        }

        public uint ReadUInt(int bytes)
        {
            switch (bytes)
            {
                case 1:
                    return this.ReadByte();

                case 2:
                    return this.ReadUInt16();

                case 4:
                    return this.ReadUInt32();
            }
            throw new ArgumentException();
        }

        public ushort[] ReadUInt16Array(uint count)
        {
            ushort[] numArray = new ushort[count];
            for (uint i = 0; i < count; i++)
            {
                numArray[i] = this.ReadUInt16();
            }
            return numArray;
        }

        public uint[] ReadUInt32Array(uint count)
        {
            uint[] numArray = new uint[count];
            for (uint i = 0; i < count; i++)
            {
                numArray[i] = this.ReadUInt32();
            }
            return numArray;
        }

        public long Seek(long offset, SeekOrigin origin)
        {
            return this.BaseStream.Seek(offset, origin);
        }

        public long Skip(long offset)
        {
            return this.Seek(offset, SeekOrigin.Current);
        }

        // Properties
        public long Length
        {
            get
            {
                return this.BaseStream.Length;
            }
        }

        public long Position
        {
            get
            {
                return this.BaseStream.Position;
            }
        }
    }
}
