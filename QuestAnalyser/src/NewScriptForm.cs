using System;
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
    public partial class NewScriptForm : Form
    {

        public NewScriptForm()
        {
            InitializeComponent();
        }

        private void NewScriptForm_Load(object sender, EventArgs e)
        {
            mScriptEditor.Document.SetSyntaxFromEmbeddedResource(Assembly.GetExecutingAssembly(), "QuestDataAnalyser.ScriptSyntax.txt");

        }

        private void button1_Click(object sender, System.EventArgs e)
        {
            if (ScriptNameBox.Text == "")
            {
                MessageBox.Show("Can not Save Fil with Empty Name");
                return;
            }
            if (File.Exists(@ScriptNameBox.Text + ".txt"))
            {
                MessageBox.Show("Name is Already Exists");
                return;
            }

            if (mScriptEditor.Document.Text.Length == 0)
            {
                MessageBox.Show("Script is Empty!");
                return;
            }

            string FileText = mScriptEditor.Document.Text;
            string ScriptName = ScriptNameBox.Text;

            StreamWriter file = new StreamWriter(@"Scripts/"+ScriptNameBox.Text+".txt");
            file.Write(mScriptEditor.Document.Text);
            file.Close();
            this.Close();
        }
    }
}
