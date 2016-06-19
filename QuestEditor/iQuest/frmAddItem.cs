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
    public partial class frmAddItem : Form
    {
        frmMain form;
        public frmAddItem(frmMain main)
        {
            form = main;
            InitializeComponent();
            LoadItemList("");
        }

        private void frmAddItem_Load(object sender, EventArgs e)
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
                 if(item.Value.ToLower().Contains(filter.ToLower())) lstItem.Items.Add(item.Key.ToString() + " - " + item.Value);
            }
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            LoadItemList(txtSearch.Text);
        }

        private void lstItem_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void lstItem_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            try
            {

                ushort ID = Convert.ToUInt16(lstItem.Text.Split(' ')[0]);
                if (form.ItemDic.ContainsKey(ID)) txtID.Text = ID.ToString();
            }
            catch { }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ushort itemid = 0;
            ushort amount = 0;
            byte type = 0;
            try
            {
                itemid = Convert.ToUInt16(txtID.Text);
                amount = Convert.ToUInt16(txtAmount.Text);
                type = Convert.ToByte(txtType.Text);
            }
            catch
            {
                MessageBox.Show("Please enter valid numbers!");
                return;
            }
            Item item = new Item();
            item.Amount = amount;
            item.ID = itemid;
            item.Type = type;
            form.ViewingQuest.Items.Add(item);
            form.LoadItemList(form.ViewingQuest);          
            this.Close();
        }
    }
}
