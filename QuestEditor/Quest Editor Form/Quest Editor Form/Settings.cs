using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;

namespace Quest_Editor_Form
{
    public sealed class Settings : Dictionary<string, string>
    {
        public Settings()
        {
            // Defaults \\
            this["Info::"] = "<HEAD>";
            this["SHNPath"] = "";
        }

        public void Save(string path)
        {
            string settings;

            settings = ToString();
            File.Create(path).Close();

            File.WriteAllText(path, settings);
        }

        public void Load(string path)
        {
            if (!File.Exists(path))
                Settings.In.Save(path);

            string[] settings;
            Settings values;
            string[] items;
            string count;
            int length;

            settings = File.ReadAllLines(path);
            values = new Settings();
            values.Clear();

            foreach (string setting in settings)
            {
                count = values.Count.ToString();
                items = setting.Split('=');
                length = items.Length;

                if (length > 1) values.Add(items[0], items[1]);
                else if (length > 0) values.Add(count, "<HEAD>");
            }

            Settings.In = values;
        }

        public override string ToString()
        {
            string settFormat = string.Empty;

            foreach (KeyValuePair<string, string> item in Settings.In)
            {
                if (item.Value == "<HEAD>")
                    settFormat += Environment.NewLine + item.Key + Environment.NewLine;
                else settFormat += item.Key + "=" + item.Value + Environment.NewLine;
            }

            return settFormat.Remove(0, 2);
        }

        public static Settings In;
    }
}
