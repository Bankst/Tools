using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using MasterServer.Settings;
using MasterServer.Utility;

namespace MasterServer.Handlers
{
    class PatchHandler
    {
        public enum PatchType
        {
           URLDownload = 0,
           PatchServer = 1,
        }

        public PatchHandler(){ }

        public string GetPatch(Int32 PatchNo,PatchType PType)
        {
            Int32 PatchNumber = PatchNo + 1;
            String PatchName = PatchSettings.GetPatchName(PatchNumber);

            switch (PType)
            {
                case PatchType.URLDownload:
                    return "PatchNo:" + PatchNumber + ";URLDownload:" + PatchSettings.DownloadURL
                       + PatchName + ";";
                case PatchType.PatchServer:
                    Byte[] Buffer = ReadPatchFile(Path.Combine(MasterSettings.LocalPath, PatchSettings.PatchFolder, PatchName));
                    return "PatchNo:" + PatchNumber + ";PatchName:" + PatchName + ";PatchBytes:" 
                       + Convert.ToBase64String(Buffer) + ";";
            }
            return "Invalid";
        }

        public Byte[] ReadPatchFile(String PatchName)
        {
            FileStream fileStream = new FileStream(Path.Combine(MasterSettings.LocalPath, PatchSettings.PatchFolder, PatchName), FileMode.Open, FileAccess.Read);
            Byte[] Buffer;
            try
            {
                Int32 Length = (Int32)fileStream.Length;
                Buffer = new Byte[Length];
                Int32 Count;
                Int32 Sum = 0;
                while ((Count = fileStream.Read(Buffer, Sum, Length - Sum)) > 0)
                    Sum += Count;
            }
            finally 
            { 
                fileStream.Close(); 
            }
            return Buffer;
        }
    }
}
