using QuestDataSQLConverter.Enum;
using QuestDataSQLConverter.IO;

namespace QuestDataSQLConverter.Object
{
    public class QuestReward
    {
        public RewardType Type { get; private set; }
        public RewardMethod Method { get; private set; }

        public ushort ItemID { get; private set; }
        public ulong Amount { get; private set; }

        public void SaveSQL(ushort QuestID)
        {
            string SQL = "INSERT INTO QuestReward (QuestID,Type,Method,ItemID,Amount)"
                + "VALUES ('" + QuestID + "','" + (byte)Type + "','" + (byte)Method + "','" + ItemID + "','" + Amount + "')";
            DatabaseManager.RunSQL(SQL);
        }
        public static bool Read(QuestStream pStream, out QuestReward pReward)
        {
            pReward = null;
            byte pMethod;
            byte pType;
            ushort pAmount = 0, pItemID = 0;
            ulong pAmount2 = 0;
            if (!pStream.TryReadByte(out pMethod)) { return false; }
            if (!pStream.TryReadByte(out pType)) { return false; }
            if (!pStream.ReadSkip(2)) { return false; }


            if ((RewardType)pType == RewardType.Item)
            {
                if (!pStream.TryReadUInt16(out pItemID)) { return false; }
                if (!pStream.TryReadUInt16(out pAmount)) { return false; }
                if (!pStream.ReadSkip(4)) { return false; }
            }
            else
            {

                if (!pStream.TryReadUInt64(out pAmount2)) { return false; }
            }



            pReward = new QuestReward
            {
                Method = (RewardMethod)pMethod,
                Type = (RewardType)pType,
                ItemID = pItemID
            };

            if (pReward.Type == RewardType.Item)
            {
                pReward.Amount = pAmount;

            }
            else { pReward.Amount = pAmount2; }


            return true;

        }
    }
}
