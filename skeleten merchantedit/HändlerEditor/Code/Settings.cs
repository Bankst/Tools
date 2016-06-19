using System.Xml;

namespace HändlerEditor.Code
{
    public static class Settings
    {
        public static void Load()
        {
            XmlDocument doc = new XmlDocument();
            doc.Load("Settings.xml");
            foreach (XmlNode n in doc.ChildNodes)
                ParseXmlNode(n);
        }
        private static void ParseXmlNode(XmlNode n)
        {
            switch (n.Name)
            {
                case "Settings":
                    foreach (XmlNode node in n.ChildNodes)
                        ParseXmlNode(node);
                    break;
                case "IconPath":
                    Settings.IconPath = n.InnerText;
                    break;
                case "DataPath":
                    Settings.DataPath = n.InnerText;
                    break;
                default:
                    break;
            }
        }

        public static string IconPath { get; private set; }
        public static string DataPath { get; private set; }
    }
}
