using System;
using System.Collections.Generic;
using System.Text;
using System.Diagnostics;
using EasyHook;
using System.Threading;
using System.Runtime.Remoting;

namespace FiestaInjector
{

    public class FiestaHookInterface : MarshalByRefObject
    {
        public void IsInstalled(Int32 InClientPID)
        {
            Console.WriteLine("Hook installed in target {0}.\r\n", InClientPID);
        }

        public void WriteConsole(string s)
        {
            Console.WriteLine("[DLL] {0}", s);
        }
    }

    class Program
    {
        static String ChannelName = null;
        public const string ProcessName = "FiestaZ.bin";

        static void Main(string[] args)
        {
            Console.WriteLine("Fiesta Injector 1.0, waiting for {0}", ProcessName);
            Console.Title = "Fiesta injector";
            string processName = ProcessName;
            bool lookingForProcess = true;
            while (lookingForProcess)
            {
                Process[] processes = Process.GetProcessesByName(processName);
                if (processes.Length > 0)
                {
                    int pid = processes[0].Id;
                    string path = @"FiestaHook.dll";
                    string ExeName = @"FiestaInjector.exe";

                    Config.Register("Fiesta Hook", path, ExeName);

                    RemoteHooking.IpcCreateServer<FiestaHookInterface>(ref ChannelName, WellKnownObjectMode.SingleCall);
                    RemoteHooking.Inject(pid, path, path, ChannelName);
                    lookingForProcess = false;
                    Console.WriteLine("Injected dll successfully!");
                }
                else
                {
                    Console.Write(".");
                    Thread.Sleep(500);
                }
            }
            Console.ReadLine();
        }
    }
}
