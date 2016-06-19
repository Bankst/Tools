using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Reflection;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.FileIO;
using System.Diagnostics;

namespace OdinRestServer
{
    public class oLogger
    {
        string sBasePath = "";
        int i = 0;
        public oLogger()
        {
            sBasePath = Path.GetFullPath(Process.GetCurrentProcess().MainModule.FileName.Substring(0, Process.GetCurrentProcess().MainModule.FileName.LastIndexOf("\\")));
        }

        public void log(string File, string Msg, bool bypass = false)
        {
            Msg = Msg.Replace("\n", Environment.NewLine);
            if (bypass)
            {
                i += 1;
                Microsoft.VisualBasic.FileIO.FileSystem.WriteAllText(sBasePath + "\\" + File + ".txt", String.Format("[{0}] [{1}] :: {2}{3}", i.ToString(), DateTime.Now.ToString(), Msg, Environment.NewLine), true);
                return;
            }

            //if (Program.Settings["OdinServer.Debug"] == "1")
            //{
                i += 1;
                Microsoft.VisualBasic.FileIO.FileSystem.WriteAllText(sBasePath + "\\" + File + ".txt", String.Format("[{0}] [{1}] :: {2}{3}", i.ToString(), DateTime.Now.ToString(), Msg, Environment.NewLine), true);
            //}
        }

        public void log(string File, string Msg, Exception e)
        {
            i += 1;
            Microsoft.VisualBasic.FileIO.FileSystem.WriteAllText(sBasePath + "\\" + File + ".txt", String.Format("[{0}] [{1}] :: ******{2}******{3}[{0}] [{1}] :: {4}{3}", i.ToString(), DateTime.Now.ToString(), Msg, Environment.NewLine, e.Message), true);
        }

    }
}
