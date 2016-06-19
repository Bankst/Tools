using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Diagnostics;
using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.InteropServices;

namespace iQuest
{
    public partial class frmMain : Form
    {
        public QuestFile QuestFile;
        public Quest ViewingQuest;
        public frmResEditor Editor;

        public SHNFile QuestDialog;
       public Dictionary<ushort, string> QuestDialogDic = new Dictionary<ushort, string>();
        public Dictionary<ushort, string> MobDic = new Dictionary<ushort, string>();
        public Dictionary<ushort, string> ItemDic = new Dictionary<ushort, string>();

        public SHNFile MobInfo;
        public SHNFile ItemInfo;

        string FileFolder = "";
        string[] FileCheck = new string[] { "QuestDialog.shn", "ItemInfo.shn", "QuestData.shn", "MobInfo.shn" };
        public frmMain()
        {
            InitializeComponent();
            FileFolder = Path.GetDirectoryName(Application.ExecutablePath) + "\\";
            //filecheck
            string missing = "";
            foreach (string x in FileCheck)
            {
                if (!File.Exists(FileFolder + x)) missing += "\r\n" + x;
            }
            if (missing.Length > 1)
                MessageBox.Show("Can't find following files: " + missing);
            else
                LoadFiles();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            grpDefault.Enabled = false;
            this.lstMobs.Columns.Add("ID", 100);
            this.lstMobs.Columns.Add("canKill", 50);
            this.lstMobs.Columns.Add("Amount", 60);
            //
            cmbIsNPC.Items.Clear();
            cmbIsNPC.Items.Add("False");
            cmbIsNPC.Items.Add("True");
            grpMobSettings.Enabled = false;
            //
            lstItems.Columns.Add("ID", 100);
            lstItems.Columns.Add("Amount", 50);
            lstItems.Columns.Add("Type", 50);
            grpItemInfo.Enabled = false;
            //
            lstRewards.Columns.Add("Type", 100);
            lstRewards.Columns.Add("ID", 130);
            lstRewards.Columns.Add("Amount", 90);
            lstRewards.Columns.Add("Selective", 90);
            grpRewardEdit.Enabled = false;
            //
            cmbRewardType.Items.Clear();
            cmbRewardType.Items.Add("0 - Exp");
            cmbRewardType.Items.Add("1 - Money");
            cmbRewardType.Items.Add("2 - Item");
            cmbRewardType.Items.Add("4 - Fame");
            cmbRewardType.SelectedIndex = 0;
            //
            cmbRewSelective.Items.Clear();
            cmbRewSelective.Items.Add("Fixed");
            cmbRewSelective.Items.Add("Chosen");
            cmbRewSelective.SelectedIndex = 0;
        }

        public void Log(string text)
        {
            lblStatus.Text = text;
        }

        void LoadFiles()
        {
            DateTime start = DateTime.Now;
            QuestFile = new QuestFile(FileFolder + "QuestData.shn");
            QuestDialog = new SHNFile(FileFolder + "QuestDialog.shn");
            
            ItemInfo = new SHNFile(FileFolder + "ItemInfo.shn");
            MobInfo = new SHNFile(FileFolder + "MobInfo.shn");
            TimeSpan loadtime = DateTime.Now - start;
            UpdateQuestNames();
            MobGrid.DataSource = MobInfo.table;
            ItemGrid.DataSource = ItemInfo.table;
            this.Text = "iQuest v1.2 - loaded in " + Math.Round(loadtime.TotalMilliseconds, 0).ToString() + "ms";
        }

       public void LoadDiagDic()
        {
            QuestDialogDic.Clear();
            foreach (DataRow row in QuestDialog.table.Rows) //load dictionary strings
                if (!QuestDialogDic.ContainsKey((ushort)row[0])) QuestDialogDic.Add((ushort)row[0], (string)row[1]);
        }

        void LoadMobInfo()
        {
            MobDic.Clear();
            foreach (DataRow row in MobInfo.table.Rows) //load dictionary mobs
                if (!MobDic.ContainsKey((ushort)row[0])) MobDic.Add((ushort)row[0], (string)row[2]);
        }

