using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Collections.Concurrent;
using DragonDataSniffer.Data;
using DragonDataSniffer.Object;

namespace DragonDataSniffer.Manager
{
    [TunnelModule(InitializationStage.DataStore)]
    public class NPCDataManager
    {
        public ConcurrentDictionary<ushort,MobInfo> NPCByID { get; private set; }
      
        public static NPCDataManager Instance { get; private set; }
        public NPCDataManager()
        {
            NPCByID = new ConcurrentDictionary<ushort, MobInfo>();
            LoadNPC();
            LoadSpawnTable();
        }
        [InitializerMethod]
        public static bool Load()
        {
            try
            {
                Instance = new NPCDataManager();
                return true;
            }
            catch (Exception ex)
            {
                Log.WriteLine(LogLevel.Exception, " NPCDataManager exception: {0}", ex.ToString());
                return false;
            }
        }
        private void LoadSpawnTable()
        {
            SQLResult ItemListRes = DatabaseManager.Select("SELECT * from npcitemlist");
            SQLResult res = DatabaseManager.Select("SELECT * from NPCTable");
            int count = 0;
            int NPCWithItems = 0;
            var ItemListView = ItemListRes.DefaultView;
            ItemListView.Sort = "MobID";
            for (int i = 0; i < res.Count; i++)
            {
                NPC pNpc = new NPC(res, i);

                
                var  Result = ItemListView.FindRows(pNpc.MobID);

            
                MobInfo mInfo;
                if (NPCByID.TryGetValue(pNpc.MobID, out mInfo))
                {
                    pNpc.pInfo = mInfo;
                }
                if (Result.Length > 0)
                {

                    foreach (DataRowView _row in Result)
                    {
                        DataRow Row = _row.Row;

                        NPCItem pItem = new NPCItem(Row);
                      
                        pNpc.AddItem(pItem);
                    }
        
                    NPCWithItems++;
                }
                Map pMap;
                if (MapDataManager.Instance.GetMapByID(pNpc.MapID, out pMap))
                {
                    NPC resNPC = pMap.NPCsByMob.Find(m => m.MobID == pNpc.MobID && m.MapID == pNpc.MapID && m.X == pNpc.X && pNpc.Y == m.Y);
                    if (resNPC == null)
                    {
                        pMap.NPCsByMob.Add(pNpc);
                        count++;
                    }
                }
            }

            Log.WriteLine(LogLevel.Info, "Load {0} {1} From NPCTable", count,NPCWithItems);
        }

        private void LoadNPC()
        {
            SQLResult res = DatabaseManager.Select("SELECT * from mobinfo WHERE isNPC = '1'");
       
            for (int i = 0; i < res.Count; i++)
            {
                MobInfo pInfo = new MobInfo(res, i);
                if(!NPCByID.TryAdd(pInfo.ID,pInfo))
                {
                    Log.WriteLine(LogLevel.Info, "Dublicate NPC Found {0} ", pInfo.ID);
                    continue;
                }

            }

            Log.WriteLine(LogLevel.Info, "Load {0} NPC", NPCByID.Count);
        }

        public bool IsNPCContains(ushort MobID)
        {
            if (NPCByID.ContainsKey(MobID))
                return true;

            return false;
        }
    }
}
