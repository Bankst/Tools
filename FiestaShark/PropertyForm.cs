using System;
using System.Windows.Forms;
using WeifenLuo.WinFormsUI.Docking;

namespace FiestaShark {
	public partial class PropertyForm : DockContent
    {
        public PropertyForm()
        {
            InitializeComponent();
        }

        public MainForm MainForm { get { return ParentForm as MainForm; } }
        public PropertyGrid Properties { get { return mProperties; } }

        private void mProperties_Click(object sender, EventArgs e)
        {

        }
    }
}
