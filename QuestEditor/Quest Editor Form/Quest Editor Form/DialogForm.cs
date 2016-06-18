using System;
using System.IO;
using System.Windows.Forms;

namespace Quest_Editor_Form
{
    public partial class DialogForm : Form
    {
        public DialogForm(DialogType type)
        {
            InitializeComponent();
            this.type = type;
        }

        private void txtDir_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            DialogResult result;

            if (type == DialogType.Open)
            {
                OpenFileDialog fileDialog;

                fileDialog = new OpenFileDialog();
                fileDialog.Filter = "SHN Files (*.shn)|*.shn";
                fileDialog.Title = "Locate QuestData.shn";

                result = fileDialog.ShowDialog();

                if (result == DialogResult.OK)
                    Path = fileDialog.FileName;

                fileDialog.Dispose();
            }
            else
            {
                SaveFileDialog fileDialog;

                fileDialog = new SaveFileDialog();
                fileDialog.Filter = "SHN Files (*.shn)|*.shn";
                fileDialog.Title = "Save QuestData.shn";

                result = fileDialog.ShowDialog();

                if (result == DialogResult.OK)
                    Path = fileDialog.FileName;

                fileDialog.Dispose();
            }

            txtDir.Text = Path;
        }

        private void btnFinish_Click(object sender, System.EventArgs e)
        {
            if (txtDir.Text == "")
                return;

            if (type == DialogType.Open && !File.Exists(Path))
                return;

            this.Close();
        }

        private void txtDir_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                btnFinish.PerformClick();
        }

        public string Path;
        private DialogType type;
    }

    public enum DialogType
    {
        Save = 0,
        Open = 1,
    }
}
