using System;
using System.Net;
using System.Windows;
using System.Threading;
using System.ComponentModel;
using OSBot.Cryptography;
using OSBot.GUI;
using OSBot.GUI.Forms;

namespace OSBot.Logic.Tokens
{
    public static class TokenManager
    {
        public static ConnectForm ConnectForm { get; private set; }
        public const string TokenLink_Left = "http://api.outspark.com/user/v1/token/fiesta/";
        public const string TokenLink_Right = "/i6fqvdbrk5qu08032012.json";
        public const string TokenLink_LoginMask = "{0}/{1}";
        private static WebClient WebClient;
        private static TokenResponse TokenResponse;
        private static string Username
        {
            get
            {
                string name = "";
                GUIManager.Invoke(() => name = ConnectForm.TextBox_ID.Text);
                return name;
            }
        }

        private static string Password
        {
            get
            {
                string pw = "";
                GUIManager.Invoke(() => pw = ConnectForm.PasswordBox_Password.Password);
                return pw;
            }
        }













        //init & events
        [AppStartMethod(AppStartStep.Logic, 0)]
        public static void OnAppStart()
        {
            ConnectForm = new ConnectForm();
            ConnectForm.Closing += On_ConnectForm_Closing;

            ConnectForm.Button_Connect.Click += On_ConnectForm_Button_Connect_Click;


            WebClient = new WebClient();
            WebClient.DownloadStringCompleted += On_WebClient_DownloadStringCompleted;


            //mainwindow events
            GUIManager.MainWindow.TopMenu_Connection_Connect.Click += On_MainWindow_Connect_Click;
        }
        private static void On_MainWindow_Connect_Click(object sender, RoutedEventArgs args)
        {
            ConnectForm.Owner = GUIManager.MainWindow;
            ConnectForm.ShowDialog();
        }
        //for fixing connect form reopen
        private static void On_ConnectForm_Closing(object sender, CancelEventArgs args)
        {
            //cancel args
            args.Cancel = true;

            //just hide the window, dont close it
            ConnectForm.Hide();
        }
        private static void On_ConnectForm_Button_Connect_Click(object sender, RoutedEventArgs args)
        {
            new Thread(BeginConnect).Start();
        }





        //privates
        private static void ToggleControls(bool Enabled)
        {
            GUIManager.Invoke(() =>
                {
                    ConnectForm.TextBox_ID.IsEnabled = Enabled;
                    ConnectForm.PasswordBox_Password.IsEnabled = Enabled;
                    ConnectForm.Button_Connect.IsEnabled = Enabled;
                });
        }
        private static void SetStatus(string Message)
        {
            GUIManager.Invoke(() => ConnectForm.Label_Status.Content = Message);
        }






        //getting token
        private static void BeginConnect()
        {
            ToggleControls(false);

            SetStatus("Checking login...");


            //create link
            var link = String.Format("{0}{1}{2}", TokenLink_Left, String.Format(TokenLink_LoginMask, Username, MD5Crypto.GetHash(Password)), TokenLink_Right);

            //get token
            WebClient.DownloadStringAsync(new Uri(link));
        }
        private static void On_WebClient_DownloadStringCompleted(object sender, DownloadStringCompletedEventArgs args)
        {
            if (args.Cancelled)
            {
                SetStatus("Some wired error occured...");
                ToggleControls(true);
                return;
            }



            if (TokenResponse != null)
            {
                //clear old response to save ram...
                TokenResponse.Dispose();
            }


            //create token response class
            TokenResponse = new TokenResponse(args.Result);


            //check if response succes etc
            if (!TokenResponse.LoginSucces)
            {
                SetStatus("Login failed.");
                ToggleControls(true);
                return;
            }


            //close form
            GUIManager.Invoke(() => ConnectForm.Hide());
            ToggleControls(true);


            //create new tab and connect to fiesta server
            var bot = new FiestaBot(Username, Password, TokenResponse.LoginToken);
            BotManager.StartBot(bot);
        }
    }
}