using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace FiestaLib.Data
{
    public sealed class SHNWriter : BinaryWriter
    {
        public SHNWriter(Stream input)
            : base (input)
        {

        }

        public void WritePaddedString(string value, int lenght)
        {
            byte[] data = SHNFile.Encoding.GetBytes(value); //TODO: dynamic encoding
            if (data.Length > lenght)
            {
                throw new ArgumentOutOfRangeException("Padded string is too long");
            }
            this.Write(data);
            Fill(0, lenght - data.Length);
        }

        public void Fill(byte value, int count)
        {
            for (int i = 0; i < count; ++i)
            {
                base.Write(value);
            }
        }
    }
}