        void LoadItemDic()
        {
            ItemDic.Clear();
            foreach (DataRow row in ItemInfo.table.Rows)
                if (!ItemDic.ContainsKey((ushort)row[0])) ItemDic.Add((ushort)row[0], (string)row[2]);

        }

        void UpdateQuestNames()
        {
            LoadDiagDic();
            LoadItemDic();
            LoadMobInfo();
            ShowQuestList("");
        }

        public void ShowQuestList(string filter)
        {
            lstQuests.Items.Clear();
            //Dictionary<ushort, string> fock = new Dictionary<ushort, string>();
            if (filter == "")
            {
                foreach (Quest quest in QuestFile.Quests)
                {
                    string questname = (QuestDialogDic.ContainsKey(quest.Title) ? QuestDialogDic[quest.Title] : quest.ID.ToString());
                    lstQuests.Items.Add(quest.ID + " - " + questname);
                }
            }
            else
            {
                foreach (Quest quest in QuestFile.Quests)
                {
                    string questname = (QuestDialogDic.ContainsKey(quest.Title) ? QuestDialogDic[quest.Title] : quest.ID.ToString());
                    if (questname.ToLower().Contains(filter.ToLower()))
                        lstQuests.Items.Add(quest.ID + " - " + questname);
                }
             
            }
            /*  string outz = "";
              foreach (KeyValuePair<ushort, string> item in fock.OrderBy(key => key.Key))
              {
                 outz += item.Key.ToString() + " - " + item.Value + "\r\n";
              }
              Clipboard.SetText(outz);*/
            lblQuestCount.Text = "Quests: " + lstQuests.Items.Count.ToString();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            ShowQuestList(txtSearchQuest.Text);
        }

        private void lstQuests_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            ViewingQuest = QuestFile[ushort.Parse(lstQuests.Text.Split(' ')[0])];
            if (ViewingQuest == null) return;
            RefreshQuest();
        }

        public void RefreshQuest()
        {
            if (ViewingQuest == null) return;
            txtDebug.Text = string.Empty;
            grpDefault.Enabled = true;
            grpRewardEdit.Enabled = false;
            grpItemInfo.Enabled = false;
            grpMobSettings.Enabled = false;
            txtStartScript.Text = ViewingQuest.StartScript;
            txtActionScript.Text = ViewingQuest.ActionScript;
            txtFinishScript.Text = ViewingQuest.FinishScript;

            nmrMinLevel.Value = ViewingQuest.MinLevel;
            nmrMaxLevel.Value = ViewingQuest.MaxLevel;
            lblQuestTitle.Text = ((QuestDialogDic.ContainsKey(ViewingQuest.Title)) ? QuestDialogDic[ViewingQuest.Title] : ViewingQuest.ID.ToString());
            txtQuestTitle.Text = ViewingQuest.Title.ToString();
            txtStartingNPC.Text = ViewingQuest.StartingNPC.ToString();
            txtDesc.Text = ViewingQuest.Description.ToString();
            if (QuestDialogDic.ContainsKey(ViewingQuest.Description))
            {
                txtDescription.Text = QuestDialogDic[ViewingQuest.Description];
                txtDescription.Tag = (ushort)ViewingQuest.Description;
            }
            else
            {
                txtDescription.Text = "-";
                txtDescription.Tag = (ushort)0;
            }
            if (MobDic.ContainsKey(ViewingQuest.StartingNPC))
                lblStartNPC.Text = MobDic[ViewingQuest.StartingNPC];
            else
                lblStartNPC.Text = "-";

            txtPreQuest.Text = ViewingQuest.Predesessor.ToString();
            try
            {
                lblPreQuest.Text = QuestDialogDic[QuestFile.Quests[ViewingQuest.Predesessor - 1].Title];
            }
            catch
            {
                lblPreQuest.Text = "-";
            }

            LoadMobList(ViewingQuest);
            LoadItemList(ViewingQuest);
            LoadRewardList(ViewingQuest);
            txtRewUnk.Text = ViewingQuest.GetUnkString();
           // ViewingQuest.RewardData
            txtDebug.Text += BitConverter.ToUInt16(ViewingQuest.RewardData, 0).ToString() + " (static short)\r\n\r\n";
            txtDebug.Text += BitConverter.ToUInt16(ViewingQuest.RewardData, 2).ToString() + " (rel short)\r\n";
            txtDebug.Text += BitConverter.ToUInt16(ViewingQuest.RewardData, 4).ToString() + " (static short)\r\n\r\n";

            txtDebug.Text += BitConverter.ToUInt16(ViewingQuest.RewardData, 6).ToString() + " (rel short)\r\n";
            txtDebug.Text += BitConverter.ToUInt16(ViewingQuest.RewardData, 8).ToString() + " (static short)\r\n\r\n";

            txtDebug.Text += BitConverter.ToUInt16(ViewingQuest.RewardData, 10).ToString() + " (rel short)\r\n";
            txtDebug.Text += BitConverter.ToUInt16(ViewingQuest.RewardData, 12).ToString() + " (static short)\r\n\r\n";

            txtDebug.Text += BitConverter.ToUInt32(ViewingQuest.RewardData, 14).ToString() + " (static int)";
        }

