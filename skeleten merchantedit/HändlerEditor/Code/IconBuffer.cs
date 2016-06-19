using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using FiestaLib;
using System.Windows.Media.Imaging;

namespace HändlerEditor.Code
{
    public static class IconBuffer
    {
        public static void Initialize(string IconPath)
        {
            Icons = new Dictionary<string, FiestaIconFile>();

            string[] icons = Directory.GetFiles(IconPath);
            foreach (string icon in icons)
            {
                string[] folders = icon.Split('\\');
                string name = folders[folders.Length - 1].Split('.')[0];
                name = name.ToLower();

                FiestaIconFile file = new FiestaIconFile(icon);
                Icons.Add(name, file);
            }
        }
        public static Dictionary<string, FiestaIconFile> Icons;
    }
}
