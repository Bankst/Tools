using System;
using QuestEditor;
using System.Windows.Forms;
using System.Reflection;
using System.IO;

namespace Quest_Editor_Form
{
    public partial class MainForm : Form
    {
        private void InitializeEventHandlers()
        {
            lstQuests.ItemChecked += new ItemCheckedEventHandler(QuestList_ItemCheckChanged);
            lstQuests.UserSelectedID += QuestList_UserSelectedID;

            lstMobs.ItemChecked += new ItemCheckedEventHandler(MobList_ItemCheckChanged);
            lstMobs.UserSelectedIndex += MobList_UserSelectedIndex;

            lstItems.ItemChecked += new ItemCheckedEventHandler(ItemList_ItemCheckChanged);
            lstItems.UserSelectedIndex += ItemList_UserSelectedIndex;

            lstRewards.UserSelectedIndex += RewardList_UserSelectedIndex;

            txtStartScript.KeyDown += new KeyEventHandler(TextBox_SelectAll);
            txtActionScript.KeyDown += new KeyEventHandler(TextBox_SelectAll);
            txtFinishScript.KeyDown += new KeyEventHandler(TextBox_SelectAll);
            FormClosing += new FormClosingEventHandler(Form_Closing);

            // ###

            txtID.TextWritten += txtID_TextWritten;
            txtTitle.TextWritten += txtTitle_TextWritten;
            txtDescript.TextWritten += txtDescript_TextWritten;
            cbLevelBased.UserSelectedIndex += cbLevelBased_UserSelectedIndex;
            txtMiniLevel.TextWritten += txtMiniLevel_TextWritten;
            txtMaxiLevel.TextWritten += txtMaxiLevel_TextWritten;
            txtNPC.TextWritten += txtNPC_TextWritten;
            txtPrevious.TextWritten += txtPrevious_TextWritten;
            cbRepeat.UserSelectedIndex += cbRepeat_UserSelectedIndex;
            cbMulti.UserSelectedIndex += cbMulti_UserSelectedIndex;
            cbClass.UserSelectedIndex += cbClass_UserSelectedIndex;
            
            txtMID.TextWritten += txtMID_TextWritten;
            cbMNPC.UserSelectedIndex += cbMNPC_UserSelectedIndex;
            cbMKill.UserSelectedIndex += cbMKill_UserSelectedIndex;
            txtMAmount.TextWritten += txtMAmount_TextWritten;
            
            txtIID.TextWritten += txtIID_TextWritten;
            txtIType.TextWritten += txtIType_TextWritten;
            txtIAmount.TextWritten += txtIAmount_TextWritten;
            
            cbRType.UserSelectedIndex += cbRType_UserSelectedIndex;
            txtRItemID.TextWritten += txtRItemID_TextWritten;
            txtRAmount.TextWritten += txtRAmount_TextWritten;
            txtRCount.TextWritten += txtRCount_TextWritten;
            cbRSelect.UserSelectedIndex += cbRSelect_UserSelectedIndex;
            
            txtStartScript.TextWritten += txtStartScript_TextWritten;
            txtActionScript.TextWritten += txtActionScript_TextWritten;
            txtFinishScript.TextWritten += txtFinishScript_TextWritten;
        }

        private void InitializeSettings()
        {
            Settings.In = new Settings();
            string currentExeName;
            string currentExe;
            string currentDir;

            currentExe = Assembly.GetExecutingAssembly().Location;
            currentDir = Path.GetDirectoryName(currentExe) + "\\";
            currentExeName = Path.GetFileNameWithoutExtension(currentExe);
            settingsFile = currentDir + currentExeName.Replace(" ", "") + "Settings.txt";

            Settings.In.Load(settingsFile);
        }

        private void SaveQuestFile(string path)
        {
            questFile.Save(path);
            SetChangesSaved(true);
        }

        private void OpenQuestFile(string path)
        {
            if (!savedChanges)
                if (ExitWarning())
                    return;

            questFile = new QuestFile(path);
            Settings.In["SHNPath"] = path;
            SetChangesSaved(true);
            ReadQuestList();
        }

        private bool ExitWarning()
        {
            DialogResult dialogResult = MessageBox.Show(
                    "You have made some unsaved changes.\n" +
                    "Do you wish to continue exiting?",
                    "warning", MessageBoxButtons.YesNo
                    );

            if (dialogResult == DialogResult.No)
                return false;

            return true;
        }

        private void SetQuestInfo(QuestTextBox sender, QuestOffset offset)
        {
            bool result;
            ushort data;

            result = ushort.TryParse(sender.Text, out data);

            if (!result)
            {
                SetControlText(sender, 0);
            }
            else selectedQuest.Write(offset, data);
        }

        private void SetQuestInfo(ComboBox sender, QuestOffset offset)
        {
            bool result, value;
            ushort data;

            result = bool.TryParse(sender.Text, out value);

            if (result) data = Convert.ToUInt16(value);
            else data = Convert.ToUInt16(Enum.Parse(typeof(GameClass), sender.Text));

            selectedQuest.Write(offset, data);
        }

