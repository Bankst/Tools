using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MasterServer.Utility;
using MasterServer.Handlers;

namespace MasterServer.Settings
{
    class PatchSettings
    {
        public static Int32 TotalPatches { get; set; }
        public static Int32 PatchType { get; set; }
        public static String DownloadURL { get; set; }
        public static String PatchFolder { get; set; }

        public static void Load()
        {
            PatchType = Convert.ToInt32(MasterSettings.iniFile.Read("PatchServer", "PatchType"));
            TotalPatches = Convert.ToInt32(MasterSettings.iniFile.Read("PatchServer", "TotalPatches"));
            DownloadURL = MasterSettings.iniFile.Read("PatchServer", "DownloadURL");
            PatchFolder = MasterSettings.iniFile.Read("PatchServer", "PatchFolder");
        }

        public static string GetPatchName(Int32 PatchNumber)
        {
            return MasterSettings.iniFile.Read("Patch" + PatchNumber, "PatchName");
        }

        public static PatchHandler.PatchType GetPatchType()
        {
            switch (PatchSettings.PatchType)
            {
                case 1:
                    return PatchHandler.PatchType.URLDownload;
                case 2:
                    return PatchHandler.PatchType.PatchServer;
            }
            return 0;
        }
    }
}
  
