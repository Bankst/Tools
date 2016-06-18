using System.Data;
using System;

namespace DragonDataSniffer.Object
{
    public class NPCItem
    {
        public ushort MobID { get; private set; }
        public byte Slot { get; private set; }
        public int ItemID { get; private set; }

        public NPCItem(ushort pMobID, byte pSlot, int pItemID)
        {
            MobID = pMobID;
            Slot = pSlot;
            ItemID = pItemID;
        }
        public NPCItem(DataRow Row)
        {
            MobID = Convert.ToUInt16(Row["MobID"]);
            Slot = Convert.ToByte(Row["Slot"]);
            ItemID = Convert.ToInt32(Row["ItemID"]);
        }
        public void AddToDB()
        {
            string insertstring = "INSERT INTO NPCItemList (MobID,Slot,ItemID) VALUES ('"
                                + MobID + "','" +
                                +Slot + "','" + ItemID + "')";
            DatabaseManager.RunSQL(insertstring);
        }
    }
}
