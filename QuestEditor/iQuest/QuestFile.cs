/* Author: Csharp - Cedric Van Goethem
 *             (c) 2010
 * -- Fiesta QuestData.Shn Reader --
 */ 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Diagnostics;

namespace iQuest
{
    public class QuestFile
    {
        private FileStream _File;
        private BinaryReader Reader;
        byte[] QuestHeader = new byte[2];
        public List<Quest> Quests = new List<Quest>();

        private byte RewardMax = 10;

        public QuestFile(string path)
        {
            if (!File.Exists(path)) throw new Exception("File does not exists");
            _File = File.Open(path, FileMode.Open);
            Reader = new BinaryReader(_File);
            QuestHeader = Reader.ReadBytes(2);
            short questCount = Reader.ReadInt16();
            for (short i = 0; i < questCount; ++i)
                LoadQuest();
            _File.Dispose();
        }

        public Quest this[ushort ID]{
            get
            {
                foreach (Quest q in Quests)
                    if (q.ID == ID) return q;
                return null;
            }
        }

        private void LoadQuest()
        {
            Quest quest = new Quest(); // data is 592 total
            //quest.DefaultData = Reader.ReadBytes(74);
            ParseDefault(quest);
            //quest.MobData = Reader.ReadBytes(30); // 5* 8
            ParseMobs(quest);
           // quest.ItemData = Reader.ReadBytes(344);
            ParseItems(quest);
            ParseRewards(quest);
          // quest.RewardData = Reader.ReadBytes(144); //2 EXP, 2 Fame, 52 Copper. 
            quest.StartScript = ReadNulledString();
            quest.ActionScript = ReadNulledString();
            quest.FinishScript = ReadNulledString();
            Quests.Add(quest);
        }

        void ParseDefault(Quest quest)
        {
            Reader.ReadUInt32(); //quest lenght
            quest.ID = Reader.ReadUInt16();
            quest.Title = Reader.ReadUInt16();
            quest.Description = Reader.ReadUInt16();
            quest.UnkBytes.Add(1, Reader.ReadBytes(7));

            quest.MinLevel = Reader.ReadByte();
            quest.MaxLevel = Reader.ReadByte();
            quest.UnkBytes.Add(2, Reader.ReadBytes(1));

            quest.StartingNPC = Reader.ReadUInt16();
            quest.UnkBytes.Add(3, Reader.ReadBytes(24));

            quest.Predesessor = Reader.ReadUInt16();
            quest.UnkBytes.Add(4, Reader.ReadBytes(2));

            quest.MultiQuest = Reader.ReadByte();
            quest.NeedClass = Reader.ReadByte();
            quest.UnkBytes.Add(5, Reader.ReadBytes(15));
            quest.NeedLevel = Reader.ReadByte();
            quest.UnkBytes.Add(6, Reader.ReadBytes(6));
        }

        void RestoreDefault(BinaryWriter writer, Quest quest)
        {
            writer.Write(quest.DataLen);
            writer.Write(quest.ID);
            writer.Write(quest.Title);
            writer.Write(quest.Description);
            writer.Write(quest.UnkBytes[1]);

            writer.Write(quest.MinLevel);
            writer.Write(quest.MaxLevel);
            writer.Write(quest.UnkBytes[2]);

            writer.Write(quest.StartingNPC);
            writer.Write(quest.UnkBytes[3]);

            writer.Write(quest.Predesessor);
            writer.Write(quest.UnkBytes[4]);
            writer.Write(quest.MultiQuest);
            writer.Write(quest.NeedClass);
            writer.Write(quest.UnkBytes[5]);
            writer.Write(quest.NeedLevel);
            writer.Write(quest.UnkBytes[6]);
        }

        void ParseRewards(Quest quest)
        {
            for (byte i = 0; i < RewardMax; ++i)
            {
                QuestReward rew = new QuestReward();
                rew.isGiven = Reader.ReadByte();
                rew.Type = (QuestReward.RewardType)Reader.ReadByte();
                rew.unkShort = Reader.ReadUInt16();
                if (rew.Type == QuestReward.RewardType.Item)
                {
                    rew.Value = Reader.ReadUInt16();
                    rew.ItemCount = Reader.ReadUInt16();
                    Reader.ReadBytes(4);
                }
                else
                {
                    rew.Amount = Reader.ReadUInt64();
                }
                if (rew.isGiven > 0) quest.Rewards.Add(rew);
            }
            Reader.BaseStream.Position += 6; //lenghts
            quest.RewardData = Reader.ReadBytes(18); //rest of the shit, unk
        }

