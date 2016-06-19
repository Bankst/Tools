using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Xml.Serialization;
using System.IO;

namespace FiestaBot
{
    public partial class frmConfig : Form
    {
        Config Conf;
        public frmConfig(Config mConfig)
        {
            InitializeComponent();
            Conf = mConfig;
            txtAdmins.Text = string.Join(" ", Conf.Admins);
            txtHost.Text = Conf.Host;
            txtLog.Text = Conf.LogName;
            txtKey.Text = Conf.Key;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            Conf.Host = txtHost.Text;
            Conf.LogName = txtLog.Text;
            Conf.Key = txtKey.Text;
            Conf.Admins = txtAdmins.Text.Split(' ');
            XmlSerializer xml = new XmlSerializer(typeof(Config));
            FileStream file = File.Create(Path.GetDirectoryName(Application.ExecutablePath) + "\\config.xml");
            xml.Serialize(file, Conf);
            file.Close();
            MessageBox.Show("Restarting the app now.");
            System.Diagnostics.Process.Start(Application.ExecutablePath);
            Environment.Exit(0);
        }
    }
}
