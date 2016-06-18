using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FiestaLib.Util
{
    static class ByteUtils
    {
        /// <summary>
        /// Converts a hex-string to byte array.
        /// </summary>
        /// <param name="pValue">Hexadecimal string.</param>
        /// <returns>Byte array object from string.</returns>
        public static byte[] HexToBytes(string pValue)
        {
            StringBuilder builder = new StringBuilder();
            foreach (char c in pValue.Where(IsHexDigit).Select(Char.ToUpper))
            {
                builder.Append(c);
            }

            string hexString = builder.ToString();
            if (hexString.Length % 2 == 1)
            {
                throw new InvalidOperationException("There is an odd number of hexadecimal digits in this string.");
            }

            byte[] bytes = new byte[hexString.Length / 2];
            for (int i = 0, j = 0; i < bytes.Length; i++, j += 2)
            {
                string byteString = String.Concat(hexString[j], hexString[j + 1]);
                bytes[i] = HexToByte(byteString);
            }
            return bytes;
        }

        /// <summary>
        /// Creates a hex-string from byte array.
        /// </summary>
        /// <param name="bytes">Input bytes.</param>
        /// <returns>String that represents the byte-array.</returns>
        public static string BytesToHex(byte[] bytes, string header = "")
        {
            StringBuilder builder = new StringBuilder(header);
            foreach (byte c in bytes)
            {
                builder.AppendFormat("{0:X2} ", c);
            }
            return builder.ToString();
        }

        /// <summary>
        /// Checks if a character is a hexadecimal digit.
        /// </summary>
        /// <param name="c">The character to check</param>
        /// <returns>true if <paramref name="c"/>is a hexadecimal digit; otherwise, false.</returns>
        public static bool IsHexDigit(char c)
        {
            if (('0' <= c && c <= '9') || 
                ('A' <= c && c <= 'F') || 
                ('a' <= c && c <= 'f'))
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// Convert a 2-digit hexadecimal string to a byte.
        /// </summary>
        /// <param name="hex">The hexadecimal string.</param>
        /// <returns>The byte representation of the string.</returns>
        private static byte HexToByte(string hex)
        {
            if (hex == null) throw new ArgumentNullException("hex");
            if (hex.Length == 0 || 2 < hex.Length)
            {
                throw new ArgumentOutOfRangeException("hex", "The hexadecimal string must be 1 or 2 characters in length.");
            }
            byte newByte = byte.Parse(hex, System.Globalization.NumberStyles.HexNumber);
            return newByte;
        }
    }
}