        private void SetMobInfo(QuestTextBox sender, MobOffset offset)
        {
            bool result;
            ushort data;
            int mobInx;

            result = ushort.TryParse(sender.Text, out data);
            mobInx = lstMobs.SelectedIndex;

            if (!result)
            {
                SetControlText(sender, 0);
            }
            else selectedQuest.GetMob(mobInx).Write(offset, data);

            ReadMobList(selectedQuest.Mobs.ToArray());
            lstMobs.SelectIndex(mobInx);
        }

        private void SetMobInfo(ComboBox sender, MobOffset offset)
        {
            ushort data;
            int mobInx;
            bool value;

            value = bool.Parse(sender.Text);
            mobInx = lstMobs.SelectedIndex;
            data = Convert.ToUInt16(value);

            selectedQuest.GetMob(mobInx).Write(offset, data);
            ReadMobList(selectedQuest.Mobs.ToArray());
            lstMobs.SelectIndex(mobInx);
        }

        private void SetItemInfo(QuestTextBox sender, ItemOffset offset)
        {
            bool result;
            ushort data;
            int itemInx;

            result = ushort.TryParse(sender.Text, out data);
            itemInx = lstItems.SelectedIndex;

            if (!result)
            {
                SetControlText(sender, 0);
            }
            else selectedQuest.GetItem(itemInx).Write(offset, data);

            ReadItemList(selectedQuest.Items.ToArray());
            lstItems.SelectIndex(itemInx);
        }

        private void SetRewardInfo(QuestTextBox sender, RewardOffset offset)
        {
            int rewardInx;
            bool result;
            ulong data;

            result = ulong.TryParse(sender.Text, out data);
            rewardInx = lstRewards.SelectedIndex;

            if (!result)
            {
                SetControlText(sender, 0);
            }
            else selectedQuest.GetReward(rewardInx).Write(offset, data);

            ReadRewardList(selectedQuest.Rewards.ToArray());
            lstRewards.SelectIndex(rewardInx);
        }

        private void SetRewardInfo(ComboBox sender, RewardOffset offset)
        {
            RewardType rType;
            int rewardInx;
            bool result;
            ushort data;

            rewardInx = lstRewards.SelectedIndex;
            result = Enum.TryParse(sender.Text, out rType);

            if (result) data = (ushort)rType;
            else data = Convert.ToUInt16(Enum.Parse(typeof(RewardMethod), sender.Text));

            selectedQuest.GetReward(rewardInx).Write(offset, data);

            ReadRewardList(selectedQuest.Rewards.ToArray());
            lstRewards.SelectIndex(rewardInx);
        }

        private void SetChangesSaved(bool state)
        {
            savedChanges = state;
        }

        private void SetControlText(QuestTextBox sender, string data)
        {
            sender.SetText(data);
        }

        private void SetControlText(QuestTextBox sender, decimal data)
        {
            sender.SetText(data);
        }

        private void SetControlText(QuestComboBox sender, string data)
        {
            sender.SelectItem(data);
        }

        private void SetControlText(TextBox sender, string data)
        {
            sender.Text = data;
        }

        private bool CreateNewQuest()
        {
            NewForm frmNewQuest;
            Quest quest;
            int questID;

            frmNewQuest = new NewForm(questFile);
            quest = new Quest();

            frmNewQuest.ShowDialog(this);
            questID = frmNewQuest.QuestID;

            if (questID < 0) return false;

            quest.Write(QuestOffset.QuestID, questID);
            AddNewQuest(quest);

            return true;
        }

        private bool DuplicateQuest(Quest oldQuest)
        {
            NewForm frmNewQuest;
            Quest newQuest;
            int newID;

            frmNewQuest = new NewForm(questFile);

            frmNewQuest.ShowDialog(this);
            newID = frmNewQuest.QuestID;
            newQuest = new Quest(oldQuest.ToArray());

            if (newID < 0) return false;

            newQuest.Write(QuestOffset.QuestID, newID);
            AddNewQuest(newQuest);

            return true;
        }

        private void AddNewQuest(Quest quest)
        {
            questFile.AddQuest(quest);
            lstQuests.Add(quest);
        }

        private void SetQuestEnableState(int questID, bool state)
        {
            byte isEnabled;
            Quest quest;

            quest = questFile.GetQuest(questID);
            isEnabled = Converter.ToByte(state);

            quest.Write(QuestOffset.IsEnabled, isEnabled);
        }

        private void SetMobEnableState(int questID, int mobInx, bool state)
        {
            byte isEnabled;
            QuestMob mob;
            Quest quest;

            quest = questFile.GetQuest(questID);
            mob = quest.GetMob(mobInx);
            isEnabled = Converter.ToByte(state);

            mob.IsEnabled = isEnabled;
        }

        private void SetItemEnableState(int questID, int itemInx, bool state)
        {
            byte isEnabled;
            QuestItem item;
            Quest quest;

            quest = questFile.GetQuest(questID);
            item = quest.GetItem(itemInx);
            isEnabled = Converter.ToByte(state);

            item.IsEnabled = isEnabled;
        }

