using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using System.Windows.Forms;
using QuestDataSQLConverter.IO;
using QuestDataSQLConverter.Object;
using QuestDataSQLConverter.Settings;

namespace QuestDataForm
{
    public partial class Form1 : Form
    {
        QuestFile pFile;
        public static Form1 Instance { get; set; }
        public Dictionary<int, Quest> QuestsByIndex = new Dictionary<int, Quest>();
        public Form1()
        {
            InitializeComponent();
        }
        public void SetConnectLabel(bool State)
        {
            lDBConnect.Text = State.ToString();
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            Instance = this; 
            openFileDialog1.Filter = "shn files (*.txt)|*.shn";
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
               pFile = new QuestFile(openFileDialog1.FileName);
                pFile.ReadQuestsFromFile();
               
                tabControl1.TabPages[0].Text = "Reward";
                tabControl1.TabPages[1].Text = "Items";
                tabControl1.TabPages[2].Text = "Mobs";

                tabControl2.TabPages[0].Text = "StartScript";
                tabControl2.TabPages[1].Text = "FinsishScript";
                tabControl2.TabPages[2].Text = "ActionScript";
                lFullCount.Text = pFile.QuestList.Count.ToString();

                if (File.Exists(@"DatabaseSettings.xml"))
                {

                    if (!DatabaseSetting.Load("DatabaseSettings.xml", out DatabaseSetting.Instance))
                    {
                        MessageBox.Show("Failed to Load DatabaseSetting");
                        return;
                    }
                    if (!DatabaseManager.Initialize(DatabaseSetting.Instance.SQLHost,
                                    DatabaseSetting.Instance.SQLUser,
                                    DatabaseSetting.Instance.SQLPassword,
                                    DatabaseSetting.Instance.SQLDB))
                    {
                        MessageBox.Show("Failed To Connect SQL Server");
                        return;
                    }
                    lDBConnect.Text = true.ToString();
                }
                for (int i = 0; i < pFile.QuestList.Count; i++)
                {
                        QuestsByIndex.Add(i, pFile.QuestList[i]);
                        listBox1.Items.Add("Index " +i+"  ID "+pFile.QuestList[i].pInfo.ID);
                }
            }
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
          string[] im  = listBox1.SelectedItem.ToString().Split(' ');

            Quest pQuest;
            if (!QuestsByIndex.TryGetValue(int.Parse(im[1]), out pQuest))
            {
                return;
            }

            //QuestInfoStuff
            lQuest.Text = pQuest.pInfo.ID.ToString();
            lTitleID.Text = pQuest.pInfo.Title.ToString();
            lDecryption.Text = pQuest.pInfo.Description.ToString();
            lReapeat.Text = pQuest.pInfo.IsRepeatable.ToString();
            lNeedLevel.Text = pQuest.pInfo.IsNeedLevel.ToString();
            lMinLevel.Text = pQuest.pInfo.MinimumLevel.ToString();
            lMaxLevel.Text = pQuest.pInfo.MaximumLevel.ToString();
            lStartingNPC.Text = pQuest.pInfo.StartNPC.ToString();
            lPreQuest.Text = pQuest.pInfo.Previous.ToString();
            lMultiQuest.Text = pQuest.pInfo.IsMultiInstance.ToString();
            lNeedClass.Text = pQuest.pInfo.Class.ToString();

            listBox2.Items.Clear();
            listBox3.Items.Clear();
            listBox4.Items.Clear();
            for (int inxMob = 0; inxMob < Quest.MOB_COUNT; inxMob++)
            {
                listBox4.Items.Add("ID  "+inxMob+ " MobID "+pQuest.Mobs[inxMob].ID);
            }
            for (int inxItem = 0; inxItem < Quest.ITEM_COUNT; inxItem++)
            {
                listBox3.Items.Add("ID " + inxItem + " ItemID " + pQuest.Items[inxItem].ID);
            }
            for (int inxReward = 0; inxReward < Quest.REWARD_COUNT; inxReward++)
            {
                QuestReward reward = pQuest.Rewards[inxReward];
                if (reward.Type != QuestDataSQLConverter.Enum.RewardType.Item)
                {
                    listBox2.Items.Add("ID " + inxReward + " Fame/EXP " + pQuest.Rewards[inxReward].Amount);
                }
                else
                {
                    listBox2.Items.Add("ID " + inxReward + " ItemID " + pQuest.Rewards[inxReward].ItemID);
                }
            }

            lEnable.Text = pQuest.pInfo.IsEnabled.ToString();
                //ScriptStuff
                textBox1.Text = pQuest.Script.StartScript;
            textBox2.Text = pQuest.Script.FinishScript;
            textBox3.Text = pQuest.Script.ActionScript;

