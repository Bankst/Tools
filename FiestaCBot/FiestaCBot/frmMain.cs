using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Net;
using System.IO;
using System.Diagnostics;
using System.Runtime.InteropServices;

namespace FiestaCBot
{
    public partial class frmMain : Form
    {
        public string username = "";
        public string password = "";
        public string IP = "207.211.84.14";
        public frmMain()
        {
            InitializeComponent();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
           
        }

        string GetLoginToken(string username, string pass)
        {
            string url = "http://rest.outspark.net/user/v1/login?realm=divinesouls&user=" + username + "&password=" + pass + "&version=840";
            HttpWebRequest request = (HttpWebRequest)
                 WebRequest.Create(url);
            Stream response = ((HttpWebResponse)
                request.GetResponse()).GetResponseStream();
            byte[] buff = new byte[1024];
            int count = response.Read(buff, 0, 1024);
            response.Dispose();
            return System.Text.Encoding.ASCII.GetString(buff, 0, count);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show(GetLoginToken("username", "password"));
        }

        public static string MD5(string password)
        {
            byte[] textBytes = System.Text.Encoding.Default.GetBytes(password);
                System.Security.Cryptography.MD5CryptoServiceProvider cryptHandler;
                cryptHandler = new System.Security.Cryptography.MD5CryptoServiceProvider();
                byte[] hash = cryptHandler.ComputeHash(textBytes);
                string ret = "";
                foreach (byte a in hash)
                {
                    if (a < 16)
                        ret += "0" + a.ToString("x");
                    else
                        ret += a.ToString("x");
                }
                return ret;
        }

        void StartClient()
        {
            string token = GetLoginToken(username, MD5(password)).Substring(10, 44);
          //  startInfo.FileName = @"D:\Games\FiestaUS\Fiesta.bin";
      /*      string args = string.Format("-t {0} -i {1} -u http://store.outspark.com/game/fiesta -osk_token {0} -osk_server {1} -osk_store http://store.outspark.com/game/fiesta", token, IP);
           
            ProcessStartInfo info = new ProcessStartInfo(@"D:\Games\FiestaUS\Fiesta.bin", args);
            info.WorkingDirectory = @"D:\Games\FiestaUS\";
            info.Verb = "runas";
            info.UseShellExecute = false;
            Process process = new Process();
            process.StartInfo = info;

//            string str5 = "660970B4785BCA4650356D9844CFE86274070A7C1A847A5C80B29E977955C46513BED3B744670DBD38F568E3B7410CEF739AE61146936A57AA62122BFB6F0BC90F7D04245246E404A17B5E10D445631E8828EF536410D76F435855D8DF5084C58AA808F21BFA785D77D49CE9673A77";
        //    S1(str5, @"D:\Games\FiestaUS\Fiesta.bin", 60);

          process.Start(); */
        }

        [DllImport("MiddEngn.dll")]
        public static extern int S1(string pArgv, string Gamepath, int dwTimeout);
 
    }
}
