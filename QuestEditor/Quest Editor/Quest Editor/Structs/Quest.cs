using System;
using System.IO;
using System.Collections.Generic;

namespace QuestEditor
{
    public class Quest
    {
        public Quest(byte[] data)
        {
            try
            {
                if (data.Length < (int)QuestLength.Total)
                    throw new EndOfStreamException();

                Mobs = new List<QuestMob>();
                Items = new List<QuestItem>();
                Rewards = new List<QuestReward>();

                ItemData = new byte[(int)QuestLength.ItemData];
                DataLength = (int)QuestLength.Total;
                Script = new QuestScript();

                qStream = new QuestStream(data);

                Read(GroupType.QuestInfo);
                Read(GroupType.Mobs);
                Read(GroupType.Items);
                Read(GroupType.Rewards);
                Read(GroupType.Script);
            }
            catch (EndOfStreamException esex)
            {
                string err = "Quest data length is too short or long. ";
                throw new Exception(err + esex.Message);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public Quest()
        {
            InitializeQuestData();
            qStream = new QuestStream();
        }

        private void InitializeQuestData()
        {
            Mobs = new List<QuestMob>();
            Mobs.Add(new QuestMob());
            Mobs.Add(new QuestMob());
            Mobs.Add(new QuestMob());
            Mobs.Add(new QuestMob());
            Mobs.Add(new QuestMob());

            Items = new List<QuestItem>();
            Items.Add(new QuestItem());
            Items.Add(new QuestItem());
            Items.Add(new QuestItem());
            Items.Add(new QuestItem());
            Items.Add(new QuestItem());
            Items.Add(new QuestItem());
            Items.Add(new QuestItem());
            Items.Add(new QuestItem());
            Items.Add(new QuestItem());
            Items.Add(new QuestItem());

            Rewards = new List<QuestReward>();
            Rewards.Add(new QuestReward());
            Rewards.Add(new QuestReward());
            Rewards.Add(new QuestReward());
            Rewards.Add(new QuestReward());
            Rewards.Add(new QuestReward());
            Rewards.Add(new QuestReward());
            Rewards.Add(new QuestReward());
            Rewards.Add(new QuestReward());
            Rewards.Add(new QuestReward());
            Rewards.Add(new QuestReward());
            Rewards.Add(new QuestReward());
            Rewards.Add(new QuestReward());

            Script = new QuestScript();

            ItemData = new byte[(int)QuestLength.ItemData];
            DataLength = (int)QuestLength.Total;
        }

        public void Read(GroupType type)
        {
            switch (type)
            {
                case GroupType.QuestInfo:
                    Read(QuestOffset.QuestDataLen);
                    Read(QuestOffset.QuestID);
                    Read(QuestOffset.QuestTitle);
                    Read(QuestOffset.QuestDescript);
                    Read(QuestOffset.IsRepeat);
                    Read(QuestOffset.IsNeedLevel);
                    Read(QuestOffset.MinLevel);
                    Read(QuestOffset.MaxLevel);
                    Read(QuestOffset.IsEnabled);
                    Read(QuestOffset.StartNPC);
                    Read(QuestOffset.PrevQuest);
                    Read(QuestOffset.IsMulti);
                    Read(QuestOffset.Class);

                    Read(QuestOffset.ItemData);
                    break;

                case GroupType.Mobs:
                    for (int inxMob = 0; inxMob < MOB_COUNT; inxMob++)
                    {
                        AddNewQuestMob();

                        Read(MobOffset.IsEnabled, inxMob);
                        Read(MobOffset.IsNPC, inxMob);
                        Read(MobOffset.MobID, inxMob);
                        Read(MobOffset.IsToKill, inxMob);
                        Read(MobOffset.AmountToKill, inxMob);
                    }
                    break;

                case GroupType.Items:
                    for (int inxItem = 0; inxItem < ITEM_COUNT; inxItem++)
                    {
                        AddNewQuestItem();

                        Read(ItemOffset.IsEnabled, inxItem);
                        Read(ItemOffset.ItemType, inxItem);
                        Read(ItemOffset.ItemID, inxItem);
                        Read(ItemOffset.ItemAmount, inxItem);
                    }
                    break;

                case GroupType.Rewards:
                    for (int inxReward = 0; inxReward < REWARD_COUNT; inxReward++)
                    {
                        AddNewQuestReward();

                        Read(RewardOffset.RewardMethod, inxReward);
                        Read(RewardOffset.RewardType, inxReward);

                        if (GetReward(inxReward).Type == RewardType.Item)
                        {
                            Read(RewardOffset.RewardAmount_ItemID, inxReward);
                            Read(RewardOffset.ItemCount, inxReward);
                        }
                        else Read(RewardOffset.RewardAmount_ItemID, inxReward);
                    }
                    break;

                case GroupType.Script:
                    Read(ScriptOffset.ScriptStartLen);
                    Read(ScriptOffset.ScriptFinishLen);
                    Read(ScriptOffset.ScriptActionLen);
                    Read(ScriptOffset.Script);
                    break;
            }
        }

        public void Read(QuestOffset qOffset)
        {
            qStream.SetReaderPosition((long)qOffset);

            switch (qOffset)
            {
                case QuestOffset.QuestDataLen:
                    DataLength = qStream.ReadUInt32();
                    break;

                case QuestOffset.QuestID:
                    ID = qStream.ReadUInt16();
                    break;

                case QuestOffset.QuestTitle:
                    Title = qStream.ReadUInt16();
                    break;

                case QuestOffset.QuestDescript:
                    Description = qStream.ReadUInt16();
                    break;

                case QuestOffset.IsRepeat:
                    IsRepeatable = qStream.ReadByte();
                    break;

                case QuestOffset.MinLevel:
                    MinimumLevel = qStream.ReadByte();
                    break;

                case QuestOffset.MaxLevel:
                    MaximumLevel = qStream.ReadByte();
                    break;

                case QuestOffset.IsEnabled:
                    IsEnabled = qStream.ReadByte();
                    break;

                case QuestOffset.StartNPC:
                    StartNPC = qStream.ReadUInt16();
                    break;

                case QuestOffset.PrevQuest:
                    Previous = qStream.ReadUInt16();
                    break;

                case QuestOffset.IsMulti:
                    IsMultiInstance = qStream.ReadByte();
                    break;

                case QuestOffset.Class:
                    Class = qStream.ReadByte();
                    break;

                case QuestOffset.IsNeedLevel:
                    IsNeedLevel = qStream.ReadByte();
                    break;

                case QuestOffset.ItemData:
                    ItemData = new byte[(int)QuestLength.ItemData];
                    break;
            }
        }

        public void Read(MobOffset mOffset, int mobInx)
        {
            ushort mobLen;
            QuestMob mob;
            long mobPos;

            mobLen = (ushort)MobLength.Total;
            mobPos = (long)mOffset + (mobLen * mobInx);

            qStream.SetReaderPosition(mobPos);

            mob = GetMob(mobInx);
            if (mob == null) throw new Exception("Invalid zero-based ID of Mob");

            switch (mOffset)
            {
                case MobOffset.IsEnabled:
                    mob.IsEnabled = qStream.ReadByte();
                    break;

                case MobOffset.IsNPC:
                    mob.IsNPC = qStream.ReadByte();
                    break;

                case MobOffset.MobID:
                    mob.ID = qStream.ReadUInt16();
                    break;

                case MobOffset.IsToKill:
                    mob.IsToKill = qStream.ReadByte();
                    break;

                case MobOffset.AmountToKill:
                    mob.AmountToKill = qStream.ReadByte();
                    break;
            }
        }

        public void Read(ItemOffset iOffset, int itemInx)
        {
            QuestItem item;
            ushort itemLen;
            long itemPos;

            itemLen = (ushort)ItemLength.Total;
            itemPos = (long)iOffset + (itemLen * itemInx);

            qStream.SetReaderPosition(itemPos);

            item = GetItem(itemInx);
            if (item == null) throw new Exception("Invalid zero-based ID of Item");

            switch (iOffset)
            {
                case ItemOffset.IsEnabled:
                    item.IsEnabled = qStream.ReadByte();
                    break;

                case ItemOffset.ItemType:
                    item.Type = qStream.ReadByte();
                    break;

                case ItemOffset.ItemID:
                    item.ID = qStream.ReadUInt16();
                    break;

                case ItemOffset.ItemAmount:
                    item.Amount = qStream.ReadUInt16();
                    break;
            }
        }

        public void Read(RewardOffset rOffset, int rewardInx)
        {
            QuestReward reward;
            ushort rewardLen;
            long rewardPos;

            rewardLen = (ushort)RewardLength.Total;
            rewardPos = (long)rOffset + (rewardLen * rewardInx);

            qStream. SetReaderPosition(rewardPos);

            reward = GetReward(rewardInx);
            if (reward == null) throw new Exception("Invalid zero-based ID of Reward");

            switch (rOffset)
            {
                case RewardOffset.RewardMethod:
                    reward.Method = (RewardMethod)qStream.ReadByte();
                    break;

                case RewardOffset.RewardType:
                    reward.Type = (RewardType)qStream.ReadByte();
                    break;

                case RewardOffset.RewardAmount_ItemID:
                    if (reward.Type == RewardType.Item)
                        reward.ItemID = qStream.ReadUInt16();
                    else reward.Amount = qStream.ReadUInt64();
                    break;

                case RewardOffset.ItemCount:
                    reward.ItemCount = qStream.ReadUInt16();
                    break;
            }
        }

        public void Read(ScriptOffset sOffset)
        {
            qStream.SetReaderPosition((long)sOffset);

            switch (sOffset)
            {
                case ScriptOffset.ScriptStartLen:
                    Script.StartLength = qStream.ReadInt16();
                    break;

                case ScriptOffset.ScriptFinishLen:
                    Script.FinishLength = qStream.ReadInt16();
                    break;

                case ScriptOffset.ScriptActionLen:
                    Script.ActionLength = qStream.ReadInt16();
                    break;

                case ScriptOffset.Script:
                    Read(ScriptType.Start);
                    Read(ScriptType.Finish);
                    Read(ScriptType.Action);
                    break;
            }
        }

        public void Read(ScriptType sType)
        {
            long offset;
            int len;

            offset = (long)ScriptOffset.Script;

            switch (sType)
            {
                case ScriptType.Start:
                    len = Script.StartLength;

                    qStream.SetReaderPosition(offset);
                    Script.Write(ScriptType.Start, qStream.ReadBytes(len));
                    break;

                case ScriptType.Action:
                    offset += Script.StartLength;
                    len = Script.ActionLength;

                    qStream.SetReaderPosition(offset);
                    Script.Write(ScriptType.Action, qStream.ReadBytes(len));
                    break;

                case ScriptType.Finish:
                    offset += Script.StartLength + Script.ActionLength;
                    len = Script.FinishLength;

                    qStream.SetReaderPosition(offset);
                    Script.Write(ScriptType.Finish, qStream.ReadBytes(len));
                    break;
            }
        }

        public void Write(QuestOffset qOffset, object data)
        {
            switch (qOffset)
            {
                case QuestOffset.IsEnabled:
                    IsEnabled = Convert.ToByte(data);
                    break;

                case QuestOffset.IsRepeat:
                    IsRepeatable = Convert.ToByte(data);
                    break;

                case QuestOffset.IsMulti:
                    IsMultiInstance = Convert.ToByte(data);
                    break;

                case QuestOffset.Class:
                    Class = Convert.ToByte(data);
                    break;

                case QuestOffset.IsNeedLevel:
                    IsNeedLevel = Convert.ToByte(data);
                    break;

                case QuestOffset.QuestID:
                    ID = Convert.ToUInt16(data);
                    break;

                case QuestOffset.PrevQuest:
                    Previous = Convert.ToUInt16(data);
                    break;

                case QuestOffset.QuestDataLen:
                    DataLength = Convert.ToUInt32(data);
                    break;

                case QuestOffset.QuestDescript:
                    Description = Convert.ToUInt16(data);
                    break;

                case QuestOffset.QuestTitle:
                    Title = Convert.ToUInt16(data);
                    break;

                case QuestOffset.StartNPC:
                    StartNPC = Convert.ToUInt16(data);
                    break;

                case QuestOffset.MaxLevel:
                    MaximumLevel = Convert.ToByte(data);
                    break;

                case QuestOffset.MinLevel:
                    MinimumLevel = Convert.ToByte(data);
                    break;
            }
        }

        public void Write(ScriptOffset sOffset, short data)
        {
            switch (sOffset)
            {
                case ScriptOffset.ScriptStartLen:
                    Script.StartLength = data;
                    break;

                case ScriptOffset.ScriptFinishLen:
                    Script.FinishLength = data;
                    break;

                case ScriptOffset.ScriptActionLen:
                    Script.ActionLength = data;
                    break;
            }
        }

        public void Write(ScriptType sType, byte[] data)
        {
            switch (sType)
            {
                case ScriptType.Start:
                    Script.Start.Write(data);
                    break;

                case ScriptType.Finish:
                    Script.Finish.Write(data);
                    break;

                case ScriptType.Action:
                    Script.Action.Write(data);
                    break;
            }

            DataLength = Script.Length + (uint)QuestLength.Total;
        }

        public byte[] ToArray()
        {
            qStream.Clear();

            qStream.Write(DataLength);
            qStream.Write(ID);
            qStream.Write(Title);
            qStream.Write(Description);
            qStream.Fill(2);
            qStream.Write(IsRepeatable);
            qStream.Fill(3);
            qStream.Write(IsNeedLevel);
            qStream.Write(MinimumLevel);
            qStream.Write(MaximumLevel);
            qStream.Write(IsEnabled);
            qStream.Write(StartNPC);
            qStream.Fill(24);
            qStream.Write(Previous);
            qStream.Fill(2);
            qStream.Write(IsMultiInstance);
            qStream.Write(Class);
            qStream.Fill(22);

            foreach (QuestMob mob in Mobs)
                qStream.Write(mob.ToArray());

            foreach (QuestItem item in Items)
                qStream.Write(item.ToArray());

            qStream.Write(ItemData);

            foreach (QuestReward reward in Rewards)
                qStream.Write(reward.ToArray());

            qStream.Write(Script.ToArray());

            return qStream.ToArray();
        }

        public QuestMob GetMob(int mobInx)
        {
            return Mobs[mobInx];
        }

        public QuestItem GetItem(int itemInx)
        {
            return Items[itemInx];
        }

        public QuestReward GetReward(int rewardInx)
        {
            return Rewards[rewardInx];
        }

        public void AddNewQuestMob()
        {
            AddQuestMob(new QuestMob());
        }

        public void AddQuestMob(QuestMob mob)
        {
            if (Mobs.Count == MOB_COUNT)
                throw new Exception("Max mob count reached");

            Mobs.Add(mob);
        }

        public void AddNewQuestItem()
        {
            Items.Add(new QuestItem());
        }

        public void AddQuestItem(QuestItem item)
        {
            Items.Add(item);
        }

        public void AddNewQuestReward()
        {
            Rewards.Add(new QuestReward());
        }

        public void AddQuestReward(QuestReward reward)
        {
            Rewards.Add(reward);
        }

        public byte[] ItemData;

        public ushort ID;
        public ushort StartNPC;
        public ushort Title;
        public byte Class;
        public byte MinimumLevel;
        public byte MaximumLevel;
        public ushort Previous;
        public uint DataLength;
        public ushort Description;

        public byte IsEnabled;
        public byte IsNeedLevel;
        public byte IsMultiInstance;
        public byte IsRepeatable;

        public QuestScript Script;

        public List<QuestMob> Mobs;
        public List<QuestItem> Items;
        public List<QuestReward> Rewards;

        private QuestStream qStream;

        public const ushort MOB_COUNT = 5;
        public const ushort ITEM_COUNT = 10;
        public const ushort REWARD_COUNT = 12;
    }
}
