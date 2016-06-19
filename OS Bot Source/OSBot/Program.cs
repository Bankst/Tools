using System;
using System.Linq;
using System.Reflection;
using System.Collections.Generic;
using OSBot.Tools;

namespace OSBot
{
    public static class Program
    {
        public static string StartDirectory { get; private set; }
        public static bool IsRunning { get; private set; }
        public static bool ForceExit { get; private set; }
        
        [STAThread]
        
        private static void Main(string[] args)
        {
            StartDirectory = StringHelper.EscapeString(AppDomain.CurrentDomain.BaseDirectory);
            IsRunning = true;
            InvokeStartupMethods();
        }
       
        private static void InvokeStartupMethods()
       {
            //create dictionary
            var dic = new Dictionary<AppStartStep, List<Pair<AppStartMethod, MethodInfo>>>();
            
            //fill with defaults
            Enum.GetValues(typeof(AppStartStep)).Cast<AppStartStep>().ToList().ForEach(s => dic.Add(s, new List<Pair<AppStartMethod, MethodInfo>>()));

            //fill with start methods from all assemblies
            Array.ForEach(Reflector.Global.GetMethodsWithAttribute<AppStartMethod>(), pair => dic[pair.First.Step].Add(pair));

            //invoke in ordered range
            dic.OrderBy(k => (uint)k.Key).ToList().ForEach(p => p.Value.OrderBy(pa => pa.First.InnerStep).ToList().ForEach(pai => pai.Second.Invoke(null, null)));
        }
        
        public static void Exit()
        {
            //Todo: recode lolz...
            IsRunning = false;
            ForceExit = true;
            Environment.Exit(1);
        }
    }
}