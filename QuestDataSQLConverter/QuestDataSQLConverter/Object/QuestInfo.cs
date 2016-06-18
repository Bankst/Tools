using QuestDataSQLConverter.IO;
using System;
namespace QuestDataSQLConverter.Object
{
    public class QuestInfo
    {

        public ushort ID { get;  set; }
        public ushort StartNPC { get; private set; }
        public ushort Title { get; private set; }
        public byte Class { get; private set; }
        public byte MinimumLevel { get; private set; }
        public byte MaximumLevel { get; private set; }
        public ushort Previous { get; private set; }
        public uint DataLength { get; private set; }
        public ushort Description { get; private set; }

        public byte IsEnabled { get; private set; }
        public byte IsNeedLevel { get; private set; }
        public byte IsMultiInstance { get; private set; }
        public byte IsRepeatable { get; private set; }

        public void SaveSQL()
        {
            string SQL = "INSERT INTO QuestInfo (ID,StartNPC,TitleID,Class,MinLevel,MaxLevel,PreQuest,DecryptionID,IsEnabled,IsNeedLevel,IsMulti,IsRepeat) VALUES"
                + "('" + ID + "','" + StartNPC + "','" + Title + "','" + Class + "','" + MinimumLevel + "','" + MaximumLevel + "','" + Previous + "','" + Description + "','" + Convert.ToByte(IsEnabled) + "','" + Convert.ToByte(IsNeedLevel) + "','" + Convert.ToByte(IsMultiInstance) + "','" + Convert.ToByte(IsRepeatable) + "')";

            DatabaseManager.RunSQL(SQL);
        }
        public static bool Read(QuestStream pStream, out QuestInfo pinfo)
        {
            ushort pID;
            pinfo = null;
            ushort pTitleID;
            ushort pDecryption;
            byte pRepeat;
            byte pLevelbase;
            byte pMinLevel, pMaxLevel;
            byte pIsEnable;
            ushort pStartingNPC;
            ushort pPrevious;
            byte pIsMultiInstance;
            byte pClass;
         
            if (!pStream.TryReadUInt16(out pID)) { return false; }

            if (!pStream.TryReadUInt16(out pTitleID)) { return false; }

            if (!pStream.TryReadUInt16(out pDecryption)) { return false; }

            if (!pStream.ReadSkip(2)) { return false; }

                 if (!pStream.TryReadByte(out pRepeat)) { return false; }

               if (!pStream.ReadSkip(3)) { return false; }

            if (!pStream.TryReadByte(out pLevelbase)) { return false; }

            if (!pStream.TryReadByte(out pMinLevel) || !pStream.TryReadByte(out pMaxLevel)) { return false; }

            if (!pStream.TryReadByte(out pIsEnable)) { return false; }

            if (!pStream.TryReadUInt16(out pStartingNPC)) { return false; }

            if (!pStream.ReadSkip(24)) { return false; }

            if (!pStream.TryReadUInt16(out pPrevious)) { return false; }

            if (!pStream.ReadSkip(2)) { return false; }

            if (!pStream.TryReadByte(out pIsMultiInstance)) { return false; }

            if (!pStream.TryReadByte(out pClass)) { return false; }

            if (!pStream.ReadSkip(22)) { return false; }

    
            pinfo = new QuestInfo
            {
                ID = pID,
                Title = pTitleID,
                Description = pDecryption,
                MinimumLevel = pMinLevel,
                MaximumLevel = pMinLevel,
                IsEnabled = pIsEnable,
                StartNPC = pStartingNPC,
                Previous = pPrevious,
                IsMultiInstance = pIsMultiInstance,
                IsNeedLevel = pLevelbase,
                IsRepeatable = pRepeat,
                Class = pClass,
                
            };
            return true; ;
        }


    }
}
