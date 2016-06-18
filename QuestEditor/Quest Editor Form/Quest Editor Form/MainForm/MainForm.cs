using System;
using QuestEditor;
using System.Windows.Forms;

namespace Quest_Editor_Form
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
            InitializeEventHandlers();
            InitializeSettings();

            savedChanges = true;

            if (Settings.In["SHNPath"] == "")
                questFile = new QuestFile();
            else OpenQuestFile(Settings.In["SHNPath"]);
        }

        private Quest selectedQuest;

        private bool savedChanges;
        private QuestFile questFile;

        private string settingsFile;
    }
}
