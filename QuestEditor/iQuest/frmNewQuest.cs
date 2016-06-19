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
    public partial class frmNewQuest : Form
    {
        frmMain form;
        public frmNewQuest(frmMain main)
        {
            form = main;
            InitializeComponent();
        }

        private void frmNewQuest_Load(object sender, EventArgs e)
        {
            if (form.ViewingQuest == null) this.Close();
      //      txtQID.Text = (form.QuestFile.Quests.Count + 1).ToString();
            lblMax.Text = "Values allowed: " + ushort.MinValue.ToString() + " - " + ushort.MaxValue.ToString();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ushort id = 0;
            ushort des = 0;
            ushort title = 0;
            try
            {
                id = Convert.ToUInt16(txtQID.Text);
                des = Convert.ToUInt16(txtDesc.Text);
                title = Convert.ToUInt16(txtTitle.Text);
                foreach (Quest q in form.QuestFile.Quests)
                {
                    if (q.ID == id)
                    {
                        MessageBox.Show("QuestID already in use!");
                        return;
                    }
                }
                NewQuest(id, title, des);
            }
            catch
            {
                MessageBox.Show("Error parsing numbers");
                return;
            }
        }

        void NewQuest(ushort ID, ushort title, ushort desc)
        {
            Quest q = new Quest();
            q.ActionScript = ViewingQuest.ActionScript;

            //q.DefaultData = new byte[ViewingQuest.DefaultData.Length];
            //ViewingQuest.DefaultData.CopyTo(q.DefaultData,0);

            q.Description = desc;
            q.FinishScript = ViewingQuest.FinishScript;

            q.ItemData = new byte[ViewingQuest.ItemData.Length];
            ViewingQuest.ItemData.CopyTo(q.ItemData, 0);

            q.ID = ID;

            //q.MobData = new byte[ViewingQuest.MobData.Length];
            //ViewingQuest.MobData.CopyTo(q.MobData, 0);

            q.MaxLevel = ViewingQuest.MaxLevel;
            q.MinLevel = ViewingQuest.MinLevel;
            q.MultiQuest = ViewingQuest.MultiQuest;
            q.NeedClass = ViewingQuest.NeedClass;
            q.NeedLevel = ViewingQuest.NeedLevel;
            q.Predesessor = 0;

            q.RewardData = new byte[ViewingQuest.RewardData.Length];
            ViewingQuest.RewardData.CopyTo(q.RewardData, 0);

            q.StartingNPC = ViewingQuest.StartingNPC;
            q.StartScript = ViewingQuest.StartScript;
            q.Title = title;
            foreach (KeyValuePair<byte, byte[]> fo in ViewingQuest.UnkBytes)
            {
                byte[] newArr = new byte[fo.Value.Length];
                fo.Value.CopyTo(newArr, 0);
                q.UnkBytes.Add(fo.Key, newArr);
            }
          form.QuestFile.Quests.Add(q);
          form.ShowQuestList("");

          this.Close();
          form.Log("Duplicated Quest!");
        }

        public Quest ViewingQuest
        {
            get
            {
                return form.ViewingQuest;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (form.Editor == null) form.Editor = new frmResEditor(form);
            form.Show();
        }
    }
}
