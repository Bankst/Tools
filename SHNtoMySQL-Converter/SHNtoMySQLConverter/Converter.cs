using System;
using System.Data;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SHNtoMySQLConverter.SHN;
using SHNtoMySQLConverter;
using System.IO;

namespace SHNtoMySQLConverter
{
    class Converter
    {
        public string getTables(SHNFile file)
        {
            string tables = "";
            for (int j = 0; j < file.ColumnCount; ++j)
            {
                tables += (((SHNColumn)file.Columns[j]).ColumnName);
                if (j < file.ColumnCount - 1) tables += ",";
            }

            return FormatBuilder(tables);
        }
        /*
        DROP TABLE IF EXISTS `data_iteminfo`;
        CREATE TABLE `data_iteminfo` (`ID` smallint(5) unsigned NOT NULL,next,  PRIMARY KEY (`ID`),) ENGINE=InnoDB DEFAULT CHARSET=utf8;
        */
        public bool MakeTable(SHNFile file, string newtable, bool nokey)
        {
            //types = "'"+file.Columns[x].ColumnName+"' int(11) unsigned NOT NULL, TypeByte: "+((SHNColumn)file.Columns[x]).TypeByte;
            /* short = smallint
             * ushort = smallint UNSIGNED
             * sbyte = tinyint
             * byte = tinyint UNSIGNED
             * int = int
             * uint = int UNSIGNED
             * long = bigint
             * ulong = bigint unsigned
             * float = float
             * double = double
             * decimal = decimal

             * Int16 -> short
             * Int32 -> int  
             * Int64 -> long 
*/

            string types = "CREATE TABLE " + newtable + " (";
            for (int x = 0; x < file.ColumnCount; ++x)
            {
                types += FormatBuilder(file.Columns[x].ColumnName) + ((SHNColumn)file.Columns[x]).MYSQLType;
                if (x < file.ColumnCount - 1) types += ",";
                //                types += (((SHNColumn)file.Columns[x]).GetType())+" - ";
                //if (x < file.ColumnCount-1) tables += ",";
                //Console.WriteLine(file.Columns[x].ColumnName.Replace(" ", "") + ((SHNColumn)file.Columns[x]).MYSQLType + "TypeByte: " + ((SHNColumn)file.Columns[x]).TypeByte);
            }
            if (((SHNColumn)file.Columns[0]).TypeByte != 24 && ((SHNColumn)file.Columns[0]).TypeByte != 26 && ((SHNColumn)file.Columns[0]).TypeByte != 9 && file.FileName != "QuestDialog.shn" && file.FileName != "BasicInfoLink.shn" && (!nokey)) types += ",PRIMARY KEY (" + FormatBuilder(file.Columns[0].ColumnName) + ")";
            types += ")ENGINE=InnoDB DEFAULT CHARSET=utf8;";
            string text = "Dropping/Building table : [" + newtable + "] ...";
            Console.Write(text);
            Database.DatabaseHelper.Instance.runSQL("DROP TABLE IF EXISTS " + newtable + "");
            //Log.Write(LogLevel.Info, types);
            if (Database.DatabaseHelper.Instance.runSQL(types)) Console.WriteLine("\r" + text + " done"); else { Log.Writer.Write(" failed"); return false; }


            return true;
        }

        public string FormatBuilder(string text)
        {
            return text.Replace(" ", "")
                        .Replace("First", "First_")
                        .Replace("Range", "Range_")
                        .Replace("INDEX", "INDEX_")
                        .Replace("Index", "Index_")
                        .Replace("INT", "INT_")
                        .Replace("Desc", "Description")
                        .Replace("Text", "Text_")
                        .Replace("From", "From_")
                        .Replace("To", "To_");
        }
        public string getData(SHNFile file, int index)
        {
            object[] data = new object[file.Rows.Count + 2];
            file.Rows.CopyTo(data, 1);
            string daten = "'";
            int z = 0;
            DataRow row = file.Rows[index];
            foreach (object item in row.ItemArray)
            {
                z++;
                daten += ConvertToUTF8("" + item);
                if (z < file.ColumnCount) daten += "','"; else daten += "'";
            }

            return daten.Replace("-", "");
        }

