using QuestDataSQLConverter.IO;
using System;

namespace QuestDataSQLConverter.Object
{
    public class QuestMob
    {
        public ushort ID { get; private set; }
        public bool IsNPC { get; private set; }
        public bool IsEnabled { get; private set; }

        public bool IsToKill { get; private set; }
        public bool AmountToKill { get; private set; }

        public void SaveSQL(ushort qID)
        {
            string SQL = "INSERT INTO QuestMob (QuestID,IsNPC,IsEnabled,IsToKill,AmountToKIll,MobID) VALUES"
                + "('" + qID + "','" + (Convert.ToByte(IsNPC) + "','" + Convert.ToByte(IsEnabled) + "','" + Convert.ToByte(IsToKill) + "','" + Convert.ToByte(AmountToKill) + "','" + ID + "')");
            DatabaseManager.RunSQL(SQL);
        }
        public static bool Read(QuestStream pStream, out QuestMob pMob)
        {
            bool pIsEnabled;
            bool pIsNPC;
            ushort MobID;
            bool pIsToKill;
            bool pAmountToKill;
            pMob = null;
            if(!pStream.TryReadBoolean(out pIsEnabled)) { return false; }
            if (!pStream.TryReadBoolean(out pIsNPC)) { return false; }
            if(!pStream.TryReadUInt16(out MobID)) { return false;  }
            if (!pStream.TryReadBoolean(out pIsToKill)) { return false; }
            if (!pStream.TryReadBoolean(out pAmountToKill)) { return false; }

            pMob = new QuestMob
            {
                IsEnabled = pIsEnabled,
                IsNPC = pIsNPC,
                ID = MobID,
                IsToKill = pIsToKill,
                AmountToKill = pAmountToKill,
            };
            

            return true;
        }
    }
}
