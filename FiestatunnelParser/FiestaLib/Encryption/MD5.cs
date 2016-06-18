using System.Text;
using System.Security.Cryptography;

namespace FiestaLib.Encryption
{
    public sealed class MD5
    {
        private static MD5CryptoServiceProvider provider = new MD5CryptoServiceProvider();
        public static string MD5Hash(string pText)
        {
            byte[] data = Encoding.ASCII.GetBytes(pText);
            StringBuilder hash = new StringBuilder();
            foreach (byte b in provider.ComputeHash(data))
            {
                hash.AppendFormat("{0:x2}", b);
            }
            return hash.ToString().ToLowerInvariant();
        }
    }
}
