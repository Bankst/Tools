using QuestDataSQLConverter.IO;
using System.Data.SqlClient;

namespace QuestDataSQLConverter
{
    public class QuestScript
    {
        public short StartLength { get; private set; }
        public short FinishLength { get; private set; }
        public short ActionLength { get; private set; }

        public string ActionScript { get; private set; }
        public string StartScript { get; private set; }
        public string FinishScript { get; private set; }
        //        public QuestStream Start;
        //      public QuestStream Finish;
        //    public QuestStream Action;

    //    public byte[] ScriptData { get; private set; }

        public const byte Seperator = 00;

        public void SaveSQL(ushort QuestID)
        {
            string SQL = "INSERT INTO QuestScript (StartScript,ActionScript,FinishScript,QuestID) VALUES"
                + "('@StartScp','@Actionscp','@FinishScp','@QuestID')";
            DatabaseManager.RunSQL(SQL, new SqlParameter("StartScp", StartScript), new SqlParameter("Actionscp", ActionScript), new SqlParameter("FinishScp", FinishScript), new SqlParameter("QuestID", 1));


        }
        public static bool Read(QuestStream qStream,out QuestScript pScript)
        {
            pScript = null;
            short pStartScpLenght;
            short pfinishLenght;
            short pActionLenght;
            string pActionScript;
            string pFinishScript;
            string pStartScript;
            if(!qStream.TryReadInt16(out pStartScpLenght))
            {
                return false;
            }
            if (!qStream.TryReadInt16(out pfinishLenght))
            {
                return false;
            }
            if (!qStream.TryReadInt16(out pActionLenght))
            {
                return false;
            }

            if(!qStream.TryReadNulledString(out pStartScript))
            {
                return false;
            }

            if(!qStream.TryReadNulledString(out pFinishScript))
            {
                return false;
            }
            if(!qStream.TryReadNulledString(out pActionScript))
            {
                return false;
            }

            pScript = new QuestScript
            {
                ActionLength = pActionLenght,
                FinishLength = pfinishLenght,
                StartLength = pStartScpLenght,
                ActionScript = pActionScript,
                FinishScript = pFinishScript,
                StartScript = pStartScript,

            };
            
            return true;
        }
    }
}
