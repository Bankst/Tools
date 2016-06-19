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
    public partial class frmResEditor : Form
    {
        frmMain form;
        public frmResEditor(frmMain main)
        {
            form = main;
            InitializeComponent();
        }

        private void frmResEditor_Load(object sender, EventArgs e)
        {
            txtText.Tag = 0;
            UpdateFreeLabel();
        }

        private void btnshow_Click(object sender, EventArgs e)
        {
            ushort ID = 0;
            try
            {
                ID = Convert.ToUInt16(txtResID.Text);
            }
            catch
            {
                MessageBox.Show("Invalid number!");
                return;
            }
            int rowID = form.QuestDialog.GetRowByIndex(0, ID.ToString());
            if (rowID < 0)
            {
                Log("Not found!");
                txtText.Tag = 0;
                return;
            }
            else
            {
                txtText.Text = form.QuestDialog.table.Rows[rowID][1].ToString();
                txtSaveAs.Text = txtResID.Text;
                txtText.Tag = ID;
            }
        }

        void UpdateFreeLabel()
        {
            ushort id = form.GetFreeQKey();
            lblFreeID.Text = "Free ID:" + id.ToString();
            lblFreeID.Tag = id;
        }

       public void ShowID(ushort ID)
        {
            int rowID = form.QuestDialog.GetRowByIndex(0, ID.ToString());
            if (rowID < 0)
            {
                Log("Not found!");
                txtText.Tag = 0;
                return;
            }
            else
            {
                txtText.Text = form.QuestDialog.table.Rows[rowID][1].ToString();
                txtResID.Text = ID.ToString();
                txtSaveAs.Text = txtResID.Text;
                txtText.Tag = ID;
            }
        }

      

        public void Log(string text)
        {
            statusLabel.Text = text;
        }

        private void frmResEditor_FormClosing(object sender, FormClosingEventArgs e)
        {
            e.Cancel = true;
            this.Hide();
        }

        private void btnSaveResource_Click(object sender, EventArgs e)
        {
                int rowID = form.QuestDialog.GetRowByIndex(0,txtSaveAs.Text);
                if (rowID > -1)
                {
                    if (!(MessageBox.Show("Replace old text?", "Replace", MessageBoxButtons.YesNo) == DialogResult.Yes)) return;
                    form.QuestDialog.table.Rows[rowID][1] = txtText.Text;
                    Log("Changed successfully!");
                } else { // new one
                    DataRow row = form.QuestDialog.table.NewRow();
                    row[0] = txtSaveAs.Text;
                    row[1] = txtText.Text;
                    form.QuestDialog.table.Rows.Add(row);
                    Log("Added new textdata!");
                }
                if (form.ViewingQuest != null) form.RefreshQuest(); 
                form.LoadDiagDic(); //refresh
                txtResID.Text = txtSaveAs.Text;
                UpdateFreeLabel();
                form.ShowQuestList("");
        }

        private void lblFreeID_Click(object sender, EventArgs e)
        {
            txtSaveAs.Text = lblFreeID.Tag.ToString();
        }
    }
}
