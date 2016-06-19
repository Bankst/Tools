using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Runtime.InteropServices;
using Microsoft.Win32.SafeHandles;
using System.IO;
using System.Security.Cryptography;

namespace FiestaHook
{
    public class Scanner
    {

        [DllImport("kernel32.dll", SetLastError = true)]
        private static extern bool ReadProcessMemory(
            IntPtr hProcess,
            IntPtr lpBaseAddress,
            byte[] lpBuffer,
            UInt32 dwSize,
            ref UInt32 lpNumberOfBytesRead
            );

        [DllImport("kernel32.dll")]
        public static extern IntPtr GetModuleHandle(string lpModuleName);

        private IntPtr mHandle;
        private int mSize;

        private byte[] mBuffer;

        public Scanner()
        {
            this.mHandle = GetModuleHandle(null);
            this.mSize = 0x380000;
        }

        public Scanner(int pSize)
        {
            this.mHandle = GetModuleHandle(null);
            this.mSize = pSize;
        }

        public Scanner(IntPtr pHandle, int pSize)
        {
            this.mHandle = pHandle;
            this.mSize = pSize;
        }

        public byte[] Buffer
        {
            get
            {
                if (mBuffer == null)
                {
                    DumpMemory();
                }
                return mBuffer;
            }
        }

        private bool DumpMemory()
        {
            try
            {
                mBuffer = new byte[mSize];
                Marshal.Copy(mHandle, mBuffer, 0x40000, mSize);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public string ComputeHash()
        {
            try
            {
                mBuffer = new byte[mSize];
                Marshal.Copy(mHandle, mBuffer, 0x40000, mSize);

                Crc32 crc32 = new Crc32();
                string hash = string.Empty;

                using (MemoryStream stream = new MemoryStream(mBuffer))
                    foreach (byte b in crc32.ComputeHash(stream)) hash += b.ToString("x2").ToLower();
                return hash;
            }
            catch
            {
                return string.Empty;
            }
        }

        public void DumpMemoryToFile(string pPath)
        {
            DumpMemory();
            File.WriteAllBytes(pPath, mBuffer);
        }

        private bool MaskCheck(int nOffset, string pattern)
        {
            for (int i = 0; i < pattern.Length / 2; i++)
            {
                string val = pattern.Substring(i * 2, 2);

                if (val == "??")
                    continue;

                int value = Convert.ToInt32(val, 16);
                if (value != mBuffer[nOffset + i])
                {
                    return false;
                }
            }
            return true;
        }

        public IntPtr FindPattern(string pattern, int nOffset)
        {
            try
            {
                pattern = pattern.Replace("-", "");
                pattern = pattern.Replace(" ", "");

                if (this.mBuffer == null || this.mBuffer.Length == 0)
                {
                    DumpMemory();
                }

                if (pattern.Length % 2 != 0)
                {
                    return (IntPtr)(-1);
                }


                for (int i = 0; i < this.mBuffer.Length - pattern.Length / 2; i++)
                {

                    if (this.MaskCheck(i, pattern))
                    {
                        return new IntPtr(mHandle.ToInt32() + (i + nOffset));
                    }
                }
                return (IntPtr)(-2);
            }
            catch
            {
                return (IntPtr)(-3);
            }
        }

        public List<IntPtr> FindPaterns(string pattern, int nOffset)
        {
            List<IntPtr> toret = new List<IntPtr>();
            try
            {
                pattern = pattern.Replace("-", "");
                pattern = pattern.Replace(" ", "");

                if (this.mBuffer == null || this.mBuffer.Length == 0)
                {
                    DumpMemory();
                }

                if (pattern.Length % 2 != 0)
                {
                    return null;
                }


                for (int i = 0; i < this.mBuffer.Length - pattern.Length / 2; i++)
                {

                    if (this.MaskCheck(i, pattern))
                    {
                        toret.Add(new IntPtr(mHandle.ToInt32() + (i + nOffset)));
                    }
                }
                return toret;
            }
            catch
            {
                return  null;
            }
        }

        public string FindPatternAsHex(string pattern, int nOffset)
        {
            return Convert.ToString(FindPattern(pattern, nOffset).ToInt32(), 16).ToUpper();
        }

        public static string CreatePatternFromHex(string hexInput)
        {
            hexInput = hexInput.Replace("-", "");
            hexInput = hexInput.Replace(" ", "");

            if (hexInput.Length % 2 != 0)
            {
                return null;
            }

            string pattern = "";

            for (int i = 0; i < hexInput.Length / 2; i++)
            {
                string valueStr = hexInput.Substring(i * 2, 2);
                int value = Convert.ToInt16(valueStr, 16);

                pattern += Convert.ToString(value, 16).PadLeft(2, '0').ToUpper() + " ";
                if (value == 0xE8 || value == 0xB8)
                {
                    pattern += "?? ?? ?? ?? ";
                    i += 4;
                }
            }
            pattern = pattern.TrimEnd(' ');

            return pattern;
        }
    }
}
