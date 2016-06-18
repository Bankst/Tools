using System;
using System.Collections.Generic;
using System.IO;

namespace QuestEditor
{
    public class QuestFile
    {
        public QuestFile(string path)
        {
            FilePath = path;
            Load(path);
        }

        public QuestFile()
        {
            FileHeader = new byte[] { 0x04, 0x00, 0x00, 0x00 };
            QuestCount = 0;

            Quests = new List<Quest>();
            qStream = new QuestStream(FileHeader);
        }

        public void Load(string path)
        {
            MemoryStream fileData;
            FileStream file;

            file = new FileStream(path, FileMode.Open);
            fileData = new MemoryStream();
            file.CopyTo(fileData);
            file.Close();

            qStream = new QuestStream(fileData.ToArray());
            Quests = new List<Quest>();

            Read(MainOffset.Header);
            Read(MainOffset.QuestCount);
            Read(MainOffset.Quests);
        }

        public void Save(string path)
        {
            File.WriteAllBytes(path, ToArray());
        }

        public void AddQuest(Quest quest)
        {
            if (GetQuest(quest.ID) != null)
                throw new Exception("Quest ID is already taken");

            Quests.Add(quest);
            QuestCount++;
        }

        public void RemoveQuest(Quest quest)
        {
            Quests.Remove(quest);
            QuestCount--;
        }

        public void RemoveQuest(int questID)
        {
            RemoveQuest(GetQuest(questID));
        }

        public bool QuestExists(int questID)
        {
            if (GetQuest(questID) == null)
                return false;
            else return true;
        }

        public Quest GetQuest(int questID)
        {
            Quest quest = Quests.Find(q => q.ID == questID);
            if (quest == null) return null;
            return quest;
        }

        public QuestMob GetQuestMob(int questID, int mobInx)
        {
            return GetQuest(questID).GetMob(mobInx);
        }

        public byte[] ToArray()
        {
            qStream.Clear();

            qStream.Write(FileHeader);

            qStream.SetWriterPosition((long)MainOffset.QuestCount);
            qStream.Write(QuestCount);

            foreach (Quest quest in Quests)
                qStream.Write(quest.ToArray());

            return qStream.ToArray();
        }

        public void Write(QuestOffset qOffset, Quest quest, object data)
        {
            quest.Write(qOffset, data);
        }

        public void Write(QuestOffset qOffset, int questID, object data)
        {
            Write(qOffset, GetQuest(questID), data);
        }

        public long Length
        {
            get
            {
                return qStream.Length;
            }
        }

        public void Close()
        {
            qStream.Close();
        }

        private void Read(MainOffset mOffset)
        {
            switch (mOffset)
            {
                case MainOffset.Header:
                    qStream.SetReaderPosition((long)MainOffset.Header);
                    FileHeader = qStream.ReadBytes((int)MainLength.Header);
                    break;

                case MainOffset.QuestCount:
                    qStream.SetReaderPosition((long)MainOffset.QuestCount);
                    QuestCount = qStream.ReadUInt16();
                    break;

                case MainOffset.Quests:
                    ReadQuests();
                    break;
            }
        }

        private void Write(MainOffset mOffset, object data)
        {
            switch (mOffset)
            {
                case MainOffset.Header:
                    if (((byte[])data).Length > 4)
                        throw new Exception("Header too long");

                    qStream.SetWriterPosition((long)MainOffset.Header);
                    qStream.Write((byte[])data);
                    Read(MainOffset.QuestCount);
                    break;

                case MainOffset.QuestCount:
                    qStream.SetReaderPosition((long)MainOffset.QuestCount);
                    qStream.Write((ushort)data);
                    Read(MainOffset.Header);
                    break;
            }
        }

        private void ReadQuests()
        {
            int questOffset = (int)MainLength.Header;

            for (int inxQuest = 0; inxQuest < QuestCount; inxQuest++)
            {
                byte[] questData;
                int questLength;

                if (inxQuest > 0)
                {
                    Quest prevQuest = Quests[inxQuest - 1];
                    questOffset += (int)prevQuest.DataLength;
                }

                qStream.SetReaderPosition(questOffset);
                questLength = GetQuestLength(questOffset);
                questData = qStream.ReadBytes(questLength);

                AddNewQuest(questData);
            }
        }

        private void AddNewQuest(byte[] data)
        {
            Quests.Add(new Quest(data));
        }

        private int GetQuestLength(int questOffset)
        {
            ushort questLength;
            long initialPos;

            initialPos = qStream.GetReaderPosition();

            qStream.SetReaderPosition(questOffset);
            questLength = qStream.ReadUInt16();
            qStream.SetReaderPosition(initialPos);

            return questLength;
        }

        private int GetQuestLength(Quest quest)
        {
            return (int)quest.DataLength;
        }

        public string FilePath;
        public ushort QuestCount;
        public List<Quest> Quests;
        private QuestStream qStream;
        public static byte[] FileHeader;
    }
}
