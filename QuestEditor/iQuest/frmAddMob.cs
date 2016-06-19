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
    public partial class frmAddMob : Form
    {
        frmMain form;
        public frmAddMob(frmMain main)
        {
            form = main;
            InitializeComponent();
        }

        private void frmAddMob_Load(object sender, EventArgs e)
        {
            lstIsKill.Items.Clear();
            lstIsKill.Items.Add("False");
            lstIsKill.Items.Add("True");
            lstIsKill.SelectedIndex = 0;
            LoadMobList("");
        }

        void LoadMobList(string filter)
        {
            lstMobs.Items.Clear();
            if (filter == "")
            {
                foreach (KeyValuePair<ushort, string> mob in form.MobDic)
                    lstMobs.Items.Add(mob.Key.ToString() + " - " + mob.Value);
            }
            else
            {
                foreach (KeyValuePair<ushort, string> mob in form.MobDic)
                if(mob.Value.ToLower().Contains(filter.ToLower())) lstMobs.Items.Add(mob.Key.ToString() + " - " + mob.Value);
            }
        }

        private void lstMobs_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            try{
            ushort ID = Convert.ToUInt16(lstMobs.Text.Split(' ')[0]);
            if (form.MobDic.ContainsKey(ID)) txtMobID.Text = ID.ToString();
            } catch {}
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            LoadMobList(txtSearch.Text);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ushort mobid = 0;
            ushort amount = 0;
            bool isKill = true;
            try
            {
                mobid = Convert.ToUInt16(txtMobID.Text);
                amount = Convert.ToUInt16(txtAmount.Text);
                isKill = Convert.ToBoolean(lstIsKill.SelectedIndex);
            }
            catch
            {
                MessageBox.Show("Please enter valid numbers!");
                return;
            }
            if (!isKill && amount > 0)
            {
                MessageBox.Show("NPCs need amount 0!");
                txtAmount.Text = "0";
                return;
            }
            Mob mob = new Mob();
            mob.Amount = (byte)amount;
            mob.HasToBeKilled = isKill;
            mob.ID = mobid;
            mob.isMob = false;
            form.ViewingQuest.Mobs.Add(mob);
            form.LoadMobList(form.ViewingQuest);
            this.Close();
        }

        private void lstMobs_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
