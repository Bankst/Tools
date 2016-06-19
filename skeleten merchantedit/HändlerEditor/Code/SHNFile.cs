using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Data;

namespace HändlerEditor.Code
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

        public void CreateDefaultLayout()
        {
            CryptHeader = new byte[32];
            SetCryptHeader("3B 02 00 00 32 30 30 35 2D 30 38 2D 32 36 20 BF C0 C8 C4 20 32 3A 33 00 6A 7F 00 00 01 00 00 00");
            Header = 0;
            CreateColumn("Empty Column", byte.MaxValue, 24, "");
            Path = "New File.shn";
        }

        public void SetCryptHeader(string hexString)
        {
            string[] tempArray = hexString.Split(' ');
            if (tempArray.Length != 32) throw new Exception("Incorrect header lenght!");
            for (int i = 0; i < tempArray.Length; ++i)
               CryptHeader[i] =  byte.Parse(tempArray[i], System.Globalization.NumberStyles.HexNumber);
        }

        public string GetCryptString()
        {
            string toret = "";
            for (int i = 0; i < CryptHeader.Length; ++i)
            {
                if (i != CryptHeader.Length - 1)
                    toret += this.CryptHeader[i].ToString("X2") + " ";
                else
                    toret += this.CryptHeader[i].ToString("X2");
            }
            return toret;
        }

        public SHNFile(string path)
        {
            try
            {
                columns.Clear();
                this.Path = path;
                BinaryReaderEx r = new BinaryReaderEx(File.OpenRead(path));
                if (path.EndsWith(".shn"))
                {
                    this.CryptHeader = r.ReadBytes(0x20);
                    //parse it to string
                  
                    data = r.ReadBytes(r.ReadInt32() - 0x24);
                }
                else
                {
                    data = r.ReadBytes((int)r.Length);
                }
                r.Close();
                this.Decrypt(data, 0, data.Length);
                r = new BinaryReaderEx(new MemoryStream(data));
                this.Header = r.ReadUInt32();
                if (!((this.Header == 0xcdcdcdcd) | (this.Header == 0)))
                {
                   //bleh, why check, unk.dat is useless
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
                for (uint i = 0; i < this.ColumnCount; ++i)
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
            }
            catch (Exception e)
            {
                Stream X = new FileStream("unk.dat", FileMode.OpenOrCreate);
                BinaryWriter lol = new BinaryWriter(X);
                lol.Write(data, 0, data.Length);
                lol.Close();
                throw new Exception("Unknown File Type -- dec to unk.dat Reason: " + e.Message);
            }
        }

        public void Dispose()
        {
            table = null;
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

        public bool Save(string file)
        {
                MemoryStream output = new MemoryStream();
                BinaryWriter w = new BinaryWriter(output);
                try
                {
                w.Write(this.Header);
                w.Write(this.table.Rows.Count); //rowcount
                w.Write(GetDefaultRecLen());
                w.Write(this.table.Columns.Count);
                for (int i = 0; i < this.table.Columns.Count; ++i)
                {
                    SHNColumn colz = GetColByName(this.table.Columns[displayToReal[i]].ColumnName); //converts the display to the row order
                    if (colz.name.Contains("UnkCol"))
                    {
                        w.Write(new byte[0x30]); //empty name
                    }
                    else
                    {
                        this.WriteString(w, colz.name, 0x30);
                    }
                    w.Write(colz.Type);
                    w.Write(colz.Lenght);
                }
                this.WriteRows(w);
                byte[] sourceArray = output.GetBuffer();
                long length = output.Length;
                byte[] destinationArray = new byte[length];
                Array.Copy(sourceArray, destinationArray, length);
                this.Decrypt(destinationArray, 0, destinationArray.Length);
                w.Close();
                w = new BinaryWriter(File.Create(file));
                w.Write(this.CryptHeader);
                w.Write((int)(destinationArray.Length + 0x24));
                w.Write(destinationArray);
                w.Close();
                Path = file;
                return true;
            }
            catch(Exception ex)
            {
                w.Close();
                return false;
            }
        }

        public void DeleteColumn(string name)
        {
            columns.Remove( GetColByName(name));
            table.Columns.Remove(GetDataColByName(name));
        }

        public void CreateColumn(string name, int len, uint type, string defaultval)
        {
            SHNColumn newCol = new SHNColumn();
            newCol.name = name;
            newCol.Lenght = len;
            newCol.Type = type;
            columns.Add(newCol);

            DataColumn column = new DataColumn();
            column.ColumnName = name;
            column.DefaultValue = defaultval;
            column.DataType = GetType(newCol);
            table.Columns.Add(column);
        }

        public void EditColumnName(string from, string to)
        {
            DataColumn olddat = GetDataColByName(from);
            olddat.ColumnName = to;

            SHNColumn colz = GetColByName(from);
            colz.name = to;
        }

        public DataColumn GetDataColByName(string name)
        {
            for (int i = 0; i < table.Columns.Count; ++i)
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
            for (int i = 0; i < this.table.Rows.Count; ++i)
            {
                if (this.table.Rows[i][ColIndex].ToString().ToLower() == RowInput.ToLower()) return i;
            }
            return -1;
        }

        public void SetPrimaryKey(string columnName)
        {
           /* try
            {
                int colIndex = getColIndex(columnName);
                DataColumn[]
                table.PrimaryKey = table.Columns[colIndex].to;
            }
            catch { } */
        }

        private void WriteRows(BinaryWriter w)
        {
            for (int iz = 0; iz <this.table.Rows.Count; iz++)
            {
                DataRow row = this.table.Rows[iz];
                long position = w.BaseStream.Position;
                w.Write((ushort)0); //show new start

                for (int i = 0; i < this.table.Columns.Count; ++i)
                {
                    object obj2 = row.ItemArray[displayToReal[i]];
                    if (obj2 == null) obj2 = (string)"0";
                    SHNColumn col = GetColByName(this.table.Columns[displayToReal[i]].ColumnName);
                    switch (col.Type)
                    {
                        case 1:
                            if (obj2 is string)
                            {
                                obj2 = byte.Parse((string)obj2);
                            }
                            w.Write((byte)obj2);
                            break;

                        case 2:
                            if (obj2 is string)
                            {
                                obj2 = ushort.Parse((string)obj2);
                            }
                            w.Write((ushort)obj2);
                            break;

                        case 3:
                            if (obj2 is string)
                            {
                                obj2 = uint.Parse((string)obj2);
                            }
                            w.Write((uint)obj2);
                            break;

                        case 5:
                            if (obj2 is string)
                            {
                                obj2 = float.Parse((string)obj2);
                            }
                            w.Write((float)obj2);
                            break;

                        case 9:
                            this.WriteString(w, (string)obj2, col.Lenght);
                            break;

                        case 11:
                            if (obj2 is string)
                            {
                                obj2 = uint.Parse((string)obj2);
                            }
                            w.Write((uint)obj2);
                            break;

                        case 12:
                            if (obj2 is string)
                            {
                                obj2 = byte.Parse((string)obj2);
                            }
                            w.Write((byte)obj2);
                            break;

                        case 13:
                            if (obj2 is string)
                            {
                                obj2 = short.Parse((string)obj2);
                            }
                            w.Write((short)obj2);
                            break;

                        case 0x10:
                            if (obj2 is string)
                            {
                                obj2 = byte.Parse((string)obj2);
                            }
                            w.Write((byte)obj2);
                            break;

                        case 0x12:
                            if (obj2 is string)
                            {
                                obj2 = uint.Parse((string)obj2);
                            }
                            w.Write((uint)obj2);
                            break;

                        case 20:
                            if (obj2 is string)
                            {
                                obj2 = sbyte.Parse((string)obj2);
                            }
                            w.Write((sbyte)obj2);
                            break;

                        case 0x15:
                            if (obj2 is string)
                            {
                                obj2 = short.Parse((string)obj2);
                            }
                            w.Write((short)obj2);
                            break;

                        case 0x16:
                            if (obj2 is string)
                            {
                                obj2 = int.Parse((string)obj2);
                            }
                            w.Write((int)obj2);
                            break;

                        case 0x18:
                            this.WriteString(w, (string)obj2, col.Lenght);
                            break;

                        case 0x1a:
                            this.WriteString(w, (string)obj2, -1);
                            break;

                        case 0x1b:
                            if (obj2 is string)
                            {
                                obj2 = uint.Parse((string)obj2);
                            }
                            w.Write((uint)obj2);
                            break;
                    }
                }
                long num3 = w.BaseStream.Position - position;
                long offset = w.BaseStream.Position;
                w.BaseStream.Seek(position, SeekOrigin.Begin);
                w.Write((ushort)num3);
                w.BaseStream.Seek(offset, SeekOrigin.Begin);
            }
        }

        public int getColIndex(string name)
        {
            for (int i = 0; i < this.table.Columns.Count; ++i)
            {
                if (this.table.Columns[i].ColumnName == name) return i;
            }
            return -1;
        }

        private void WriteString(BinaryWriter w, string s, int length)
        {
            byte[] bytes = Encoding.ASCII.GetBytes(s);
            if (length == -1)
            {
                length = bytes.Length + 1;
            }
            byte[] destinationArray = new byte[length];
            Array.Copy(bytes, destinationArray, Math.Min(length, bytes.Length));
            w.Write(destinationArray);
        }

        private void ReadRows(BinaryReaderEx r, DataTable table)
        {
            object[] values = new object[columns.Count];
            for (uint i = 0; i < this.RecordCount; ++i)
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

                        case 0x1a:
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
            for (int i = 0; i < cols.Count; ++i)
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
            for (int i = length - 1; i >= 0; --i)
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
            for (uint i = 0; i < count; ++i)
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
            for (uint i = 0; i < count; ++i)
            {
                numArray[i] = this.ReadInt16();
            }
            return numArray;
        }

        public int[] ReadInt32Array(uint count)
        {
            int[] numArray = new int[count];
            for (uint i = 0; i < count; ++i)
            {
                numArray[i] = this.ReadInt32();
            }
            return numArray;
        }

        public sbyte[] ReadSByteArray(uint count)
        {
            sbyte[] numArray = new sbyte[count];
            for (uint i = 0; i < count; ++i)
            {
                numArray[i] = this.ReadSByte();
            }
            return numArray;
        }

        public override string ReadString()
        {
            int count = 0;
            for (byte i = this.ReadByte(); i != 0; i = this.ReadByte())
            {
                Buffer[count++] = i;
                if (count >= 0x100)
                {
                    break;
                }
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
            for (uint i = 0; i < count; ++i)
            {
                numArray[i] = this.ReadUInt16();
            }
            return numArray;
        }

        public uint[] ReadUInt32Array(uint count)
        {
            uint[] numArray = new uint[count];
            for (uint i = 0; i < count; ++i)
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
