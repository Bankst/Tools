using System.Text;

namespace DragonDataSniffer.Utils {
	public static class ByteUtils {
		public static string BytesToHex(byte[] pBuffer) {
			StringBuilder builder = new StringBuilder();
			builder.AppendLine();
			builder.AppendLine("00 08 16 24 32");
			builder.AppendLine("--------------");
			int count = 0;
			foreach (byte b in pBuffer) {
				builder.AppendFormat("{0:X2} ", b);
				count ++;
				if (count == 4) {
					builder.AppendLine();
					count = 0;
				}
			}

			return builder.ToString();
		}
	}
}