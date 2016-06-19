using System;
using System.Threading;
using System.ComponentModel;
using OSBot.GUI.Forms;

namespace OSBot.GUI
{
    public static class GUIManager
    {
        public static MainWindow MainWindow { get; private set; }




        public static void Invoke(Action Action)
        {
            //check threads
            if (Thread.CurrentThread != MainWindow.Dispatcher.Thread)
            {
                //invoke mainwindow
                MainWindow.Dispatcher.Invoke(Action);
            }
            else
            {
                //default invoke
                Action.Invoke();
            }
        }
        public static void Invoke(Action<MainWindow> Action)
        {
            Invoke(() => Action.Invoke(MainWindow));
        }











        [AppStartMethod(AppStartStep.PreData, 0)]
        public static void OnAppPreStart()
        {
            MainWindow = new MainWindow();
            MainWindow.Closing += On_MainWindow_Closing;
        }
        private static void On_MainWindow_Closing(object sender, CancelEventArgs args)
        {
            args.Cancel = !Program.ForceExit;

            if (!Program.ForceExit) // recode
                Program.Exit();
        }





        [AppStartMethod(AppStartStep.GUI, uint.MaxValue)]
        public static void OnAppStart()
        {
            MainWindow.ShowDialog();
        }

    }
}