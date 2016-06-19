using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;

namespace FiestaAdmin.Security
{

    /// <summary>
    /// Class to manage Encryption and IV generation
    /// </summary>
    public class Crypto
    {
        private volatile byte[] _IV;
        private short _Version;
        public byte[] IV
        {
            get { return _IV; }
            set { _IV = value; }
        }

        private RijndaelManaged mAES = new RijndaelManaged();
        private ICryptoTransform mTransformer = null;

        public Crypto(byte[] IV, short version)
        {
            this._IV = IV;
            this._Version = version;

            mAES.Key = AESKey.UserKey();
            mAES.Mode = CipherMode.ECB;
            mAES.Padding = PaddingMode.PKCS7;
            mTransformer = mAES.CreateEncryptor();
        }

        public void Transform(byte[] pBuffer) //=crypt
        {
            int remaining = pBuffer.Length;
            int length = 0x5B0;
            int start = 0;
            byte[] real_IV = new byte[_IV.Length * 4];
            while (remaining > 0)
            {
                for (int index = 0; index < real_IV.Length; ++index) real_IV[index] = _IV[index % 4];

                if (remaining < length) length = remaining;
                for (int index = start; index < (start + length); ++index)
                {
                    if (((index - start) % real_IV.Length) == 0)
                    {
                        byte[] temp_IV = new byte[real_IV.Length];
                        mTransformer.TransformBlock(real_IV, 0, real_IV.Length, temp_IV, 0);
                        Buffer.BlockCopy(temp_IV, 0, real_IV, 0, real_IV.Length);
                        //real_IV = mTransformer.TransformFinalBlock(real_IV, 0, real_IV.Length);
                    }
                    pBuffer[index] ^= real_IV[(index - start) % real_IV.Length];
                }
                start += length;
                remaining -= length;
                length = 0x5B4;
            }
            ShiftIV();
        }

        public void Decrypt(byte[] pBuffer)
        {
            Transform(pBuffer); //AES + IV shift
            for (int index1 = 1; index1 <= 6; ++index1)
            {
                byte firstFeedback = 0;
                byte secondFeedback = 0;
                byte length = (byte)(pBuffer.Length & 0xFF);
                if ((index1 % 2) == 0)
                {
                    for (int index2 = 0; index2 < pBuffer.Length; ++index2)
                    {
                        byte temp = pBuffer[index2];
                        temp -= 0x48;
                        temp = (byte)(~temp);
                        temp = temp.RollLeft(length & 0xFF);
                        secondFeedback = temp;
                        temp ^= firstFeedback;
                        firstFeedback = secondFeedback;
                        temp -= length;
                        temp = temp.RollRight(3);
                        pBuffer[index2] = temp;
                        --length;
                    }
                }
                else
                {
                    for (int index2 = pBuffer.Length - 1; index2 >= 0; --index2)
                    {
                        byte temp = pBuffer[index2];
                        temp = temp.RollLeft(3);
                        temp ^= 0x13;
                        secondFeedback = temp;
                        temp ^= firstFeedback;
                        firstFeedback = secondFeedback;
                        temp -= length;
                        temp = temp.RollRight(4);
                        pBuffer[index2] = temp;
                        --length;
                    }
                }
            }
        }

        public void Encrypt(byte[] data)
        {
            int size = data.Length;
            int j;
            byte a, c;
            for (int i = 0; i < 3; ++i)
            {
                a = 0;
                for (j = size; j > 0; --j)
                {
                    c = data[size - j];
                    c = c.RollLeft(3);
                    c = (byte)(c + j);
                    c ^= a;
                    a = c;
                    c = a.RollRight(j);
                    c ^= 0xFF;
                    c += 0x48;
                    data[size - j] = c;
                }
                a = 0;
                for (j = data.Length; j > 0; --j)
                {
                    c = data[j - 1];
                    c = c.RollLeft(4);
                    c = (byte)(c + j);
                    c ^= a;
                    a = c;
                    c ^= 0x13;
                    c = c.RollRight(3);
                    data[j - 1] = c;
                }
            }
            Transform(data); //crypt
        }

        private void ShiftIV()
        {
            byte[] newIV = new byte[] { 0xF2, 0x53, 0x50, 0xC6 };
            for (int index = 0; index < _IV.Length; ++index)
            {
                byte temp1 = newIV[1];
                byte temp2 = AESKey.bShuffle[temp1];
                byte temp3 = _IV[index];
                temp2 -= temp3;
                newIV[0] += temp2;
                temp2 = newIV[2];
                temp2 ^= AESKey.bShuffle[temp3];
                temp1 -= temp2;
                newIV[1] = temp1;
                temp1 = newIV[3];
                temp2 = temp1;
                temp1 -= newIV[0];
                temp2 = AESKey.bShuffle[temp2];
                temp2 += temp3;
                temp2 ^= newIV[2];
                newIV[2] = temp2;
                temp1 += AESKey.bShuffle[temp3];
                newIV[3] = temp1;
                uint result1 = (uint)newIV[0] | ((uint)newIV[1] << 8) | ((uint)newIV[2] << 16) | ((uint)newIV[3] << 24);
                uint result2 = result1 >> 0x1D;
                result1 <<= 3;
                result2 |= result1;
                newIV[0] = (byte)(result2 & 0xFF);
                newIV[1] = (byte)((result2 >> 8) & 0xFF);
                newIV[2] = (byte)((result2 >> 16) & 0xFF);
                newIV[3] = (byte)((result2 >> 24) & 0xFF);
            }
            Buffer.BlockCopy(newIV, 0, _IV, 0, _IV.Length);
        }

        public byte[] ConstructHeader(int length)
        {
            int encodedVersion = (((_IV[2] << 8) | _IV[3]) ^ _Version);
            int encodedLength = encodedVersion ^ (((length & 0xFF) << 8) | (length >> 8));
            byte[] header = new byte[4];
            unchecked
            {
                header[0] = (byte)(encodedVersion >> 8);
                header[1] = (byte)encodedVersion;
                header[2] = (byte)(encodedLength >> 8);
                header[3] = (byte)encodedLength;
            }
            return header;
        }

        public static ushort GetPacketLength(byte[] data)
        {
            return (ushort)(((data[1] ^ data[3]) << 8) | (data[0] ^ data[2]));
        }

        public static ushort GetVersion(byte[] header, byte[] iv)
        {
            var encodedVersion = (ushort)((header[0] << 8) | header[1]);
            var xorSegment = (ushort)((iv[2] << 8) | iv[3]);

            return (ushort)(encodedVersion ^ xorSegment);
        }

        public bool ValidateHeader(byte[] header)
        {
            ushort extractedVersion = GetVersion(header, _IV);
            return extractedVersion == _Version;
        }
    }

    public static class Extensions
    {
        public static byte RollLeft(this byte pThis, int pCount)
        {
            uint overflow = ((uint)pThis) << (pCount % 8);
            return (byte)((overflow & 0xFF) | (overflow >> 8));
        }

        public static byte RollRight(this byte pThis, int pCount)
        {
            uint overflow = (((uint)pThis) << 8) >> (pCount % 8);
            return (byte)((overflow & 0xFF) | (overflow >> 8));
        }
    }
}