        public string ConvertToUTF8(string text)
        {
            var utf8String = Encoding.UTF8.GetBytes(text);
            return Encoding.UTF8.GetString(utf8String).Replace("'", "");
        }

        public bool SendtoDB(SHNFile file, int inx, string table)
        {
            //Log.WriteLine(LogLevel.Info, "VALUES (" + getData(file, inx) + ")");
            if (Database.DatabaseHelper.Instance.runSQL("INSERT INTO " + table + " (" + getTables(file) + ") VALUES (" + getData(file, inx) + ")"))
            {
                return true;
            }
            return false;
        }

        public void Convert(string filename, string table, bool nokey)
        {

            bool useSameTableNameAsFile = true;
            if (!File.Exists(filename)) { Console.WriteLine("{0} doesn't exists ... skipping!", filename); return; }
            SHNFile file = new SHNFile(filename);
            int count = 0;
            MakeTable(file, useSameTableNameAsFile ? filename.Replace(".shn","") : table, nokey);
            

            for (int inx = 0; inx < file.Rows.Count; inx++)
            {
                if (SendtoDB(file, inx, useSameTableNameAsFile ? filename.Replace(".shn", "") : table)) count++;
                Console.Write("\rImporting [{3}] to Database : {0}% [{1}/{2}]", (int)((inx + 1) / (double)file.Rows.Count * 100), inx + 1, file.Rows.Count, file.FileName);
                
                if (count == file.Rows.Count)
                {
                    Console.ForegroundColor = ConsoleColor.Green;
                    Console.WriteLine("\rImporting [{3}] to Database : {0}% [{1}/{2}] ... done", (int)((inx + 1) / (double)file.Rows.Count * 100), inx + 1, file.Rows.Count, file.FileName);
                    Console.ForegroundColor = ConsoleColor.White;                    
                }
                else if (inx == file.Rows.Count && count != file.Rows.Count)
                {
                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.WriteLine("\rImporting [{3}] to Database : {0}% [{1}/{2}] ... failed", (int)((inx + 1) / (double)file.Rows.Count * 100), inx + 1, file.Rows.Count, file.FileName);
                    Console.ForegroundColor = ConsoleColor.White;
                }
                
            }
        }