        public void SaveFile(string path)
        {
            FileStream stream = File.Create(path);
            BinaryWriter writor = new BinaryWriter(stream);
            writor.Write(QuestHeader);
            writor.Write((short)Quests.Count);
            for (int i = 0; i < Quests.Count; ++i)
            {
                long pos = writor.BaseStream.Position;
                RestoreDefault(writor, Quests[i]); //restores default data
                #region WriteMobs
                byte mobsWritten = 0;
                foreach(Mob monster in Quests[i].Mobs){
                    mobsWritten++;
                    writor.Write((byte)1);
                    writor.Write(Convert.ToByte(monster.isMob));
                    writor.Write(monster.ID);
                    writor.Write(Convert.ToByte(monster.HasToBeKilled));
                    writor.Write(monster.Amount);
                }
                for (int moremobs = 0; moremobs < (5 - mobsWritten); moremobs++)
                    WriteZeros(writor, 6);
                #endregion

                #region WriteItems
                byte itemsWritten = 0;
                foreach (Item item in Quests[i].Items)
                {
                    itemsWritten++;
                    writor.Write((byte)1);
                    writor.Write(item.Type);
                    writor.Write(item.ID);
                    writor.Write(item.Amount);
                }
                for (int notWrittenItems = 0; notWrittenItems < (10 - itemsWritten); notWrittenItems++)
                    WriteZeros(writor, 6);

                writor.Write(Quests[i].ItemData); // fix the missing bytes
                #endregion

                #region WriteRewards
                byte writtenRewards = 0;
                long startpos = writor.BaseStream.Position;
                foreach (QuestReward reward in Quests[i].Rewards)
                {
                    writtenRewards++;
                    writor.Write((byte)reward.isGiven);
                    switch (reward.Type) //type switch
                    {
                        case QuestReward.RewardType.Exp: writor.Write((byte)0); break;
                        case QuestReward.RewardType.Fame: writor.Write((byte)4); break;
                        case QuestReward.RewardType.Item: writor.Write((byte)2); break;
                        case QuestReward.RewardType.Money: writor.Write((byte)1); break;
                    }
                    writor.Write(reward.unkShort);
                    if (reward.Type == QuestReward.RewardType.Item)
                    {
                        writor.Write(reward.Value);
                        writor.Write(reward.ItemCount);
                        WriteZeros(writor, 4);
                    }
                    else
                        writor.Write(reward.Amount);
                }
                for (int missingRewards = 0; missingRewards < (RewardMax - writtenRewards); missingRewards++)
                    WriteZeros(writor, 12);
                long totalf = writor.BaseStream.Position - startpos;

                writor.Write((ushort)(Quests[i].StartScript.Length + 1));
                writor.Write((ushort)(Quests[i].FinishScript.Length + 1));
                writor.Write((ushort)(Quests[i].ActionScript.Length + 1));
                writor.Write(Quests[i].RewardData); //unkpart
                #endregion
                long byteswritten = writor.BaseStream.Position - pos;
                if (byteswritten != 592)
                    throw new Exception("Something went wrong with data lenght!");
                #region Scripts
                WriteNulledString(writor, Quests[i].StartScript);
                WriteNulledString(writor, Quests[i].ActionScript);
                WriteNulledString(writor, Quests[i].FinishScript);
                #endregion
            }
            stream.Close();
            stream.Dispose();
        }

        void ParseItems(Quest quest)
        {
            for (byte i = 0; i < 10; ++i) // and read 2 extra bytes, dunno (;
            {
                Item item = new Item();
                bool isActive = Convert.ToBoolean(Reader.ReadByte());
                item.Type = Reader.ReadByte();
                item.ID = Reader.ReadUInt16();
                item.Amount = Reader.ReadUInt16();
                if (isActive) quest.Items.Add(item);
            }
           quest.ItemData = Reader.ReadBytes(284);
        }

