using DragonDataSniffer.Data;

namespace DragonDataSniffer.Object
{
    public class Character : MapObject
    {
        public int CharacterID { get; private set; }
        public ushort MapID { get; private set; }
        public short TargetID = -1;

        public Map pMap
        {
            get
            {
                Map mMap;
                if (Manager.MapDataManager.Instance.GetMapByID(MapID, out mMap))
                {
                    return mMap;
                }
                return null;
            }

        }
        public Character(ushort pMapID,int pCharID = 0)
        {
            MapID = pMapID;
        }

        public bool GetTarget(out MapObject pObject)
        {
            if (TargetID != -1)
            {
                MapObject pInfo;
                if(pMap.MapObjects.TryGetValue((ushort)TargetID,out pInfo))
                {
                    pObject = pInfo;
                    return true;
                }
            }

            pObject = null;

            return false;
        }
    }
}
