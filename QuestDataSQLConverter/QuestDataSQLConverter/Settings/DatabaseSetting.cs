using System.Xml.Serialization;

namespace QuestDataSQLConverter.Settings
{
    public class DatabaseSetting : XmlSerializer<DatabaseSetting>
    {
        [XmlIgnore]
        public static DatabaseSetting Instance;

        
        public string SQLUser { get; set; }

        public string SQLPassword { get; set; }

        public string SQLHost { get; set; }

        public string SQLDB { get; set; }

        

    }
}
