using System.Collections.Generic;
using QuestDataSQLConverter.IO;
using QuestDataSQLConverter.Database;

namespace QuestDataSQLConverter.Object
{
    public class Quest
    {

        public QuestInfo pInfo { get; set; }
        public QuestScript Script { get; private set; }

        public List<QuestMob> Mobs { get; private set; }
        public List<QuestItem> Items { get; private set; }
        public List<QuestReward> Rewards { get; private set; }
        public int QuestDataLenght { get; set; }

    public const ushort MOB_COUNT = 5;
        public const ushort ITEM_COUNT = 10;
        public const ushort REWARD_COUNT = 12;


        public  static bool Read(QuestStream pStream,out Quest pQuest)
        {
            pQuest = new Quest();

            QuestInfo pInf;
            if (!QuestInfo.Read(pStream,out pInf))
            {
                return false;
            }
            pQuest.pInfo = pInf;
           
            if (!pQuest.LoadAllMobs(pStream))
            {
                return false;
            }
            if (!pQuest.LoadAllItems(pStream))
            {
                return false;
            }

            if (!pQuest.LoadAllRewards(pStream))
            {
                return false;
            }
            if (!pQuest.LoadScript(pStream))
            {
                return false;
            }
            return true;
        }
        public bool LoadScript(QuestStream pStream)
        {
            QuestScript pScript;
            if (!QuestScript.Read(pStream, out pScript))
                return false;

            this.Script = pScript;

            return true;
        }
        public bool LoadAllMobs(QuestStream pStream)
        {
            Mobs = new List<QuestMob>();
            for (int inxMob = 0; inxMob < MOB_COUNT; inxMob++)
            {
                QuestMob pMob;
                if (!QuestMob.Read(pStream, out pMob))
                    return false;

                Mobs.Add(pMob);
            }
            return true;
        }

        public bool LoadAllItems(QuestStream pStream)
        {
            Items = new List<QuestItem>();
            for (int inxItem = 0; inxItem < ITEM_COUNT; inxItem++)
            {
                QuestItem pItem;
                if (!QuestItem.Read(pStream, out pItem))
                    return false;

                Items.Add(pItem);
            }

            byte[] ItemData;
            if(!pStream.TryReadBytes(out ItemData,284))
            {
                return false;
            }

            return true;
        }
        public static void CheckTables()
        {
            //CheckTable exis when not then create
            DatabaseManager.RunSQL(TableDefines.QuestInfo);
            DatabaseManager.RunSQL(TableDefines.QuestItem);
            DatabaseManager.RunSQL(TableDefines.QuestMobs);
            DatabaseManager.RunSQL(TableDefines.QuestRewards);
            DatabaseManager.RunSQL(TableDefines.QuestScript);
        }
        public void SaveSQL()
        {
            pInfo.SaveSQL();
            foreach(var m in Mobs)
            {
                m.SaveSQL(pInfo.ID);
            }
            foreach(var Items in Items)
            {
                Items.SaveSQL(pInfo.ID);
            }
            foreach(var reward in Rewards)
            {
                reward.SaveSQL(pInfo.ID);
            }
            //Script.SaveSQL(pInfo.ID);
        }
        public bool LoadAllRewards(QuestStream pStream)
        {
            Rewards = new List<QuestReward>();
            for (int inxReward = 0; inxReward < REWARD_COUNT; inxReward++)
            {
                QuestReward reward;
                if(!QuestReward.Read(pStream,out reward))
                {
                    return false;
                }
                Rewards.Add(reward);
            }
            if (!pStream.ReadSkip(18))//itemData
            {
                return false;
            }
            return true;
        }
    }
}