        public void BuildSpawnInfoTable()
        {
            string newtable = "CREATE TABLE `spawnpoints` (" +
                    "`ID` int(11) NOT NULL AUTO_INCREMENT," +
                    "`MobID` smallint(6) NOT NULL," +
                    "`MapID` smallint(6) NOT NULL," +
                    "`PosX` int(11) NOT NULL," +
                    "`PosY` int(11) NOT NULL," +
                    "`Rotation` int(11) NOT NULL," +
                    "PRIMARY KEY (`ID`)" +
                  ") ENGINE=InnoDB DEFAULT CHARSET=latin1;";

            string text = "Dropping/Building table : [spawnpoints] ...";
            Console.Write(text);
            Database.DatabaseHelper.Instance.runSQL("DROP TABLE IF EXISTS spawnpoints");
            //Log.Write(LogLevel.Info, types);
            if (Database.DatabaseHelper.Instance.runSQL(newtable))
                Console.WriteLine("\r" + text + " done");
            else Log.Writer.Write(" failed");  

            SQLResult res = Database.DatabaseHelper.Instance.Select("SELECT * from mobcoordinate");
            List<SpawnInfo>SpawnInfos = new List<SpawnInfo>();
            int rotcount = 0;
            for (int i = 0; i < res.Count; i++)    
            {
                string MapNameToID = string.Format("SELECT ID from mapinfo WHERE MapName ='{0}'",res.Read<string>(i, "MapName"));
                string directToRotation = string.Format("SELECT Direct from shinenpc WHERE MobID ='{0}' AND Map ='{1}'", res.Read<UInt16>(i, "Mob_ID"), res.Read<string>(i, "MapName"));
                byte rotation = 0;

                int Direct = Database.DatabaseHelper.Instance.Select(directToRotation).Count >0 ? Database.DatabaseHelper.Instance.Select(directToRotation).Read<Int32>(0, "Direct") : 0;

                if (Direct < 0)
                {
                    rotation = (byte)((360 + Direct) / 2);
                }
                else
                {
                    rotation = (byte)(Direct / 2);
                }

                if (Direct != 0)
                    rotcount++;
                var info = new SpawnInfo
                {
                    MobID = res.Read<UInt16>(i, "Mob_ID"),
                    MapID = Database.DatabaseHelper.Instance.Select(MapNameToID).Read<UInt16>(0, "ID"),
                    X = res.Read<UInt16>(i, "CenterX"),
                    Y = res.Read<UInt16>(i, "CenterY"),
                    Rot = rotation
                };

                SpawnInfos.Add(info);
            };

            Log.WriteLine(LogLevel.Info,"Sucessfully added {0} SpawnInfos ! RotationCount: {1}",SpawnInfos.Count, rotcount);

            int succ_count = 0;
            int count = 0;

            foreach (SpawnInfo spawn in SpawnInfos)
            {
                string sqlString = "INSERT INTO spawnpoints (MobID,MapID,PosX,PosY,Rotation)" +
                                   "VALUES (" 
                                   + spawn.MobID + "," 
                                   + spawn.MapID + "," 
                                   + spawn.X + "," 
                                   + spawn.Y + "," 
                                   + spawn.Rot + ")";

                if (Database.DatabaseHelper.Instance.runSQL(sqlString)) 
                    succ_count++;
                Console.Write("\rImporting [{3}] to Database : {0}% [{1}/{2}]", (int)((count) / (double)SpawnInfos.Count * 100), count + 1, SpawnInfos.Count, "SpawnPoints");

                if (succ_count == SpawnInfos.Count)
                {
                    Console.ForegroundColor = ConsoleColor.Green;
                    Console.WriteLine("\rImporting [{3}] to Database : {0}% [{1}/{2}] ... done", (int)((count) / (double)SpawnInfos.Count * 100), count + 1, SpawnInfos.Count, "SpawnPoints");
                    Console.ForegroundColor = ConsoleColor.White;
                }
                else if (count == SpawnInfos.Count && succ_count != SpawnInfos.Count)
                {
                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.WriteLine("\rImporting [{3}] to Database : {0}% [{1}/{2}] ... failed", (int)((count) / (double)SpawnInfos.Count * 100), count + 1, SpawnInfos.Count, "SpawnPoints");
                    Console.ForegroundColor = ConsoleColor.White;
                }
                count++;
              
            }
            Log.WriteLine(LogLevel.Info, "Sucessfully completed !");

        }

