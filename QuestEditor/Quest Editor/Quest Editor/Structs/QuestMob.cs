using System;
using System.IO;

namespace QuestEditor
{
    public class QuestMob
    {
        public byte[] ToArray()
        {
            QuestStream qStream;

            qStream = new QuestStream();
            qStream.Write(IsEnabled);
            qStream.Write(IsNPC);
            qStream.Write(ID);
            qStream.Write(IsToKill);
            qStream.Write(AmountToKill);

            return qStream.ToArray();
        }

        public void Write(MobOffset offset, ushort data)
        {
            switch (offset)
            {
                case MobOffset.MobID:
                    ID = data;
                    break;

                case MobOffset.IsNPC:
                    IsNPC = Convert.ToByte(data);
                    break;

                case MobOffset.IsEnabled:
                    IsEnabled = Convert.ToByte(data);
                    break;

                case MobOffset.IsToKill:
                    IsToKill = Convert.ToByte(data);
                    break;

                case MobOffset.AmountToKill:
                    AmountToKill = Convert.ToByte(data);
                    break;
            }
        }

        public ushort ID;
        public byte IsNPC;
        public byte IsEnabled;

        public byte IsToKill;
        public byte AmountToKill;
    }
}
