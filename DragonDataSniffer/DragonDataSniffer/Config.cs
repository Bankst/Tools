using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Diagnostics;

public class Config
{
    public static Config Instance { get; private set; }

    #region Proberty

    public static string Comments { get { return comments; } }
    private static string comments = string.Empty;
    // TS: This is otherwise known as a dictionary:
    //private static List<KeyValuePair<object, object>> Properties;
    private readonly Dictionary<string, object> properties;
    private bool isInitialized;
    public static Random Random { get; private set; }


    public string ConnectIP { get; private set; }
    public string TunnelIP { get; private set; }
    public int TunnelPort { get; private set; }
    public int WorkInteval { get; private set; }
    //Database shit
    public string SQLHost { get; private set; }
    public string SQLUser { get; private set; }
    public string SQLPassword { get; private set; }
    public string SQLDatabase { get; private set; }
    #endregion;

    private Config()
    {
        this.properties = new Dictionary<string, object>();
        this.isInitialized = false;
    }

    public static bool Load()
    {
        try
        {
            Instance = new Config();

            return Instance.InitializeInternal();
        }
        catch (Exception ex)
        {
            Log.WriteLine(LogLevel.Exception, "Config exception: {0}", ex.ToString());
            return false;
        }
    }
    private const string ConfigName = "\\Config.cfg";
    private static readonly string configPath = Path.GetDirectoryName(Process.GetCurrentProcess().MainModule.FileName) + ConfigName;






    /// <summary>
    /// Automatically loads settings from config file
    /// </summary>        


    private bool InitializeInternal()
    {
        if (this.isInitialized) return true;
        try
        {
            this.ParseFile(configPath);

            //Tunnel
            ConnectIP = GetString("Tunnel.ConnectIP");
            TunnelIP = GetString("Tunnel.IP");
            TunnelPort = GetInt32("Tunnel.Port");
            WorkInteval = GetInt32("Tunnel.WorkInteval");

            //Database

            SQLHost = GetString("Sql.Server");
            SQLUser = GetString("Sql.User");
            SQLPassword = GetString("Sql.Password");
            SQLDatabase = GetString("Sql.Database");
        }
        catch (Exception ex)
        {
            Log.WriteLine(LogLevel.Exception, "Error reading Config: {0}", ex.Message);
            return false;
        }
        Random = new Random(DateTime.Now.Second);


        Log.WriteLine(LogLevel.Info,"Config loaded successfully.");
        this.isInitialized = true;
        return true;
    }

    #region Get methods

    /// <summary>
    /// Gets a Boolean from the file
    /// </summary>
    /// <param name="key">The key</param>
    /// <returns>true if value is true, else returns false</returns>
    public bool GetBool(string key)
    {
        return GetString(key).ToLower() == "true";
    }

    /// <summary>
    /// Gets an Int32 type variable from the file
    /// </summary>
    /// <param name="key">The key to get the value from</param>
    /// <returns>'key's Int32 value</returns>
    public int GetInt32(string key)
    {
        return Convert.ToInt32(properties[key]);
    }
    public uint GetUInt32(string key)
    {
        return Convert.ToUInt32(properties[key]);
    }
    /// <summary>
    /// Gets an Int16 type variable from the file
    /// </summary>
    /// <param name="key">The key to get the value from</param>
    /// <returns>'key's Int16 value</returns>
    public short GetInt16(string key)
    {
        return Convert.ToInt16(properties[key]);
    }

    /// <summary>
    /// Gets an Byte type variable from the file
    /// </summary>
    /// <param name="key">The key to get the value from</param>
    /// <returns>'key's Byte value</returns>
    public byte GetByte(string key)
    {
        return Convert.ToByte(properties[key]);
    }

    /// <summary>
    /// Gets a String type variable from the file
    /// </summary>
    /// <param name="key">The key to get the value from</param>
    /// <returns>'key's String vaule</returns>
    public string GetString(string key)
    {
        return properties[key].ToString();
    }

    #endregion



    /// <summary>
    /// Reads the file and parse it into a List of Key Vaule Pairs.
    /// </summary>
    /// <param name="fileName">filepath</param>
    /// <returns>List of Key Value Pairs</returns>
    public void ParseFile(string fileName)
    {
        string[] lines = File.ReadAllLines(fileName);

        foreach (string entry in lines.Select(line => line.Trim()).Where(line => line.Length > 0))
        {
            if (!entry.Contains("#"))
            {
                string[] parts = entry.Split('=');
                if (parts.Length != 2) continue;

                string key = parts[0].Trim();
                string value = parts[1].Trim();
                if (!properties.ContainsKey(key))
                {
                    properties.Add(key, value);
                }
            }
            else
            {
                comments += Environment.NewLine + entry.Remove(0, 1);
            }
        }
    }
}
 