        public void BuildGateInfoTable()
        {
            string sqlstring = "CREATE TABLE `gateinfo` (" +
                                  "`SpawnID` int(11) NOT NULL," +
                                  "`GateName` varchar(11) NOT NULL," +
                                  "`MapToName` varchar(255) NOT NULL," +
                                  "`ToPosX` smallint(6) NOT NULL," +
                                  "`ToPosY` smallint(6) NOT NULL," +
                                  "`Direct` smallint(6) NOT NULL," +
                                  "`MinLevel` smallint(6) NOT NULL," +
                                  "`MaxLevel` smallint(6) NOT NULL," +
                                  "`Party` tinyint(4) NOT NULL" +
                                ") ENGINE=InnoDB DEFAULT CHARSET=latin1;";

            string text = "Dropping/Building table : [gateinfo] ...";
            Console.Write(text);
            Database.DatabaseHelper.Instance.runSQL("DROP TABLE IF EXISTS gateinfo");
            //Log.Write(LogLevel.Info, types);
            if (Database.DatabaseHelper.Instance.runSQL(sqlstring))
                Console.WriteLine("\r" + text + " done");
            else Log.Writer.Write(" failed");

            SQLResult res = Database.DatabaseHelper.Instance.Select("SELECT * from linktable");
            List<GateInfo> GateInfos = new List<GateInfo>();


            for (int i = 0; i < res.Count; i++)
            {

                var info = new GateInfo
                {
                    gSpawnID = 1,
                    gGateName = res.Read<string>(i, "GateName"),
                    gMapToName = res.Read<string>(i, "MapClient"),
                    gToPosX = res.Read<UInt16>(i, "Coord_X"),
                    gToPosY = res.Read<UInt16>(i, "Coord_Y"),
                    gDirection = res.Read<int>(i, "Direct"),
                    gMinLevel = res.Read<UInt16>(i, "LevelFrom"),
                    gMaxLevel = res.Read<UInt16>(i, "LevelTo"),
                    gParty = res.Read<UInt16>(i, "Party"),
                    
                };

                GateInfos.Add(info);
            };

            Log.WriteLine(LogLevel.Info, "Sucessfully added {0} GateInfos !", GateInfos.Count);

            int succ_count = 0;
            int count = 0;

            foreach (GateInfo gate in GateInfos)
            {
                string gateString = "INSERT INTO gateinfo (SpawnID,GateName,MapToName,ToPosX,ToPosY,Direct,MinLevel,MaxLevel,Party)" +
                                   "VALUES ("
                                   + gate.gSpawnID + ","
                                   +" \""+ gate.gGateName +"\","
                                   + " \"" + gate.gMapToName + "\","
                                   + gate.gToPosX + ","
                                   + gate.gToPosY + ","
                                   + gate.gDirection + ","
                                   + gate.gMinLevel + ","
                                   + gate.gMaxLevel + ","
                                   + gate.gParty + ")";

                if (Database.DatabaseHelper.Instance.runSQL(gateString))
                    succ_count++;

                Console.Write("\rImporting [{3}] to Database : {0}% [{1}/{2}]", (int)((count) / (double)GateInfos.Count * 100), count + 1, GateInfos.Count, "GateInfo");

                if (succ_count == GateInfos.Count)
                {
                    Console.ForegroundColor = ConsoleColor.Green;
                    Console.WriteLine("\rImporting [{3}] to Database : {0}% [{1}/{2}] ... done", (int)((count) / (double)GateInfos.Count * 100), count + 1, GateInfos.Count, "GateInfo");
                    Console.ForegroundColor = ConsoleColor.White;
                }
                else if (count == GateInfos.Count && succ_count != GateInfos.Count)
                {
                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.WriteLine("\rImporting [{3}] to Database : {0}% [{1}/{2}] ... failed", (int)((count) / (double)GateInfos.Count * 100), count + 1, GateInfos.Count, "GateInfo");
                    Console.ForegroundColor = ConsoleColor.White;
                }
                count++;

            }
            Log.WriteLine(LogLevel.Info, "Sucessfully completed !");

        }

