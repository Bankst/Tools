using System;
using System.Text;
using System.Diagnostics;
using System.Windows.Forms;
using System.IO;

namespace FiestaBot
{
    public static class Log
    {
        private static object sLock = new object();
        public static ListBox sBox;
        public static TextWriter tWriter;

        public static void WriteLine(string pFormat, params object[] pArgs)
        {
           string text = "[" + DateTime.Now.ToShortTimeString() + "] " + string.Format(pFormat, pArgs);
            lock (sLock) {
                Debug.WriteLine(text);
                if (sBox != null)
                {
                    if (sBox.InvokeRequired)
                    {
                        sBox.Invoke(new MethodInvoker(delegate { sBox.Items.Add(text); sBox.TopIndex = sBox.Items.Count - 1; }));
                    }
                    else
                    {
                        sBox.Items.Add(text); 
                        sBox.TopIndex = sBox.Items.Count - 1;
                    }
                }
                if (tWriter != null)
                {
                    tWriter.WriteLine(text);
                }
            }
        }
    }
}
