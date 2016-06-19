using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FiestaOpcodeConverter
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void btnConvertOld_Click(object sender, EventArgs e)
        {
            try
            {
                ushort value;
                string input = "";
                if (textBox1.Text.StartsWith("0x"))
                {
                    input = textBox1.Text.Substring(2);
                }
                else
                {
                    input = textBox1.Text;
                }
                if (ushort.TryParse(input, System.Globalization.NumberStyles.HexNumber, null, out value))
                {
                    byte header = Convert.ToByte(value >> 10);
                    byte type = Convert.ToByte(value & 1023);
                    nmrHeader.Value = header;
                    nmrType.Value = type;
                }
            }
            catch (Exception Exception) { MessageBox.Show(Exception.Message); }
        }

        private void btnConvertNumeric_Click(object sender, EventArgs e)
        {
            try
            {
                ushort value = Convert.ToUInt16((((byte)nmrHeader.Value) << 10) + (((byte)(nmrType.Value)) & 1023));
                textBox1.Text = "0x" + value.ToString("X4");
            }
            catch { }
        }
    }
}
