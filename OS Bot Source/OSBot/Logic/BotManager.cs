using System;
using System.Threading;
using System.Collections.Generic;
using OSBot.GUI;

namespace OSBot.Logic
{
    public static class BotManager
    {
        public static List<FiestaBot> Bots { get; private set; }
        
        [AppStartMethod(AppStartStep.Logic)]
        public static void OnAppStart()
        {
            Bots = new List<FiestaBot>();
        }
        
        public static void StartBot(FiestaBot Bot)
        {
            //add to list
            Bots.Add(Bot);
            //add tab to mainwindow
            GUIManager.Invoke(() =>
                {
                    GUIManager.MainWindow.TabControl_Main.Items.Add(Bot.Tab);
                    GUIManager.MainWindow.TabControl_Main.SelectedItem = Bot.Tab;
                });
            new Thread(Bot.StartConnect).Start();
        }
        public static void StopBot(FiestaBot Bot)
        {
        }
    }
}