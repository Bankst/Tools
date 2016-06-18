using QuestDataSQLConverter.IO;

namespace QuestDataSQLConverter.Object
{
    public class QuestItem
    {

        public ushort ID { get; private set; }
        public ushort Amount;

        public byte Type { get; private set; }
        public bool IsEnabled { get; private set; }

        public void SaveSQL(ushort questid)
        {
            string SQL = "INSERT INTO QuestItem (QuestID,Amount,Type,IsEnabled,ItemID) VALUES "
                + "('" + questid + "','" + Amount + "','" + Type + "','" + IsEnabled + "','" + ID + "')";
            DatabaseManager.RunSQL(SQL);
        }
        public static bool Read(QuestStream pStream, out QuestItem pItem)
        {
            pItem = null;
            bool pIsEnabled;
            byte pItemType;
            ushort pItemID;
            ushort pAmount;

            if (!pStream.TryReadBoolean(out pIsEnabled)) { return false; }

            if (!pStream.TryReadByte(out pItemType)) { return false; }

            if (!pStream.TryReadUInt16(out pItemID)) { return false; }

            if (!pStream.TryReadUInt16(out pAmount)) { return false; }


            pItem = new QuestItem
            {
                IsEnabled = pIsEnabled,
                Type = pItemType,
                ID = pItemID,
                Amount = pAmount,
            };

            return true;
        }
    }
}
