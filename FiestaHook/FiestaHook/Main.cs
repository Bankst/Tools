using System;
using System.Collections.Generic;
using System.Text;
using EasyHook;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using System.Threading;
using System.IO;
using System.Diagnostics;
using FiestaInjector;

namespace FiestaHook
{
    public class Main : IEntryPoint
    {
        public static string Hash = "";
        internal static FiestaHookInterface Interface;

        internal frmMain form = new frmMain();

        public Main(RemoteHooking.IContext InContext, String InChannelName)
        {
            Interface = RemoteHooking.IpcConnectClient<FiestaHookInterface>(InChannelName);
        }

        public void Run(RemoteHooking.IContext InContext, String InChannelName)
        {
            try
            {
                // Call Host
                Interface.IsInstalled(RemoteHooking.GetCurrentProcessId());
                LocalHook.EnableRIPRelocation();
             //   ScanMemory();
              /*  LoadOffsets();
                LoadOriginals();

                hooks = new List<LocalHook>();
                hooks.Add(LocalHook.Create(SendPacketAddress, new DSendPacket(form.SendPacketHooked), this));

                hooks.ForEach(hook => hook.ThreadACL.SetExclusiveACL(new Int32[] { 0 }));

                Interface.WriteConsole("Initialized Hooks: " + hooks.Count);
                */
                form.ShowDialog();
            }
            catch (Exception ex) { Interface.WriteConsole(ex.Message); }
        }

        void ScanMemory()
        {
            Scanner scanner = new Scanner();
            try
            {
                Hash = scanner.ComputeHash();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
