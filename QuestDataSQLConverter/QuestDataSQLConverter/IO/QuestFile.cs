using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuestDataSQLConverter.Object;

namespace QuestDataSQLConverter.IO
{
    public class QuestFile
    {
        public QuestStream pFileStream { get; private set; }
    
        public List<Quest> QuestList { get; private set; }

        public QuestFile(string FileName)
        {

            if (!File.Exists(FileName))
            {
                throw new FileNotFoundException();
            }
            pFileStream = new QuestStream(FileName);
            short QuestFileVersion;
            if (!pFileStream.TryReadInt16(out QuestFileVersion))
            {
                throw new InvalidCastException("Can not Read FileVersion");
            }
            Console.WriteLine("Version "+QuestFileVersion+" found");
        }

        public void ReadQuestsFromFile()
        {
            QuestList = new List<Quest>();

            short QuestCount;
            if (!pFileStream.TryReadInt16(out QuestCount))
            {
                return;
            }

            for (short i = 0; i < QuestCount; i++)
            {
                int QuestDataLenght;
                if(!pFileStream.TryReadInt32(out QuestDataLenght))
                {
                    throw new InsufficientMemoryException();
                }
                Quest pQuest;
                if(!ReadQuest(QuestDataLenght,pFileStream,out pQuest))
                {
                    throw new InsufficientMemoryException();
                }

                QuestList.Add(pQuest);
            }
        }/*
        public bool GetQuestByID(ushort ID,out Quest pQuest)
        {
            if (QuestList.TryGetValue(ID, out pQuest))
                return true;

            return false;
        }
        public void SaveAllQuests()
        {
            foreach(var value in QuestList.Values)
            {
                value.SaveSQL();
            }
        }*/
        private bool ReadQuest(int Datalenght,QuestStream pStream,out Quest pQuest)
        {

            pQuest = null;
 

           if(!Quest.Read(pStream,out pQuest))
            {
                return false;
            }

            pQuest.QuestDataLenght = Datalenght;


            return true;
        }
    }
}
