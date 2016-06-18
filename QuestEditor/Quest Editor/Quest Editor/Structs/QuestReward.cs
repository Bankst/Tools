using System;
using System.IO;

namespace QuestEditor
{
    public class QuestReward
    {
        public byte[] ToArray()
        {
            QuestStream qStream;

            qStream = new QuestStream();
            qStream.Write(Method);
            qStream.Write(Type);
            qStream.Fill(2);

            if (Type == RewardType.Item)
            {
                qStream.Write(ItemID);
                qStream.Write(ItemCount);
                qStream.Fill(4);
            } // EXP, Fame, Money
            else qStream.Write(Amount);

            return qStream.ToArray();
        }

        public void Write(RewardOffset offset, ulong data)
        {
            switch (offset)
            {
                case RewardOffset.RewardType:
                    Type = (RewardType)data;
                    break;

                case RewardOffset.RewardMethod:
                    Method = (RewardMethod)data;
                    break;

                case RewardOffset.RewardAmount_ItemID:
                    if (Type == RewardType.Item)
                        ItemID = Convert.ToUInt16(data);
                    else Amount = data;
                    break;

                case RewardOffset.ItemCount:
                    ItemCount = Convert.ToUInt16(data);
                    break;
            }
        }

        public RewardType Type;
        public RewardMethod Method;

        public ushort ItemID;
        public ushort ItemCount;

        public ulong Amount;
    }
}
