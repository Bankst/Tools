using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace BlockInfoReader
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            openFileDialog1.Filter = "BlockInfo (*.shbd) | *shbd";
            openFileDialog1.FileName = "";
            if (openFileDialog1.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                       var data = File.ReadAllBytes(openFileDialog1.FileName);


                       using (var stream = new MemoryStream(data))
                       {
                           using (var reader = new BinaryReader(stream))
                           {
                           label3.Text = reader.ReadUInt32().ToString();
                           label4.Text = reader.ReadUInt32().ToString();
                           }
                       }
            }
        }
    }
}
