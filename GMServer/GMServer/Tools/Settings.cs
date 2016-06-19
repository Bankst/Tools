using System;
using System.Collections.Generic;
using System.Text;
using System.IO;

namespace GMServer
{
    public sealed class Settings
    {
        private static Settings _instance;
        private static volatile object synclock = new object();
        private static string path = Path.GetDirectoryName(System.Diagnostics.Process.GetCurrentProcess().MainModule.FileName) + "\\Config.cfg";
        private string Comments = string.Empty;
        private List<KeyValuePair<object, object>> Props;
        public Random Random { get; set; }

        public static Settings Instance
        {
            #region Signelton
            get
            {
                if (_instance == null)
                {
                    lock (synclock)
                    {
                        if (_instance == null)
                            _instance = new Settings();
                    }
                }

                return _instance;
            }
            #endregion
        }

        /// <summary>
        /// Constructs the PropertyManager and reads the file.
        /// </summary>
        /// <param name="file">Path</param>
        private Settings()
        {
            Props = ParseFile(path);
            Random = new Random(DateTime.Now.Second);
        }
        /// <summary>
        /// Gets a Boolean from the file
        /// </summary>
        /// <param name="key">The key</param>
        /// <returns>true if value is true, else returns false</returns>
        public bool GetBool(string key)
        {
            return this.GetString(key).ToLower() == "true";
        }
        /// <summary>
        /// Gets an Int32 type variable from the file
        /// </summary>
        /// <param name="key">The key to get the value from</param>
        /// <returns>'key's Int32 value</returns>
        public int GetInt32(string key)
        {
            return Convert.ToInt32(this.GetValue(key));
        }
        /// <summary>
        /// Gets an Int16 type variable from the file
        /// </summary>
        /// <param name="key">The key to get the value from</param>
        /// <returns>'key's Int16 value</returns>
        public short GetInt16(string key)
        {
            return Convert.ToInt16(this.GetValue(key));
        }
        /// <summary>
        /// Gets an Byte type variable from the file
        /// </summary>
        /// <param name="key">The key to get the value from</param>
        /// <returns>'key's Byte value</returns>
        public byte GetByte(string key)
        {
            return Convert.ToByte(this.GetValue(key));
        }
        /// <summary>
        /// Gets a String type variable from the file
        /// </summary>
        /// <param name="key">The key to get the value from</param>
        /// <returns>'key's String vaule</returns>
        public string GetString(string key)
        {
            return this.GetValue(key).ToString();
        }

        private object GetValue(string key)
        {
            foreach (KeyValuePair<object, object> kvp in Props)
            {
                if (kvp.Key.ToString() == key)
                    return kvp.Value;
            }
            return null;
        }
        /// <summary>
        /// Gets the comments from the file ex:#Comment
        /// </summary>
        /// <returns>a string contains all comments</returns>
        public string GetComments()
        {
            return Comments;
        }
        /// <summary>
        /// Reads the file and parse it into a List of Key Vaule Pairs.
        /// </summary>
        /// <param name="fileName">filepath</param>
        /// <returns>List of Key Vaule Pairs</returns>
        private List<KeyValuePair<object, object>> ParseFile(string fileName)
        {
            string[] lines = File.ReadAllLines(fileName);
            List<KeyValuePair<object, object>> temp = new List<KeyValuePair<object, object>>();
            foreach (string entry in lines)
            {

                if (entry.Trim().Length > 0)
                {
                    if (!entry.Contains("#"))
                    {
                        string[] parts = entry.Trim().Split('=');

                        if (parts.Length == 2)
                            temp.Add(new KeyValuePair<object, object>(parts[0], parts[1]));
                    }
                    else
                    {
                        Comments += "/n/r" + entry.Remove(0, 1);
                    }
                }
            }
            return temp;
        }
    }
}
