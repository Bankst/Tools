using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using FiestaInjector;

namespace FiestaHook
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
            label1.Text = Main.Hash;
        }
    }
}