        public void MainConvert()
        {

            Log.SetLogToFile(Path.GetDirectoryName(Process.GetCurrentProcess().MainModule.FileName) + "//Log/DBError.txt");
            Convert("MapInfo.shn", "data_mapinfo", false);
/*
            Convert("AbState.shn", "data_abstate", false);
            Convert("ActionEffectInfo.shn", "data_actioneffectinfo", false);
            Convert("ActiveSkill.shn", "data_activeskill", true);
            Convert("ActiveskillGroup.shn", "activeskillgroup", false);
            Convert("AttendReward.shn", "data_attendreward", false);
            Convert("BadNameFilter.shn", "data_badnamefilter", false);
            Convert("BelongTypeInfo.shn", "data_belongtypeinfo", false);
            Convert("CharacterTitleData.shn", "data_charactertitle", false);
            Convert("ChargedEffect.shn", "data_chargedeffect", false);
            Convert("ChargedIconItem.shn", "data_chargedIconItem", false);
            Convert("ChargedMessageItem.shn", "data_chargedmessageitem", false);
            Convert("ChrCreateEquip.shn", "chrcreateequip", false);
            Convert("ClassName.shn", "classname", false);
            Convert("ClassName.shn", "data_classname", false);
            Convert("CollectCard.shn", "collectcard", false);
            Convert("CollectCardReward.shn", "collectcardreward", false);
            Convert("CollectCardTitle.shn", "collectcardtitle", false);
            Convert("DamageEffect.shn", "data_damageeffect", false);
            Convert("DiceDividind.shn", "data_dicedividind", false);
            Convert("GBDiceDividind.shn", "data_gbdicedividind", false);
            Convert("GBHouse.shn", "data_gbhouse", false);
            Convert("Gather.shn", "data_gather", true);
            Convert("GradeItemOption.shn", "data_gradeitemoption", false);
            Convert("GradeItemOption.shn", "gradeitemoption", false);
            Convert("GuildGradeData.shn", "data_guildgrade", true);
            Convert("GuildTournamentRequire.shn", "data_guildtournamentrequire", false);
            Convert("GuildTournamentSkill.shn", "data_guildtournamentskill", true);
            Convert("ItemAction.shn", "itemaction", true);
            Convert("ItemDismantle.shn", "data_itemdismantle", false);
            Convert("ItemDismantle.shn", "itemdismantle", false);
            Convert("ItemInfoServer.shn", "data_iteminfoserver", false);
            Convert("ItemMoney.shn", "itemmoney", false);
            Convert("ItemShop.shn", "data_itemshop", true);
            Convert("ItemUseEffect.shn", "data_itemuseeffect", false);

            Convert("MHEmotion.shn", "data_mhemotion", true);
            Convert("MapInfo.shn", "data_mapinfo", false);
            Convert("MapLinkPoint.shn", "data_maplinkpoint", true);
            Convert("MapWayPoint.shn", "data_mapwaypoint", true);
            Convert("MiniHouse.shn", "data_minihouse", false);
            Convert("MiniHouseDummy.shn", "data_minihousedummy", false);
            Convert("MiniHouseEndure.shn", "data_minihouseendure", false);
            Convert("MiniHouseFurniture.shn", "data_minihousefurniture", false);
            Convert("MiniHouseFurnitureObjEffect.shn", "data_minihousefurnitureobjeffect", false);
            Convert("MobCoordinate.shn", "data_mobcoordinate", false);
            Convert("MobInfo.shn", "data_mobinfo", false);
            Convert("MobNoFadeIn.shn", "mobnofadein", false);
            Convert("MobSpecies.shn", "data_mobspecies", false);
            Convert("MoverAbility.shn", "moverability", false);
            Convert("MoverHG.shn", "moverhg", false);
            Convert("MoverItem.shn", "moveritem", false);
            Convert("MoverMain.shn", "movermain", false);
            Convert("MoverSlotView.shn", "moverslotview", false);
            Convert("MoverUseSkill.shn", "moveruseskill", false);
            Convert("MoverView.shn", "moverview", false);
            Convert("PSkillSetAbState.shn", "itemaction", false);
            Convert("PassiveSkill.shn", "data_passiveskill", false);
            Convert("Produce.shn", "data_produce", false);
            
            Convert("RaceNameInfo.shn", "data_racenameinfo", false);
            Convert("Riding.shn", "data_riding", false);
            Convert("SetEffect.shn", "seteffect", false);
            Convert("SetItem.shn", "data_setitem", false);
            Convert("SetItemEffect.shn", "data_setitemeffect", false);
            Convert("SetItemName.shn", "setitemname", false);
            Convert("SingleData.shn", "singledata", false);
            Convert("SlanderFilter.shn", "data_slanderfilter", false);
            Convert("SubAbState.shn", "data_subabstate", true);
            Convert("ToggleSkill.shn", "toogleskill", false);
            Convert("TownPortal.shn", "data_townportal", true);
            Convert("UpEffect.shn", "data_upeffect", false);
            Convert("UpEffect.shn", "upeffect", false);
            Convert("UpgradeInfo.shn", "data_upgradeinfo", false);
            Convert("WeaponAttrib.shn", "data_weaponattrib", false);
            Convert("WeaponTitleData.shn", "data_weapontitle", true);
            Convert("Wedding.shn", "wedding", false);
*/

          //  BuildGateInfoTable();
            //Convert("ItemActionCondition.shn", "itemactioncondition", false); //don't works
            //Convert("ItemActionEffect.shn", "itemactioneffect", false); //don't works

            // QuestData.shn is no SHN - it's a script - skipping
            //Convert("AbStateView.shn", "data_abstateview",false);
            //Convert("ActiveSkillView.shn", "data_activeskillview",false);
            //Convert("BasicInfoHelp.shn", "data_basicinfohelp",false);
            //Convert("BasicInfoLink.shn", "data_basicinfolink",false);
            //Convert("BasicInfoTip.shn", "data_basicinfotip",false);
            //Convert("BasicInfoTipCycle.shn", "data_basicinfotipcycle",false);
            //Convert("BasicInfoTitle.shn", "data_basicinfotitle",false);
            //Convert("CharacterTitleStateView.shn", "data_charactertitlestateview",true);
            //Convert("ColorInfo.shn", "colorinfo", false);
            //Convert("DamageSoundInfo.shn", "data_damagesoundinfo",false);
            //Convert("EffectViewInfo.shn", "data_effectviewinfo",false);
            //Convert("EmotionFilter.shn", "data_emotionfilter",false);
            //Convert("ErrorCodeTable.shn", "data_errorcodetable",false);
            //Convert("FacInfo.shn", "faceinfo", false);
            //Convert("FaceInfo.shn", "data_faceinfo",false);
            //Convert("GTIView.shn", "data_gtiview",false);
            //Convert("GuildTournamentSkillDesc.shn", "data_guildtournamentskilldesc",true);                                 
            //Convert("HairColorInfo.shn", "data_haircolorinfo",false);
            //Convert("HairInfo.shn", "data_hairinfo",false);
            //Convert("ItemActionEffectDesc.shn", "itemeffectactiondesc", false);
            //Convert("ItemInfo.shn", "data_iteminfo",false);
            //Convert("ItemShopView.shn", "data_itemshopview",true);
            //Convert("ItemViewEquipeTypeInfo.shn", "data_itemviewequiptypeinfo",false);
            //Convert("MapViewInfo.shn", "data_mapviewinfo",false);
            //Convert("MiniHouseObjAni.shn", "data_minihouseobjani",false);
            //Convert("MobKillAnnounceText.shn", "data_mobkillannouncetext",false);
            //Convert("MobRandomIdleAni.shn", "data_mobrandomidleani",false);
            //Convert("MobViewInfo.shn", "data_mobviewinfo",false);
            //Convert("MoverSlotCharAni.shn", "moverslotcharani", false);
            //Convert("NPCViewInfo.shn", "data_npcviewinfo",false);
            //Convert("NpcDialogData.shn", "npcdialogdata", false);
            //Convert("PassiveSkillView.shn", "data_pasiveskillview",false);
            //Convert("ProduceView.shn", "data_produceview",false);
            //Convert("ScriptMsg.shn", "data_scriptmsg",false);
            //Convert("SetItemView.shn", "data_setitemview",false);
            //Convert("TextData.shn", "data_textdata",false);
            //Convert("TextData2.shn", "data_textdata2",false);
            //Convert("TextData3.shn", "textdata3", false);
            //Convert("WorldMapAvatarInfo.shn", "data_worldmapavatarinfo",false);
            //Convert("itemviewinfo.shn", "data_itemviewinfo",false);
            //KingDomQuestDesc.shn - not necessary - skipping


        } 
    }
}