        public void LoadMobList(Quest quest)
        {
            lstMobs.Items.Clear();
            lstMobs.Tag = quest.ID;
            foreach (Mob mob in quest.Mobs)
            {
                ListViewItem item = new ListViewItem();
                item.Text = (MobDic.ContainsKey(mob.ID)) ? MobDic[mob.ID] : mob.ID.ToString();
                item.Tag = mob.ID;
                item.SubItems.Add(mob.HasToBeKilled.ToString());
                item.SubItems.Add(mob.Amount.ToString());
                lstMobs.Items.Add(item);
            }
        }

        public void LoadRewardList(Quest quest)
        {
            lstRewards.Items.Clear();
            lstRewards.Tag = quest.ID;
            short ChosenCount = 0;
            foreach (QuestReward rew in quest.Rewards)
            {
                ListViewItem item = new ListViewItem();
                item.Text = rew.Type.ToString();
                if (rew.Type == QuestReward.RewardType.Item)
                {
                    item.SubItems.Add((ItemDic.ContainsKey(rew.Value)) ? ItemDic[rew.Value] : rew.Value.ToString());
                    item.SubItems.Add(rew.ItemCount.ToString());
                }
                else
                {
                    item.SubItems.Add("/");
                    item.SubItems.Add(rew.Amount.ToString());
                }
                item.SubItems.Add((rew.isGiven == 1) ? "Fixed" : "Choose");
                if (rew.isGiven == 2) ChosenCount++;
                item.Tag = rew;
                lstRewards.Items.Add(item);
            }
        }

        public void LoadItemList(Quest quest)
        {
            lstItems.Items.Clear();
            lstItems.Tag = quest.ID;
            foreach (Item witem in quest.Items)
            {
                ListViewItem item = new ListViewItem();
                item.Text = (ItemDic.ContainsKey(witem.ID)) ? ItemDic[witem.ID] : witem.ID.ToString();
                item.Tag = witem.ID;
                item.SubItems.Add(witem.Amount.ToString());
                item.SubItems.Add(witem.Type.ToString());
                lstItems.Items.Add(item);
            }
        }

        private void lstQuests_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void txtStartScript_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnSaveStartScript_Click(object sender, EventArgs e)
        {
            ViewingQuest.StartScript = txtStartScript.Text;
            Log("Changes saved.");
        }

        private void btnSaveAction_Click(object sender, EventArgs e)
        {
            ViewingQuest.ActionScript = txtActionScript.Text;
            Log("Changes saved.");
        }

