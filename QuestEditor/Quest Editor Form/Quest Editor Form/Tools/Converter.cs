using System;
namespace Quest_Editor_Form
{
    class Converter
    {
        public static bool ToBool(byte data)
        {
            if (data == 0) return false;
            else if (data == 1) return true;
            else return false;
        }

        public static byte ToByte(bool data)
        {
            if (data) return (byte)1;
            else return (byte)0;
        }

        public static ushort ToUShort(string data)
        {
            return Convert.ToUInt16(data);
        }
    }
}
