using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FiestaBot.Tools;
using System.Xml.Serialization;
using System.IO;

namespace FiestaBot
{
    public partial class PathCreator : Form
    {
        frmMain Main;
        DateTime Start;
        bool Started = false;
        MoveArray MoveArray = new MoveArray();
        public PathCreator(frmMain mMainForm)
        {
            InitializeComponent();
            MoveArray.MoveStamps = new List<MoveStamp>();
            MoveView.Columns.Add("TimeStamp", 80);
            MoveView.Columns.Add("Position", 120);
            Main = mMainForm;
            txtName.Text = Main.Player.Map;
        }

        public void AddLocation(int X, int Y, short incTimeSpan)
        {
           if(!Started)
           {
               Start = DateTime.Now;
               Started = true;
               MoveArray.StartX = X;
               MoveArray.StartY = Y;
               return;
           } 
            MoveStamp stamp = new MoveStamp();
            stamp.X = X;
            stamp.Y = Y;
            if (incTimeSpan > 0)
            {
                stamp.Span = MoveArray.MoveStamps[MoveArray.MoveStamps.Count - 1].Span + incTimeSpan;
            }
            else
            {
                stamp.Span = (DateTime.Now - Start).TotalMilliseconds;
            }
            MoveArray.MoveStamps.Add(stamp);
            ListViewItem mItem = new ListViewItem(Math.Round(stamp.Span, 0).ToString());
            if(X > 0)
            mItem.SubItems.Add(X.ToString() + ":" + Y.ToString());
            else
                mItem.SubItems.Add("Restart");
            mItem.Tag = stamp;
            if (MoveView.InvokeRequired)
            {
                MoveView.Invoke(new MethodInvoker(delegate { MoveView.Items.Add(mItem); }));
            }
            else
                MoveView.Items.Add(mItem);
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
            Main.mPathCreator = null;
        }

        private void btnRevert_Click(object sender, EventArgs e)
        {
            for (int i = MoveArray.MoveStamps.Count - 2; i > 0; --i)
            {
                MoveStamp mFrom = MoveArray.MoveStamps[i];
                MoveStamp mTo = MoveArray.MoveStamps[i - 1];
                AddLocation(mTo.X, mTo.Y, (short)(mFrom.Span - mTo.Span));
            }
        }

        private void btnRestart_Click(object sender, EventArgs e)
        {
            AddLocation(-1, -1, 1);
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
           /* SaveFileDialog diag = new SaveFileDialog();
            diag.Title = "Save Path";
            diag.InitialDirectory = Main.DataPath;
            diag.Filter = "Bot Path (*.bpt)|*.bpt";
            if (diag.ShowDialog() != DialogResult.OK) return; */
            try
            {
                XmlSerializer Ser = new XmlSerializer(typeof(MoveArray));
                if (!Directory.Exists(Main.DataPath + "\\Scripts"))
                {
                    Directory.CreateDirectory(Main.DataPath + "\\Scripts");
                }
                FileStream script = File.Create(Main.DataPath + "\\Scripts\\" + txtName.Text + ".xml");
                Ser.Serialize(script, MoveArray);
                script.Close();
                lblStatus.Text = "Saved script.";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }

    public struct MoveArray
    {
        public List<MoveStamp> MoveStamps;
        public int StartX;
        public int StartY;
    }

    public struct MoveStamp
    {
        public int X;
        public int Y;
        public double Span;
    }
}
