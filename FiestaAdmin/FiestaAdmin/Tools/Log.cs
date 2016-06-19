using System;
using System.Collections.Generic;
using System.Text;
using System.IO;

namespace FiestaAdmin.Tools
{
    public static class Log
    {
        public static TextWriter mWriter;
        private static object sLock = new object();
        public static bool Debug = true;

        public static void WriteLine(LogLevel pLogLevel, string pFormat, params object[] pArgs)
        {
            if (pLogLevel == LogLevel.Debug && !Debug) return;
            string text = string.Format(pFormat, pArgs);
            if (mWriter != null)
            {
                mWriter.WriteLine("[{0} - {1}] {2}", pLogLevel.ToString(), DateTime.Now.ToLongTimeString(), text);
                mWriter.Flush();
            }
            lock (sLock)
            {
                switch (pLogLevel)
                {
                    case LogLevel.Info:
                        Console.ForegroundColor = ConsoleColor.Green;
                        Console.Write(DateTime.Now.ToShortTimeString() + " [INFO] ");
                        Console.ForegroundColor = ConsoleColor.White;
                        Console.WriteLine(text);
                        break;
                    case LogLevel.Exception:
                        Console.ForegroundColor = ConsoleColor.Yellow;
                        Console.Write(DateTime.Now.ToShortTimeString() + " [EXCEPTION] ");
                        Console.ForegroundColor = ConsoleColor.White;
                        Console.WriteLine(text);
                        break;
                    case LogLevel.Error:
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.Write(DateTime.Now.ToShortTimeString() + " [ERROR] ");
                        Console.ForegroundColor = ConsoleColor.White;
                        Console.WriteLine(text);
                        break;
                    case LogLevel.Warn:
                        Console.ForegroundColor = ConsoleColor.DarkYellow;
                        Console.Write(DateTime.Now.ToShortTimeString() + " [WARN] ");
                        Console.ForegroundColor = ConsoleColor.White;
                        Console.WriteLine(text);
                        break;
                    case LogLevel.Debug:
                        Console.ForegroundColor = ConsoleColor.DarkMagenta;
                        Console.Write(DateTime.Now.ToShortTimeString() + " [DEBUG] ");
                        Console.ForegroundColor = ConsoleColor.White;
                        Console.WriteLine(text);
                        break;
                }
            }
        }

        public static bool Finalize()
        {
            if (mWriter == null) return false;
            try
            {
                    mWriter.Close();
                    mWriter = null;
                    return true;
            }
            catch
            {
                return false;
            }
        }

        public static void Dump(byte[] pBuffer, int pStart, int pLength)
        {
            string[] split = (pLength > 0 ? BitConverter.ToString(pBuffer, pStart, pLength) : "").Split('-');
            StringBuilder hex = new StringBuilder(16 * 3);
            StringBuilder ascii = new StringBuilder(16);
            StringBuilder buffer = new StringBuilder();
            char temp;
            if (pLength > 0)
            {
                for (int index = 0; index < split.Length; ++index)
                {
                    temp = Convert.ToChar(pBuffer[pStart + index]);
                    hex.Append(split[index] + ' ');

                    if (char.IsWhiteSpace(temp) || char.IsControl(temp)) temp = '.';

                    ascii.Append(temp);
                    if ((index + 1) % 16 == 0)
                    {
                        buffer.AppendLine(string.Format("{0} {1}", hex, ascii));
                        hex.Length = 0;
                        ascii.Length = 0;
                    }
                }
                if (hex.Length > 0)
                {
                    if (hex.Length < (16 * 3)) hex.Append(new string(' ', (16 * 3) - hex.Length));
                    buffer.AppendLine(string.Format("{0} {1}", hex, ascii));
                }
                lock (sLock) Console.WriteLine(buffer);
            }
        }
    }

    public enum LogLevel
    {
        Info,
        Warn,
        Error,
        Exception,
        Debug
    }
}
