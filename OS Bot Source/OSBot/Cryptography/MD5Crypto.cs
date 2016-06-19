using System;
using System.Text;
using System.Security.Cryptography;

namespace OSBot.Cryptography
{
    public static class MD5Crypto
    {
        private static readonly MD5CryptoServiceProvider MD5 = new MD5CryptoServiceProvider();
        
        public static string GetHash(byte[] Value)
        {
            return BitConverter.ToString(MD5.ComputeHash(Value)).Replace("-", "").ToLower();
        }
        public static string GetHash(string Value, Encoding Encoding = null)
        {
            Encoding = Encoding ?? Encoding.UTF8;
            var data = Encoding.GetBytes(Value);
            return GetHash(data);
        }
    }
}