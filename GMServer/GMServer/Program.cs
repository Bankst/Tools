using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace GMServer
{
    static class Program
    {
        public static frmMain MainFrm { get; set; }
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            MainFrm = new frmMain();
            Application.Run(MainFrm);
        }
    }
}