        private void SetRewardTypeState(string type)
        {
            if (type == RewardType.Item.ToString())
            {
                txtRAmount.Visible = false;
                txtRCount.Visible = true;
                txtRItemID.Enabled = true;
            }
            else
            {
                txtRAmount.Visible = true;
                txtRCount.Visible = false;
                txtRItemID.Enabled = false;
            }
        }

        private void SetRewardSelectState()
        {
            bool state = cbRSelect.SelectedText == RewardMethod.Disabled.ToString();
            cbRType.Enabled = !state;
            txtRItemID.Enabled = !state;
            txtRAmount.Enabled = !state;

            if (cbRType.Enabled && cbRType.SelectedText != RewardType.Item.ToString())
                txtRItemID.Enabled = false;
        }

        private void ReadQuestList()
        {
            lstQuests.Clear();
            foreach (Quest quest in questFile.Quests)
            {
                lstQuests.Add(quest);
            }
        }

        private void ReadQuestInfo(int questID)
        {
            Quest quest;
            ushort title;
            ushort descript;
            byte isLevelBased;

            ushort levelMin;
            ushort levelMax;
            ushort startNPC;
            ushort prevQuest;
            byte isRepeat;
            byte isMulti;
            byte classID;

            quest = questFile.GetQuest(questID);
            selectedQuest = quest;

            title = quest.Title;
            descript = quest.Description;
            isLevelBased = quest.IsNeedLevel;
            levelMin = quest.MinimumLevel;
            levelMax = quest.MaximumLevel;
            startNPC = quest.StartNPC;
            prevQuest = quest.Previous;
            isRepeat = quest.IsRepeatable;
            isMulti = quest.IsMultiInstance;
            classID = quest.Class;

            SetControlText(txtID, questID);
            SetControlText(txtTitle, title);
            SetControlText(txtDescript, descript);
            SetControlText(txtMiniLevel, levelMin);
            SetControlText(txtMaxiLevel, levelMax);
            SetControlText(txtNPC, startNPC);
            SetControlText(txtPrevious, prevQuest);

            SetControlText(cbRepeat, ((BoolType)isRepeat).ToString());
            SetControlText(cbMulti, ((BoolType)isMulti).ToString());
            SetControlText(cbClass, ((GameClass)classID).ToString());
            SetControlText(cbLevelBased, ((BoolType)isLevelBased).ToString());

            ReadMobList(quest.Mobs.ToArray());
            ReadItemList(quest.Items.ToArray());
            ReadRewardList(quest.Rewards.ToArray());

            SetControlText(txtStartScript, quest.Script.Read(ScriptType.Start).ToString());
            SetControlText(txtActionScript, quest.Script.Read(ScriptType.Action).ToString());
            SetControlText(txtFinishScript, quest.Script.Read(ScriptType.Finish).ToString());
        }

        private void ReadMobList(QuestMob[] mobs)
        {
            lstMobs.Clear();
            foreach (QuestMob mob in mobs)
            {
                lstMobs.Add(mob);
            }
        }

        private void ReadMobInfo(int questID, int mobInx)
        {
            QuestMob mob;
            Quest quest;

            quest = questFile.GetQuest(questID);
            mob = quest.GetMob(mobInx);

            SetControlText(txtMID, mob.ID);
            SetControlText(txtMAmount, mob.AmountToKill);

            SetControlText(cbMNPC, ((BoolType)mob.IsNPC).ToString());
            SetControlText(cbMKill, ((BoolType)mob.IsToKill).ToString());
        }

        private void ReadItemList(QuestItem[] items)
        {
            lstItems.Clear();
            foreach (QuestItem item in items)
            {
                lstItems.Add(item);
            }
        }

        private void ReadItemInfo(int questID, int itemInx)
        {
            QuestItem item;
            Quest quest;

            quest = questFile.GetQuest(questID);
            item = quest.GetItem(itemInx);

            SetControlText(txtIID, item.ID);
            SetControlText(txtIType, item.Type);
            SetControlText(txtIAmount, item.Amount);
        }

        private void ReadRewardList(QuestReward[] rewards)
        {
            lstRewards.Clear();
            foreach (QuestReward reward in rewards)
            {
                lstRewards.Add(reward);
            }
        }

        private void ReadRewardInfo(int questID, int rewardInx)
        {
            QuestReward reward;
            Quest quest;

            quest = questFile.GetQuest(questID);
            reward = quest.GetReward(rewardInx);

            SetRewardTypeState(reward.Type.ToString());

            SetControlText(txtRItemID, reward.ItemID);
            SetControlText(txtRCount, reward.ItemCount);
            SetControlText(txtRAmount, reward.Amount);

            SetControlText(cbRSelect, ((RewardMethod)reward.Method).ToString());
            SetControlText(cbRType, ((RewardType)reward.Type).ToString());

            SetRewardSelectState();
        }

        private void ApplicationExit()
        {
            Settings.In.Save(settingsFile);
            Environment.Exit(0);
        }
    }
}
