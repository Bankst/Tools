using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using MapleLib.PacketLib;
using System.Net;
using System.Net.Sockets;

namespace GMClient
{
    public partial class frmMain : Form
    {
        public int Port = 2333;
        public string IP = "127.0.0.1";
        public string username = "Csharp";
        public string password = "blah";
        public bool Authenciated = false;

        public Session nSession { get; set; }

        public frmMain()
        {
            InitializeComponent();
            LoadLocal();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
          
        }

        void StartConn()
        {
            Connector conn = new Connector();
            conn.OnClientConnected += new Connector.ClientConnectedHandler(conn_OnClientConnected);
            conn.Connect(new IPEndPoint(IPAddress.Parse(IP), Port));
        }

        private void LoadLocal()
        {
            lstLog.Columns.Clear();
            lstLog.Items.Clear();
            lstLog.Columns.Add("Time", 70);
            lstLog.Columns.Add("Info", 350);
            StartConn();
   //   Socket sock =  new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
    //  sock.BeginConnect(new IPEndPoint(IPAddress.Parse(IP), Port), new AsyncCallback(OnConnected), sock);
        }

        private void OnConnected(IAsyncResult ar)
        {
            try
            {
                Socket Sock = (Socket)ar.AsyncState;
                Sock.EndConnect(ar);
                nSession = new Session(Sock, SessionType.CLIENT_TO_SERVER);
            }
            catch (Exception e)
            {
                Log("Error connecting to server: {0}", e.Message);
            }
        }

        void conn_OnClientConnected(Session session)
        {
            nSession = session;
            nSession.OnPacketReceived += new Session.PacketReceivedHandler(nSession_OnPacketReceived);
            nSession.OnInitPacketReceived += new Session.InitPacketReceived(nSession_OnInitPacketReceived);
            Log("Connection success");
        }

        void nSession_OnPacketReceived(PacketReader packet)
        {
            Opcode opcode = (Opcode)packet.ReadShort();
            switch (opcode)
            {
                case Opcode.S_REQUESTLOGIN:
                    byte suc = packet.ReadByte();
                    if (suc == 1)
                    {
                        Authenciated = true;
                        groupBox1.Enabled = false;
                        Log("You are now logged in.");
                    }
                    else
                    {
                        Log("Wrong username or login.");
                    }
                    break;
                default:
                    Log("Unhandled packet {0}", opcode.ToString());
                    break;
            }
            System.Threading.Thread.Sleep(20);
        }

        void SendAuth()
        {
            PacketWriter writer = new PacketWriter();
            writer.WriteShort((short)Opcode.C_LOGINDATA);
            writer.WriteMapleString(username);
            writer.WriteMapleString(password);
            nSession.SendPacket(writer);
        }

        void nSession_OnInitPacketReceived(short version, byte serverIdentifier)
        {
            Log("Server running on version " + version);
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

        private void frmMain_FormClosed(object sender, FormClosedEventArgs e)
        {
            try
            {
                nSession.Socket.Close();
                Application.Exit();
            }
            catch { }
        }

        private void tabPage2_Click(object sender, EventArgs e)
        {

        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!Authenciated) tabControl1.SelectedIndex = 0;
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            username = txtUsername.Text;
            password = txtPass.Text;
            if(!Authenciated) SendAuth();
        }
    }
}
