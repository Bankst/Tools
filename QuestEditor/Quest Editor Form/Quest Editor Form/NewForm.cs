using System;
using QuestEditor;
using System.Windows.Forms;

namespace Quest_Editor_Form
{
    public partial class NewForm : Form
    {
        public NewForm(QuestFile questFile)
        {
            InitializeComponent();

            txtQuestID.TextChanged += new EventHandler(txtQuestID_TextChanged);
            txtQuestID.KeyDown += new KeyEventHandler(txtQuestID_KeyDown);
            btnFinish.Click += new EventHandler(btnFinish_Click);

            this.questFile = questFile;
            this.QuestID = -1;
        }

        private void btnFinish_Click(object sender, EventArgs e)
        {
            ExitForm(int.Parse(txtQuestID.Text));
        }

        private void PerformCheck(int questID)
        {
            if (!questFile.QuestExists(questID))
            {
                btnFinish.Enabled = true;
            }
            else btnFinish.Enabled = false;
        }

        private void txtQuestID_TextChanged(object sender, System.EventArgs e)
        {
            if (txtQuestID.Text == "")
                btnFinish.Enabled = false;

            try
            {
                PerformCheck(int.Parse(txtQuestID.Text));
            }
            catch (FormatException) { }
        }

        private void txtQuestID_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter && btnFinish.Enabled)
            {
                ExitForm(int.Parse(txtQuestID.Text));
            }
        }

        private void ExitForm(int questID)
        {
            this.QuestID = questID;
            this.Close();
        }

        public int QuestID;
        private QuestFile questFile;
    }
}
