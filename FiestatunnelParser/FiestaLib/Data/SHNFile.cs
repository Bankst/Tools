using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Data;
using System.Threading;
using FiestaLib.Encryption;

namespace FiestaLib.Data
{
    public delegate void DOnSaveFinished(SHNFile file);
    public delegate void DOnSaveError(SHNFile file, string error);

    public class SHNFile : DataTable
    {
        public static Encoding Encoding = Encoding.UTF8;

        public string FileName { get; private set; }
        public uint Header { get; private set; }
        public uint RecordCount { get; private set; }
        public uint ColumnCount { get; private set; }
        public uint DefaultRecordLenght { get; private set; }

        public event DOnSaveError OnSaveError;
        public event DOnSaveFinished OnSaveFinished;

        private bool isSaving = false;
        private byte[] CryptHeader;

        public SHNFile(string pPath)
        {
            this.FileName = pPath;
            Load();
        }

        public SHNFile()
        {

        }

        public void Load()
        {
            if (!File.Exists(FileName))
            {
                throw new FileNotFoundException("Could not find SHN File.");
            }
            byte[] data;
            using (var file = File.Open(FileName, FileMode.Open))
            {
                BinaryReader reader = new BinaryReader(file);
                CryptHeader = reader.ReadBytes(32);
                int lenght = reader.ReadInt32() - 36; //minus int + header
                data = reader.ReadBytes(lenght);
                FileCrypto.Crypt(data, 0, lenght);
                //File.WriteAllBytes("Output.dat", data); //debug purpose
            }

            using (var stream = new MemoryStream(data))
            {
                SHNReader reader = new SHNReader(stream);
                this.Header = reader.ReadUInt32();
                this.RecordCount = reader.ReadUInt32();
                this.DefaultRecordLenght = reader.ReadUInt32();
                this.ColumnCount = reader.ReadUInt32();
                GenerateColumns(reader);
                GenerateRows(reader);
            }
            data = null;
        }

        public bool Save(string path)
        {
            if (isSaving) return false;
            new Thread(delegate()
            {
                InternalSave(path);
            }).Start();
            return true;
        }

        private void InternalSave(string path)
        {
            try
            {
                isSaving = true;
                UpdateDefaultRecordLenght();
                byte[] content;
                using (MemoryStream encrypted = new MemoryStream())
                {
                    SHNWriter writer = new SHNWriter(encrypted);
                    writer.Write(this.Header);
                    writer.Write((uint)this.Rows.Count);
                    writer.Write(this.DefaultRecordLenght);
                    writer.Write((uint)this.Columns.Count);
                    WriteColumns(writer);
                    WriteRows(writer);
                    content = new byte[encrypted.Length];
                    encrypted.Seek(0, SeekOrigin.Begin);
                    encrypted.Read(content, 0, content.Length);
                }

                FileCrypto.Crypt(content, 0, content.Length);
                using (FileStream final = File.Create(path))
                {
                    BinaryWriter writer = new BinaryWriter(final);
                    writer.Write(CryptHeader);
                    writer.Write((int)(content.Length + 36));
                    writer.Write(content);
                }

                this.FileName = path;
                if (OnSaveFinished != null)
                    OnSaveFinished.Invoke(this);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message + ex.StackTrace);
                if (OnSaveError != null)
                    OnSaveError.Invoke(this, ex.Message);
            }
            finally
            {
                isSaving = false;
            }
        }

