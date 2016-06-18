using System;
using System.Linq;
using System.Collections.Concurrent;
using System.Collections.Generic;
using DragonDataSniffer.Data;
using DragonDataSniffer.Object;

namespace DragonDataSniffer.Manager
{
    [TunnelModule(InitializationStage.DataStore)]
    public   class MapDataManager
    {
        public static MapDataManager Instance { get; private set; }
        private ConcurrentDictionary<string,MapInfo> MapInfoByName { get;  set; }
        private ConcurrentDictionary<ushort,MapInfo> MapInfoByID  { get;  set; }
        private ConcurrentDictionary<ushort,Map> MapByID { get; set; }
        public MapDataManager()
        {
            MapInfoByName = new ConcurrentDictionary<string, MapInfo>();
            MapInfoByID = new ConcurrentDictionary<ushort, MapInfo>();
            MapByID = new ConcurrentDictionary<ushort, Map>();
            LoadMaps();
        }
        [InitializerMethod]
        public static bool Load()
        {
            try
            {
                Instance = new MapDataManager();
                return true;
            }
            catch (Exception ex)
            {
                Log.WriteLine(LogLevel.Exception, " MapDataManager exception: {0}", ex.ToString());
                return false;
            }
        }

        private void LoadMaps()
        {
            SQLResult res = DatabaseManager.Select("SELECT * from mapinfo");

            for (int i = 0; i < res.Count; i++)
            {
                MapInfo pInfo = new MapInfo(res, i);
                if (!MapInfoByID.TryAdd(pInfo.ID, pInfo))
                {
                    Log.WriteLine(LogLevel.Info, "Dublicate Map ID found {0} ", pInfo.ID);
                    continue;
                }
                if(!MapInfoByName.TryAdd(pInfo.Index,pInfo))
                {
                    Log.WriteLine(LogLevel.Info, "Dublicate MapName found {0}", pInfo.Name);
                    continue;
                }

                Map pMap = new Map(pInfo);

                if(!MapByID.TryAdd(pInfo.ID,pMap))
                {
                   
                }
            }


            Log.WriteLine(LogLevel.Info,"Load {0} MapInfos",MapByID.Count);
        }
        public bool GetMapInfoByName(string name,out MapInfo inf)
        {
            if(MapInfoByName.TryGetValue(name,out inf))
            {
                return true;
            }
            return false;
        }
        public bool GetMapInfoByID(ushort ID, out MapInfo inf)
        {
            if (MapInfoByID.TryGetValue(ID, out inf))
            {
                return true;
            }
            return false;
        }
        public bool GetMapByID(ushort MapID,out Map pMap)
        {
            if (MapByID.TryGetValue(MapID, out pMap))
                return true;

            return false;
        }
    }
}
