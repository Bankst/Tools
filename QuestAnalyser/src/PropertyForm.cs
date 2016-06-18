using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using WeifenLuo.WinFormsUI.Docking;

namespace QuestDataAnalyser
{
    public partial class PropertyForm : DockContent
    {
        public PropertyForm()
        {
            InitializeComponent();
        }

        public AnalyserForm MainForm { get { return ParentForm as AnalyserForm; } }
        public PropertyGrid Properties { get { return mProperties; } }

        private void mProperties_Click(object sender, EventArgs e)
        {

        }
    }
}
