using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Reflection;
using System.Text;
using System.Windows.Forms;
using WeifenLuo.WinFormsUI.Docking;

namespace QuestDataAnalyser
{
    public partial class ScriptForm : DockContent
    {
        private string mPath = @"Scripts/QuestScript.txt";

        public ScriptForm()
        {
            InitializeComponent();
        }
        public ScriptForm(string path)
        {
            mPath = path;
            InitializeComponent();
        }
        private void ScriptForm_Load(object pSender, EventArgs pArgs)
        {
            mScriptEditor.Document.SetSyntaxFromEmbeddedResource(Assembly.GetExecutingAssembly(), "QuestDataAnalyser.ScriptSyntax.txt");
            if (File.Exists(mPath)) mScriptEditor.Open(mPath);
        }

        private void mScriptEditor_TextChanged(object pSender, EventArgs pArgs)
        {
            mSaveButton.Enabled = true;
        }

        private void mSaveButton_Click(object pSender, EventArgs pArgs)
        {
            if (mScriptEditor.Document.Text.Length == 0)
            {
                File.Delete(mPath);
            }
            else
            {
                mScriptEditor.Save(mPath);
                Program.MainForm.RefreshData();
                Program.MainForm.mScriptForm.Close();
            }
     
        }
    }
}