        private void btnSaveFinishScript_Click(object sender, EventArgs e)
        {
            ViewingQuest.FinishScript = txtFinishScript.Text;
            Log("Changes saved.");
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void lstMobs_MouseClick(object sender, MouseEventArgs e)
        {
            if (lstMobs.SelectedItems.Count < 0) return;
            Mob mob = GetMobByID((ushort)lstMobs.SelectedItems[0].Tag);
            lblMobName.Text = lstMobs.SelectedItems[0].Text;
            grpMobSettings.Enabled = true;
            if (mob == null) return;
            txtMobID.Text = mob.ID.ToString();
            cmbIsNPC.SelectedIndex = Convert.ToByte(mob.HasToBeKilled);
            nmrMobAmount.Value = mob.Amount;
            btnDeleteMob.Tag = mob;
            int rowID = MobInfo.GetRowByIndex(0, mob.ID.ToString());
            if (rowID > 0) MobGrid.FirstDisplayedCell = MobGrid[0, rowID];
        }

        Mob GetMobByID(ushort ID)
        {
            foreach (Mob fock in ViewingQuest.Mobs)
            {
                if (fock.ID == ID)
                {
                    return fock;
                }
            }
            return null;
        }

        Item GetItemByID(ushort ID)
        {
            foreach (Item fock in ViewingQuest.Items)
            {
                if (fock.ID == ID)
                {
                    return fock;
                }
            }
            return null;
        }

        private void lstMobs_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnSaveFile_Click(object sender, EventArgs e)
        {
            SaveFileDialog diag = new SaveFileDialog();
            diag.Title = "Save Quest File";
            diag.Filter = "Shn File(*.shn)|*.shn";
            if (!(diag.ShowDialog() == DialogResult.OK)) return;
            try
            {
                QuestFile.SaveFile(diag.FileName);
                Log("File saved!");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnSaveMobFile_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < MobGrid.Columns.Count; ++i)
            {
                MobInfo.displayToReal.Add(MobGrid.Columns[i].DisplayIndex, i); //lists all displayed
            }
            bool suc = MobInfo.Save(FileFolder + "MobInfo.shn");
            MobInfo.displayToReal.Clear();
            if (suc)
                Log("Mob file saved!");
            else
                Log("Mob file could not be saved!");
        }

        private void btnDeleteMob_Click_2(object sender, EventArgs e)
        {
            if (btnDeleteMob.Tag == null) return;
            ViewingQuest.Mobs.Remove((Mob)btnDeleteMob.Tag);
            LoadMobList(ViewingQuest);
            grpMobSettings.Enabled = false;
        }

        private void btnAddMob_Click_1(object sender, EventArgs e)
        {
            if (ViewingQuest == null) return;
            frmAddMob addder = new frmAddMob(this);
            addder.ShowDialog();
        }

        private void btnSaveItemGrid_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < ItemGrid.Columns.Count; ++i)
            {
                ItemInfo.displayToReal.Add(ItemGrid.Columns[i].DisplayIndex, i); //lists all displayed
            }
            bool suc = ItemInfo.Save(FileFolder + "ItemInfo.shn");
            ItemInfo.displayToReal.Clear();
            if (suc)
                Log("Item file saved!");
            else
                Log("Item file could not be saved!");
        }

        private void lstItems_MouseClick(object sender, MouseEventArgs e)
        {
            if (lstItems.SelectedItems.Count < 0) return;
            Item item  = GetItemByID(((ushort)lstItems.SelectedItems[0].Tag));
            grpItemInfo.Enabled = true;
            if (item == null) return;
            txtItemID.Text = item.ID.ToString();
            nmrItemAmount.Value = item.Amount;
            btnDeleteItem.Tag = item;
            txtItemType.Text = item.Type.ToString();
            int rowID = ItemInfo.GetRowByIndex(0, item.ID.ToString());
            if (rowID > 0) ItemGrid.FirstDisplayedCell = ItemGrid[0, rowID];
        }

        private void lstItems_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnDeleteItem_Click(object sender, EventArgs e)
        {
            if (btnDeleteItem.Tag == null) return;
            ViewingQuest.Items.Remove((Item)btnDeleteItem.Tag);
            LoadItemList(ViewingQuest);
            grpItemInfo.Enabled = false;
        }

        private void BtnSaveMobSettings_Click(object sender, EventArgs e)
        {
            if (btnDeleteMob.Tag == null) return;
            Mob mob = (Mob)btnDeleteMob.Tag;
            try
            {
                mob.Amount = (byte)nmrMobAmount.Value;
                mob.HasToBeKilled = Convert.ToBoolean(cmbIsNPC.SelectedIndex);
                mob.ID = Convert.ToUInt16(txtMobID.Text);
                LoadMobList(ViewingQuest);
            }
            catch
            {
                MessageBox.Show("Please enter valid numbers!");
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (btnDeleteItem.Tag == null) return;
            Item item = (Item)btnDeleteItem.Tag;
            try
            {
                item.ID = Convert.ToUInt16(txtItemID.Text);
                item.Type = Convert.ToByte(txtItemType.Text);
                item.Amount = (ushort)nmrItemAmount.Value;
                LoadItemList(ViewingQuest);
            }
            catch
            {
                MessageBox.Show("Please enter valid numbers!");
            }
        }

        private void btnAddItem_Click(object sender, EventArgs e)
        {
            if (ViewingQuest == null) return;
            frmAddItem adder = new frmAddItem(this);
            adder.ShowDialog();
        }

        private void btnSaveDefault_Click(object sender, EventArgs e)
        {
            try
            {
                ViewingQuest.MinLevel = (byte)nmrMinLevel.Value;
                ViewingQuest.MaxLevel = (byte)nmrMaxLevel.Value;
                ViewingQuest.Title = Convert.ToUInt16(txtQuestTitle.Text);
                ViewingQuest.Predesessor = Convert.ToUInt16(txtPreQuest.Text);
                ViewingQuest.StartingNPC = Convert.ToUInt16(txtStartingNPC.Text);
                RefreshQuest();
            }
            catch
            {
                MessageBox.Show("Please enter a valid value!");
            }
        }

        private void lstRewards_MouseClick(object sender, MouseEventArgs e)
        {
            try
            {
                if (lstRewards.SelectedItems.Count < 0) return;
                if (lstRewards.SelectedItems[0].Tag == null) return;
                grpRewardEdit.Enabled = true;
                QuestReward rew = (QuestReward)lstRewards.SelectedItems[0].Tag;
                switch (rew.Type)
                {
                    case QuestReward.RewardType.Exp: cmbRewardType.SelectedIndex = 0; break;
                    case QuestReward.RewardType.Money: cmbRewardType.SelectedIndex = 1; break;
                    case QuestReward.RewardType.Item: cmbRewardType.SelectedIndex = 2; break;
                    case QuestReward.RewardType.Fame: cmbRewardType.SelectedIndex = 3; break;
                }
                cmbRewSelective.SelectedIndex = rew.isGiven - 1;
                txtRewID.Text = (rew.Type == QuestReward.RewardType.Item) ? rew.Value.ToString() : "-";
                txtRewAmount.Text = (rew.Type == QuestReward.RewardType.Item) ? rew.ItemCount.ToString() : rew.Amount.ToString();
                btnDeleteReward.Tag = rew;
            }
            catch { }
        }

        private void lstRewards_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnSaveRew_Click(object sender, EventArgs e)
        {
            if (btnDeleteReward.Tag == null) return;
            QuestReward rew = (QuestReward)btnDeleteReward.Tag;
            QuestReward.RewardType type;
            try
            {
                type = (QuestReward.RewardType)Convert.ToByte(cmbRewardType.Text.Substring(0, 1));
                rew.Type = type;
                if (type == QuestReward.RewardType.Item)
                {
                    rew.ItemCount = Convert.ToUInt16(txtRewAmount.Text);
                    rew.Value = Convert.ToUInt16(txtRewID.Text);
                    rew.isGiven = (byte)(cmbRewSelective.SelectedIndex + 1);
                }
                else
                {
                    rew.Amount = Convert.ToUInt64(txtRewAmount.Text);
                    rew.isGiven = (byte)(cmbRewSelective.SelectedIndex + 1);
                }
                LoadRewardList(ViewingQuest);
            }
            catch
            {
                MessageBox.Show("Incorrect values!");
            }
        }

        private void btnAddReward_Click(object sender, EventArgs e)
        {
            if (ViewingQuest == null) return;
            frmAddReward adder = new frmAddReward(this);
            adder.ShowDialog();
        }

        private void btnDeleteReward_Click(object sender, EventArgs e)
        {
            if (btnDeleteReward.Tag == null || ViewingQuest == null) return;
            grpRewardEdit.Enabled = false;
            ViewingQuest.Rewards.Remove((QuestReward)btnDeleteReward.Tag);
            LoadRewardList(ViewingQuest);
            Log("Reward removed.");
        }

        private void btnModUnk_Click(object sender, EventArgs e)
        {
            try
            {
                ViewingQuest.SetUnkString(txtRewUnk.Text);
                Log("UnkBytes applied.");
            }
            catch
            {
                MessageBox.Show("Ooops.. something went wrong!");
            }
            
        }

         public void UpdateQuestIDs()
       {
           ushort count = 1;
           foreach (Quest q in QuestFile.Quests)
           {
               q.ID = count;
               count++;
           }
       }

        private void button2_Click(object sender, EventArgs e)
        {
            if ((ushort)txtDescription.Tag == 0) return;
            int rowID = QuestDialog.GetRowByIndex(0, txtDescription.Tag.ToString());
            if (rowID > -1)
            {
                QuestDialog.table.Rows[rowID][1] = txtDescription.Text;
            }
            LoadDiagDic();
            ShowQuestList("");
        }

        private void btnDialogEditor_Click(object sender, EventArgs e)
        {
            if (Editor == null)
                Editor = new frmResEditor(this);
            Editor.Show();
        }

        private void frmMain_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

        private void btnSaveRes_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < QuestDialog.table.Columns.Count; ++i)
            {
               QuestDialog.displayToReal.Add(i, i); //lists all displayed
            }
            bool suc = MobInfo.Save(FileFolder + "QuestDialog.shn");
            QuestDialog.displayToReal.Clear();
            if (suc)
                Log("Dialog file saved!");
            else
                Log("Dialog file could not be saved!");
        }

        private void lblQuestTitle_Click(object sender, EventArgs e)
        {
            if (Editor == null) Editor = new frmResEditor(this);
            Editor.Show();
            Editor.ShowID(Convert.ToUInt16(txtQuestTitle.Text));
        }

        public ushort GetFreeQKey()
        {
            for (ushort i = 100; i < ushort.MaxValue; ++i)
            {
                if(!QuestDialogDic.ContainsKey(i)) return i;
            }
            return 0;
        }

        private void btnDeleteQuest_Click(object sender, EventArgs e)
        {
         
        }

        private void tabPage7_Click(object sender, EventArgs e)
        {

        }

        private void btnduplicate_Click(object sender, EventArgs e)
        {
          

        }

        private void btnModDescID_Click(object sender, EventArgs e)
        {
            try
            {
                ViewingQuest.Description = Convert.ToUInt16(txtDesc.Text);
                RefreshQuest();
                Log("Desc. ID changed!");
            }
            catch
            {
                MessageBox.Show("Invalid ID");
            }
        }

        private void btnResDesc_Click(object sender, EventArgs e)
        {
            if (Editor == null)
                Editor = new frmResEditor(this);
            Editor.Show();
            Editor.ShowID(ViewingQuest.Description);
        }

        private void btnDeleteQuest_Click_1(object sender, EventArgs e)
        {
            QuestFile.Quests.Remove(ViewingQuest);
            ViewingQuest = null;
            UpdateQuestIDs();
            ShowQuestList(txtSearchQuest.Text);
            RefreshQuest();
            Log("Quest deleted!");
        }

        private void btnduplicate_Click_1(object sender, EventArgs e)
        {
            frmNewQuest newQ = new frmNewQuest(this);
            newQ.ShowDialog();
        }

        private string Serialize(object objectToSerialize)
        {
            string serialString = null;
            using (System.IO.MemoryStream ms1 = new System.IO.MemoryStream())
            {
                BinaryFormatter b = new BinaryFormatter();
                b.Serialize(ms1, objectToSerialize);
                byte[] arrayByte = ms1.ToArray();
                serialString = Convert.ToBase64String(arrayByte);
            }
            return serialString;
        }

        private object DeSerialize(string serializationString)
        {
            object deserialObject = null;
            byte[] arrayByte = Convert.FromBase64String(serializationString);
            using (System.IO.MemoryStream ms1 = new System.IO.MemoryStream(arrayByte))
            {
                BinaryFormatter b = new BinaryFormatter();
                deserialObject = b.Deserialize(ms1);
            }
            return deserialObject;
        }
            
    }
}