        private void WriteRows(SHNWriter writer)
        {
            foreach (DataRow row in base.Rows)
            {
                int CurPos = (int)writer.BaseStream.Position;
                short unkLength = 0;
                writer.Write((short)0);     // Row Length
                for (int colIndex = 0; colIndex < base.Columns.Count; ++colIndex)
                {
                    SHNColumn column = (SHNColumn)base.Columns[colIndex];
                    switch (column.TypeByte)
                    {
                        case 1:
                        case 12:
                        case 16:
                            writer.Write((byte)row[colIndex]);
                            break;
                        case 2:
                            writer.Write((ushort)row[colIndex]);
                            break;
                        case 3:
                        case 11:
                        case 18:
                        case 27:
                            writer.Write((uint)row[colIndex]);
                            break;
                        case 5:
                            writer.Write((Single)row[colIndex]);
                            break;
                        case 9:
                        case 24:
                            writer.WritePaddedString((string)row[colIndex], column.Lenght);
                            break;
                        case 13:
                        case 21:
                            writer.Write((short)row[colIndex]);
                            break;
                        case 20:
                            writer.Write((sbyte)row[colIndex]);
                            break;
                        case 22:
                            writer.Write((int)row[colIndex]);
                            break;
                        case 26:
                            string tmp = (string)row[colIndex];
                            unkLength += (short)tmp.Length;
                            writer.WritePaddedString(tmp, tmp.Length + 1);
                            break;
                    }
                }
                int LastPos = (int)writer.BaseStream.Position;
                writer.Seek(CurPos, SeekOrigin.Begin);
                writer.Write((short)(DefaultRecordLenght + unkLength));     // Update Row Length
                writer.Seek(LastPos, SeekOrigin.Begin);
            }
        }

        private void WriteColumns(SHNWriter writer)
        {
            for (int i = 0; i < base.Columns.Count; ++i)
            {
                ((SHNColumn)base.Columns[i]).Write(writer);
            }
        }

        protected override void Dispose(bool disposing)
        {
            if(disposing) CryptHeader = null;
            base.Dispose(disposing);
        }

        private void UpdateDefaultRecordLenght()
        {
            uint len = 2;
            for (int i = 0; i < base.Columns.Count; ++i)
            {
                SHNColumn col = (SHNColumn)base.Columns[i];
                len += (uint)col.Lenght;
            }
            this.DefaultRecordLenght = len;
        }

        public void GenerateRows(SHNReader reader)
        {
             object[] values = new object[this.ColumnCount];
             for (uint i = 0; i < RecordCount; ++i)
             {
                 uint RowLength = reader.ReadUInt16();
                 for (int j = 0; j < this.ColumnCount; ++j)
                 {
                     switch (((SHNColumn)this.Columns[j]).TypeByte)
                     {
                         case 1:
                         case 12:
                         case 16:
                             values[j] = reader.ReadByte();
                             break;
                         case 2:
                             values[j] = reader.ReadUInt16();
                             break;
                         case 3:
                         case 11:
                         case 18:
                         case 27:
                             values[j] = reader.ReadUInt32();
                             break;
                         case 5:
                             values[j] = reader.ReadSingle();
                             break;
                         case 9:
                         case 24:
                             values[j] = reader.ReadPaddedString(((SHNColumn)this.Columns[j]).Lenght);
                             break;
                         case 13:
                         case 21:
                             values[j] = reader.ReadInt16();
                             break;
                         case 20:
                             values[j] = reader.ReadSByte();
                             break;
                         case 22:
                             values[j] = reader.ReadInt32();
                             break;
                         case 26:       // TODO: Should be read until first null byte, to support more than 1 this kind of column
                             values[j] = reader.ReadPaddedString((int)(RowLength - DefaultRecordLenght + 1));
                             break;
                         default:
                             throw new Exception("New column type found");
                     }
                 }
                 base.Rows.Add(values);
             }
        }

        public void GenerateColumns(SHNReader reader)
        {
            int unkcolumns = 0;
            int lenght = 2;
            for (int i = 0; i < ColumnCount; ++i)
            {
                SHNColumn col = new SHNColumn();
                col.Load(reader, ref unkcolumns);
                lenght += col.Lenght;
                base.Columns.Add(col);
            }
            if (lenght != DefaultRecordLenght)
            {
                throw new Exception("Default record lenght does not fit.");
            }
        }
    }
}
