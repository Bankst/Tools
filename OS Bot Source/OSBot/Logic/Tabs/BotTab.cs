using System;
using System.Windows.Controls;
using OSBot.GUI;
using OSBot.GUI.Controls;

namespace OSBot.Logic.Tabs
{
    public sealed class BotTab : TabItem
    {
        public FiestaBot FiestaBot { get; private set; }
        public BotControl BotControl { get; private set; }
        
        public BotTab(FiestaBot FiestaBot)
        {
            this.FiestaBot = FiestaBot;
            Load();
            Content = BotControl;
        }

        public void Dispose()
        {
            FiestaBot = null;
            BotControl = null;
        }
        
        public void ChangeSubPanel(object NewPanel)
        {
            GUIManager.Invoke(() => BotControl.Frame_SubSites.Content = NewPanel);
        }
               
        private void Load()
        {
            Header = FiestaBot.Username;
            BotControl = new BotControl();
            BotControl.Label_ConnectInfo_ServerIP.Content = FiestaBot.ServerIP;
            BotControl.Label_ConnectInfo_ServerPort.Content = FiestaBot.ServerPort;
            BotControl.Label_ConnectInfo_UserID.Content = FiestaBot.Username;
        }
    }
}