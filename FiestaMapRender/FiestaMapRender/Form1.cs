using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Threading;

namespace FiestaMapRender
{
    public partial class Form1 : Form
    {
        bool busy = false;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (busy)
            {
                MessageBox.Show("Already parsing. Please wait.");
                return;
            }
            FolderBrowserDialog diag = new FolderBrowserDialog();
            if (diag.ShowDialog() != System.Windows.Forms.DialogResult.OK) return;
            new Thread(() => ParseAllMaps(diag.SelectedPath)).Start();
        }

        private void ParseAllMaps(string folder)
        {
            DirectoryInfo info = new DirectoryInfo(folder);
            FileInfo[] blocks = info.GetFiles("*.shbd", SearchOption.AllDirectories);
            SetLabel("Done: 0/" + blocks.Length);
            busy = true;
            DateTime start = DateTime.Now;
            for (int i = 0; i < blocks.Length; i++)
            {
                try
                {
                    MapRender render = new MapRender(blocks[i].FullName);
                    Bitmap lulz = render.GetBitmap();
                    using (FileStream stream = File.Create(Path.GetFileNameWithoutExtension(blocks[i].FullName) + ".png"))
                    {
                        lulz.Save(stream, System.Drawing.Imaging.ImageFormat.Png);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("could not parse " + Path.GetFileNameWithoutExtension(blocks[i].FullName) + ": " + ex.Message);
                }
                SetLabel("Done: " + i + "/" + blocks.Length);
            }
            TimeSpan totaltime = DateTime.Now - start;
            SetLabel("Finished in " + Math.Round(totaltime.TotalSeconds, 1) + " seconds.");
            busy = false;
        }

        public void SetLabel(string text)
        {
            if (label1.InvokeRequired)
            {
                label1.Invoke(new MethodInvoker(() => label1.Text = text ));
            }
            else
            {
                label1.Text = text;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (busy)
            {
                MessageBox.Show("Already converting, please wait.");
                return;
            }
            OpenFileDialog diag = new OpenFileDialog();
            diag.Filter = "SHBD File (*.shbd)|*.shbd";
            if (diag.ShowDialog() != System.Windows.Forms.DialogResult.OK) return;
            MapRender render = new MapRender(diag.FileName);
            Bitmap lulz = render.GetBitmap();
            using (FileStream stream = File.Create(Path.GetFileNameWithoutExtension(diag.FileName) + ".png"))
            {
                lulz.Save(stream, System.Drawing.Imaging.ImageFormat.Png);
            }
            MessageBox.Show("Done!");
        }

        private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            Environment.Exit(0);
        }
    }
}
