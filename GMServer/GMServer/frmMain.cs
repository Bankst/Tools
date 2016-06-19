using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using MapleLib.PacketLib;

namespace GMServer
{
    public partial class frmMain : Form
    {
        private int Port = 2333;
        private Listener nListener { get; set; }
        public List<GmClient> Clients = new List<GmClient>();
        public frmMain()
        {
            InitializeComponent();
            LoadLocal();
        }

        private void LoadLocal()
        {
            lstLog.Columns.Clear();
            lstLog.Items.Clear();
            lstLog.Columns.Add("Time", 70);
            lstLog.Columns.Add("Info", 350);
            try
            {
                nListener = new Listener();
                nListener.OnClientConnected += new Listener.ClientConnectedHandler(nListener_OnClientConnected);
                nListener.Listen(Port);
                Log("Service started on port {0}", Port);
            }
            catch (Exception ex) { Log("Error starting service: {0}", ex.Message); }

            //database check
            if (!DatabaseManager.Instance.CheckConnection())
            {
                Log("Cannot connect to DB server.");
            }
        }

        void nListener_OnClientConnected(Session session)
        {
            GmClient client = new GmClient(session);
            client.OnClientDisconnect += new GmClient.OnDiscconnect(client_OnClientDisconnect);
            lock (Clients) Clients.Add(client);
            Log("New client connection from {0}", session.Socket.RemoteEndPoint.ToString());
        }

        private void Form1_Load(object sender, EventArgs e)
        {
          
        }

        void client_OnClientDisconnect(GmClient Client)
        {
            lock (Clients)
            {
                if (Clients.Contains(Client)) Clients.Remove(Client);
            }
            Log("{0} disconnected from server", Client.Username);
        }

        public void Log(string text, params object[] pArgs)
        {
            ListViewItem item = new ListViewItem();
            item.Text = DateTime.Now.ToString("HH:mm:ss");
            item.SubItems.Add(string.Format(text, pArgs));
            if (lstLog.InvokeRequired)
                lstLog.Invoke((MethodInvoker)delegate { lstLog.Items.Add(item); });
            else
                lstLog.Items.Add(item);
        }
    }
}
