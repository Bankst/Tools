using System;
using System.IO;

namespace QuestEditor
{
    public class QuestItem
    {
        public byte[] ToArray()
        {
            QuestStream qStream;

            qStream = new QuestStream();
            qStream.Write(IsEnabled);
            qStream.Write(Type);
            qStream.Write(ID);
            qStream.Write(Amount);

            return qStream.ToArray();
        }

        public void Write(ItemOffset offset, ushort data)
        {
            switch (offset)
            {
                case ItemOffset.ItemID:
                    ID = data;
                    break;

                case ItemOffset.ItemAmount:
                    Amount = Convert.ToUInt16(data);
                    break;

                case ItemOffset.ItemType:
                    Type = Convert.ToByte(data);
                    break;

                case ItemOffset.IsEnabled:
                    IsEnabled = Convert.ToByte(data);
                    break;
            }
        }

        public ushort ID;
        public ushort Amount;

        public byte Type;
        public byte IsEnabled;
    }
}