        void ParseMobs(Quest quest)
        {
            // Lenght is 30
            for (int i = 0; i < 5; ++i)
            {
                Mob mob = new Mob(); // 0 = NPC
                bool isActive = Convert.ToBoolean(Reader.ReadByte());
                mob.isMob = Convert.ToBoolean(Reader.ReadByte());
                mob.ID = Reader.ReadUInt16();
                mob.HasToBeKilled = Convert.ToBoolean(Reader.ReadByte());
                mob.Amount = Reader.ReadByte();
                if (isActive) quest.Mobs.Add(mob);
            }
        }

        

        string ReadNulledString()
        {
            byte[] data = new byte[256];
            int index = 0;
            byte b;
            while ((b = Reader.ReadByte()) != 0)
            {
                if (data.Length == index) Array.Resize(ref data, data.Length * 2);
                data[index++] = b;
            }
            return Encoding.ASCII.GetString(data, 0, index);
        }

        void WriteZeros(BinaryWriter writer, int count)
        {
            for (int i = 0; i < count; ++i)
            {
                writer.Write((byte)0);
            }
        }

        void WriteNulledString(BinaryWriter writer, string text)
        {
            writer.Write(Encoding.ASCII.GetBytes(text));
            writer.Write((byte)0);
        }
    }

    public class Quest 
    {
        public List<Mob> Mobs = new List<Mob>();
        public List<QuestReward> Rewards = new List<QuestReward>();
        public List<Item> Items = new List<Item>();

        public ushort ID { get; set; }
        
        public ushort Title { get; set; }
        public ushort Description { get; set; }
        public byte MinLevel { get; set; }
        public byte MaxLevel { get; set; }
        public ushort StartingNPC { get; set; }
        public ushort Predesessor { get; set; }
        public byte NeedLevel { get; set; }
        public byte NeedClass { get; set; }
        public byte MultiQuest { get; set; }

        public Dictionary<byte, byte[]> UnkBytes = new Dictionary<byte, byte[]>();

        public byte[] RewardData { get; set; } // 144b
      //  public byte[] DefaultData { get; set; } //74b
        public byte[] ItemData { get; set; } //344b
      //  public byte[] MobData { get; set; } //30b
        public string StartScript { get; set; }
        public string ActionScript { get; set; }
        public string FinishScript { get; set; }

        public string GetUnkString()
        {
            string tot = "";
            for (int i = 0; i < RewardData.Length - 1; ++i)
            {
                tot += RewardData[i].ToString("X2") + " ";
            }
            tot += RewardData[RewardData.Length - 1].ToString("X2");
            return tot;
        }

        public void SetUnkString(string hex)
        {
            string[] splitted = hex.Split(' ');
            if (splitted.Length != 18) { throw new Exception("Incorrect lenght!"); }
            for (int i = 0; i < splitted.Length; ++i)
            {
                RewardData[i] = byte.Parse(splitted[i], System.Globalization.NumberStyles.HexNumber);
            }
        }

        public uint DataLen {
            get
            {
                uint start = 0;
                start += 592; //default
                start += (uint)StartScript.Length + 1;
                start += (uint)ActionScript.Length + 1;
                start += (uint)FinishScript.Length + 1;
                return start;
            }
        }
    }

    public class Mob
    {
        public ushort ID { get; set; }
        public byte Amount { get; set; }
        public bool isMob { get; set; } // NPC OR MOB
        public bool HasToBeKilled { get; set; }
    }


    public class QuestReward
    {
        public enum RewardType : byte
        {
            Exp = 0,
            Money = 1,
            Item = 2,
            Fame = 4,
        }
        public RewardType Type { get; set; }
        public ushort unkShort { get; set; }
        public ushort Value { get; set; }
        public ushort ItemCount { get; set; }
        public ulong Amount { get; set; }
        public byte isGiven { get; set; } //02 = choose, 00 = disabled, 01 = fixed
    }

    public class Item
    {
        public byte Type { get; set; }
        public ushort ID { get; set; }
        public ushort Amount { get; set; }
    }
}
