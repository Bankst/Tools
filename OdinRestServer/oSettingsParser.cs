using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Diagnostics;
using System.Data;
namespace OdinRestServer
{
    public class oSettingsParser
    {

        public oSettingsParser()
        {
            string SHNPath = Path.GetFullPath(Process.GetCurrentProcess().MainModule.FileName.Substring(0, Process.GetCurrentProcess().MainModule.FileName.LastIndexOf("\\"))) + "\\OdinRestServerSettings.shn";
            
            if (!File.Exists(SHNPath))
            {

                Exception e = new Exception("File not found: " + SHNPath);
                Program.L.log("Main", "READ SETTINGS FAIL",e);
                Environment.Exit(0);
            }
            try
            {
                OldSHNFile SHN = new OldSHNFile(SHNPath);
                foreach (KeyValuePair<string,string> Setting in SHN.dVals)
                {
                    Program.L.log("Main", Setting.Key + "=>" + Setting.Value, true);
                    Program.Settings.Add(Setting.Key, Setting.Value);
                }
            }
            catch(Exception z)
            {
                Program.L.log("Main", "PARSE SETTINGS FAIL", z);
                Environment.Exit(0);
            }

        }
    }
}
