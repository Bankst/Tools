using System;
using System.Collections.Generic;
using DragonDataSniffer.Data;
using DragonDataSniffer.Events;
namespace DragonDataSniffer.Object
{
    public sealed class Map
    {
        public MapInfo pMapInfo { get; private set; }

        public event EventHandler<MapEnterArgs> ObjectEnterTheMap;
        public List<NPC> NPCsByMob = new List<NPC>();
        public Dictionary<ushort, MapObject> MapObjects = new Dictionary<ushort, MapObject>();
        public Map(MapInfo pMapInf)
        {
            pMapInfo = pMapInf;
            ObjectEnterTheMap += Map_ObjectEnterTheMap;
        }

        private void Map_ObjectEnterTheMap(object sender, MapEnterArgs e)
        {
            ushort ObjectID = e.pObject.MapObjectID;

            if (e.pObject is NPC)
            {
                NPC pNPC = e.pObject as NPC;
                NPC OldNPC = NPCsByMob.Find(m => m.MobID == pNPC.MobID && m.MapID == pNPC.MapID && m.X == pNPC.X && m.Y == pNPC.Y);

                if(OldNPC != null)
                {
                    if(MapObjects.ContainsKey(OldNPC.MapObjectID) && pNPC.MapObjectID != OldNPC.MapObjectID)
                    {
                        if (MapObjects.Remove(OldNPC.MapObjectID))
                        {
                            ObjectID = pNPC.MapObjectID;
                        }
                    }
                }
                else
                {
                    Log.WriteLine(LogLevel.Info, "Saveing NPC {0}", pNPC.MobID);
                    pNPC.AddToDB();
                    NPCsByMob.Add(pNPC);
                }

            }
            else if (e.pObject is Character)
            {
                Character pChar = e.pObject as Character;
                Log.WriteLine(LogLevel.Info, "Character Enter The Map");
            }

            if (!MapObjects.ContainsKey(ObjectID))
            {
                MapObjects.Add(ObjectID, e.pObject);
            }
        }

 
        public void Invoke(MapObject pObject)
        {
            ObjectEnterTheMap.Invoke(null, new MapEnterArgs(pObject));
        }
        public bool MobIDContains(ushort MobID)
        {
            NPC pInfo = NPCsByMob.Find(m => m.MobID == MobID);

            if (pInfo != null)
            {
                return true;
            }
            return false;
        }
        
    }
}
