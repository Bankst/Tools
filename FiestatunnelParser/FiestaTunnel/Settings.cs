using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Serialization;
using System.IO;

namespace FiestaTunnel
{
    public sealed class Settings
    {

        public string LoginIP { get; set; }
        public short LoginPort { get; set; }
        public bool LogChat { get; set; }
        public string ProxyIP { get; set; }

        public void Save(string path)
        {
            using (var file = File.Create(path))
            {
                XmlSerializer xser = new XmlSerializer(typeof(Settings));
                xser.Serialize(file, this);
            }
        }

        public static Settings Load(string path)
        {
            if (!File.Exists(path)) return null;
            try
            {
                Settings obj;
                using (var file = File.Open(path, FileMode.Open))
                {
                    XmlSerializer xser = new XmlSerializer(typeof(Settings));
                    obj = (Settings)xser.Deserialize(file);
                }
                return obj;
            }
            catch
            {
                Console.WriteLine("Error reading settings.");
                return null;
            }
        }
    }
}
