using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace iQuest
{
    public partial class frmAddReward : Form
    {
        frmMain form;
        public frmAddReward(frmMain main)
        {
            form = main;
            InitializeComponent();
            cmbIsGiven.Items.Clear();
            cmbIsGiven.Items.Add("Fixed");
            cmbIsGiven.Items.Add("Chosen");
            cmbIsGiven.SelectedIndex = 0;

            cmbRewardType.Items.Clear();
            cmbRewardType.Items.Add("0 Exp");
            cmbRewardType.Items.Add("1 Mon.");
            cmbRewardType.Items.Add("2 Item");
            cmbRewardType.Items.Add("4 Fame");
            cmbRewardType.SelectedIndex = 0;
            grpItems.Enabled = false;
            LoadItemList("");
        }

        private void frmAddReward_Load(object sender, EventArgs e)
        {

        }

        void LoadItemList(string filter)
        {
            lstItem.Items.Clear();
            if (filter == "")
            {
                foreach (KeyValuePair<ushort, string> item in form.ItemDic)
                    lstItem.Items.Add(item.Key.ToString() + " - " + item.Value);
            }
            else
            {
                foreach (KeyValuePair<ushort, string> item in form.ItemDic)
                    if (item.Value.ToLower().Contains(filter.ToLower())) lstItem.Items.Add(item.Key.ToString() + " - " + item.Value);
            }
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            LoadItemList(txtSearch.Text);
        }

        private void cmbRewardType_MouseClick(object sender, MouseEventArgs e)
        {
          
        }

        private void cmbRewardType_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                QuestReward.RewardType type = (QuestReward.RewardType)Convert.ToByte(cmbRewardType.Text.Substring(0, 1));
                if (type == QuestReward.RewardType.Item)
                {
                    grpItems.Enabled = true;
                    txtID.Text = "0";
                    txtAmount.Text = "1";
                }
                else
                {
                    grpItems.Enabled = false;
                    txtID.Text = "-";
                }
            }
            catch { }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                QuestReward.RewardType type = (QuestReward.RewardType)Convert.ToByte(cmbRewardType.Text.Substring(0, 1));
                QuestReward rew = new QuestReward();
                if (type == QuestReward.RewardType.Item)
                {
                    rew.Value = Convert.ToUInt16(txtID.Text);
                    rew.ItemCount = Convert.ToUInt16(txtAmount.Text);
                   
                }
                else
                {
                    rew.Amount = Convert.ToUInt64(txtAmount.Text);
                }
                rew.isGiven = (byte)(cmbIsGiven.SelectedIndex + 1);
                rew.unkShort = 0;
                rew.Type = type;
                if (form.ViewingQuest.Rewards.Count == 10)
                {
                    MessageBox.Show("Only 10 rewards allowed!");
                    this.Close();
                    return;
                } else
                form.ViewingQuest.Rewards.Add(rew);
                form.LoadRewardList(form.ViewingQuest);
                this.Close();
            }
            catch
            {
                MessageBox.Show("Please enter valid numbers!");
            }
        }

        private void lstItem_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        private void lstItem_MouseClick(object sender, MouseEventArgs e)
        {
            txtID.Text = lstItem.Text.Split(' ')[0];
        }
    }
}