            //rewardTab
            tp1Amount.Text = "";
            tp1ItemID.Text = "";
            tp1reward.Text = "";
            tp1rewardType.Text = "";

            //itemTab
            tp2Amount.Text = "";
            tp2Enable.Text = "";
            tp2ItemID.Text = "";
            tp2ItemType.Text = "";

            //MobTab

            tp3Amount.Text = "";
            tp3IsEnable.Text = "";
            tp3IsNPC.Text = "";
            tp3MobID.Text = "";
            Tp3IsToKill.Text = "";

        }

        private void listBox1_SelectedValueChanged(object sender, EventArgs e)
        {
            
        }

        private void listBox1_RightToLeftChanged(object sender, EventArgs e)
        {

        }

        private void tabPage1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedItem == null) return;
            string[] im = listBox1.SelectedItem.ToString().Split(':');
            if(!DatabaseManager.IsInitialed)
            {
                DatabaseForm DBForm = new DatabaseForm();
                DBForm.Show();
                return;
            }
            Quest.CheckTables();

            Quest pQuest;
            if (!QuestsByIndex.TryGetValue(int.Parse(im[1]), out pQuest))
            {
                MessageBox.Show("Failed To Select Quest for Save");
                return;
            }
         
            pQuest.SaveSQL();
            MessageBox.Show("Saving Singel Quest with ID: " + pQuest.pInfo.ID + " Success!");
        }

        private void tabPage1_Click_1(object sender, EventArgs e)
        {
         
        }

        private void listBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[] im = listBox2.SelectedItem.ToString().Split(' ');//1

            int Index;
            if (int.TryParse(im[1], out Index))
            {
                if(listBox1.SelectedItem != null)
                {
                    string[] im2 = listBox1.SelectedItem.ToString().Split(' ');

                    Quest pQuest;
                    if (!QuestsByIndex.TryGetValue(int.Parse(im2[1]), out pQuest))
                    {
                        return;
                    }

                    QuestReward pReward = pQuest.Rewards[Index];

                    tp1Amount.Text = pReward.Amount.ToString();
                    tp1ItemID.Text = pReward.ItemID.ToString();
                    tp1reward.Text = pReward.Method.ToString();
                    tp1rewardType.Text = pReward.Type.ToString();
                }
            }

        }

        private void listBox3_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[] im = listBox3.SelectedItem.ToString().Split(' ');

          
            int Index;
            if (int.TryParse(im[1], out Index))
            {
                if (listBox1.SelectedItem != null)
                {
                    string[] im2 = listBox1.SelectedItem.ToString().Split(' ');

                    Quest pQuest;
                    if (!QuestsByIndex.TryGetValue(int.Parse(im2[1]), out pQuest))
                    {
                        return;
                    }

                    QuestItem pItem = pQuest.Items[Index];
                    tp2Amount.Text = pItem.Amount.ToString();
                    tp2Enable.Text = pItem.IsEnabled.ToString();
                    tp2ItemID.Text = pItem.ID.ToString();
                    tp2ItemType.Text = pItem.Type.ToString();

                }
            }

        }

        private void listBox4_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[] im = listBox4.SelectedItem.ToString().Split(' ');
            int Index;
            if (int.TryParse(im[2], out Index))
            {
                if (listBox1.SelectedItem != null)
                {
                    string[] im2 = listBox1.SelectedItem.ToString().Split(' ');

                    Quest pQuest;
                    if (!QuestsByIndex.TryGetValue(int.Parse(im2[1]), out pQuest))
                    {
                        return;
                    }

                    QuestMob pReward = pQuest.Mobs[Index];

                    tp3Amount.Text = pReward.AmountToKill.ToString();
                    tp3IsEnable.Text = pReward.IsEnabled.ToString();
                    tp3IsNPC.Text = pReward.IsNPC.ToString();
                    tp3MobID.Text = pReward.ID.ToString();
                    Tp3IsToKill.Text = pReward.IsToKill.ToString();

                }
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            
            if (!DatabaseManager.IsInitialed)
            {
                DatabaseForm DBForm = new DatabaseForm();
                DBForm.Show();
                return;
            }
            Quest.CheckTables();

            foreach (var pQ in QuestsByIndex.Values)
            {
                pQ.SaveSQL();
            }
            MessageBox.Show("Save All Success");
        }

        private void button3_Click(object sender, EventArgs e)
        {
            DatabaseForm DBForm = new DatabaseForm();
            DBForm.Show();
        }


    }
}
