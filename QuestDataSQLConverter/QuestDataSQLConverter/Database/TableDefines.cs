using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuestDataSQLConverter.Database
{
    public static class TableDefines
    {
        public const string QuestInfo = "IF OBJECT_ID('[QuestInfo]', 'U') IS NULL CREATE TABLE [dbo].[QuestInfo] ("
                                      + "[ID] int NOT NULL ,"
                                      + "[StartNPC] int NOT NULL ,"
                                      + "[TitleID] int NOT NULL ,"
                                      + "[Class] smallint NOT NULL ,"
                                      + "[MinLevel] smallint NOT NULL ,"
                                      + "[MaxLevel] smallint NOT NULL ,"
                                      + "[PreQuest] int NOT NULL ,"
                                      + "[DecryptionID] int NOT NULL ,"
                                      + "[IsEnabled] bit NOT NULL ,"
                                      + "[IsNeedLevel] smallint NOT NULL ,"
                                      + "[IsMulti]  smallint NOT NULL ,"
                                      + "[IsRepeat] smallint NOT NULL ) ON[PRIMARY]";

        public const string QuestRewards = "IF OBJECT_ID('[QuestReward]', 'U') IS NULL CREATE TABLE [dbo].[QuestReward] ("
                                         + "[QuestID] int NOT NULL ,"
                                         + "[Type] smallint NOT NULL ,"
                                         + "[Method] smallint NOT NULL ,"
                                         + "[ItemID]  int NOT NULL ,"
                                         + "[Amount] int NOT NULL ) ON[PRIMARY]";
        public const string QuestMobs = "IF OBJECT_ID('[QuestMob]', 'U') IS NULL CREATE TABLE [dbo].[QuestMob] ("
                                         + "[QuestID] int NOT NULL ,"
                                         + "[IsNPC] bit NOT NULL ,"
                                         + "[IsEnabled] bit NOT NULL ,"
                                         + "[IsToKill] smallint NOT NULL ,"
                                         + "[AmountToKIll] smallint NOT NULL ,"
                                         + "[MobID] int NOT NULL ) ON[PRIMARY]";


        public const string QuestItem = "IF OBJECT_ID('[QuestItem]', 'U') IS NULL CREATE TABLE [dbo].[QuestItem] ("
                                      + "[QuestID] int NOT NULL ,"
                                      + "[Amount]  int NOT NULL ,"
                                      + "[Type] smallint NOT NULL ,"
                                      + "[IsEnabled] bit NOT NULL ,"
                                      + "[ItemID] int NOT NULL ) ON[PRIMARY] ";


        public const string QuestScript = "IF OBJECT_ID('[QuestScript]', 'U') IS NULL CREATE TABLE[dbo].[QuestScript] ("
                                        + "[StartScript] varchar(1) COLLATE Latin1_General_CI_AS NOT NULL,"
                                        + "[ActionScript] varchar(1) COLLATE Latin1_General_CI_AS NOT NULL,"
                                        + "[FinishScript] varchar(1) COLLATE Latin1_General_CI_AS NOT NULL,"
                                        + "[QuestID] int NOT NULL ) ON[PRIMARY]";
    }
}
