using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;
using System.Windows.Forms;

namespace FiestaPE
{
    public static class Log
    {
        public static ListBox pBox;
        public static void WriteLine(LogLevel pLogLevel, string pFormat, params object[] pArgs)
        {
            string header = "[" + DateTime.Now + "] (" + pLogLevel + ") ";
            string buffer = string.Format(pFormat, pArgs);
            Debug.Write(header);
            Debug.WriteLine(buffer);
            if (pBox != null)
            {
                if (pBox.InvokeRequired)
                {
                    pBox.Invoke(new MethodInvoker(delegate { pBox.Items.Add(header + buffer); }));
                }
                else
                {
                    pBox.Items.Add(header + buffer);
                }
            }
        }
    }

    public enum LogLevel
    {
        Default = 0,
        Info,
        Warn,
        Error,
        Exception,
        Debug
    }
}
