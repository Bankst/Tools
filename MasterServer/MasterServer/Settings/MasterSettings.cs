using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Reflection;
using MasterServer.Utility;

namespace MasterServer.Settings
{
    class MasterSettings
    {
        public static String LocalPath { get; set; }
        public static IniFile iniFile { get; set; }
        public static Int32 PortNumber { get; set; }
        public static Int32 MaxConnections { get; set; }

        public static void Load()
        {
            LocalPath = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
            iniFile = new IniFile(LocalPath + @"\Configuration.ini");
            PortNumber = Convert.ToInt32(iniFile.Read("MasterServer", "PortNumber"));
            MaxConnections = Convert.ToInt32(iniFile.Read("MasterServer", "MaxConnections"));
        }
    }
}
