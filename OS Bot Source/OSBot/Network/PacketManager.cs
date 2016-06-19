using System;
using System.Linq;
using System.Threading;
using System.Reflection;
using System.Collections.Concurrent;
using OSBot.Tools;

namespace OSBot.Network
{
    public sealed class PacketManager
    {
        private static ConcurrentDictionary<ushort, MethodInfo> Methods;
        public int Threads { get; private set; }
        public const int DefaultThreads = 1;
        public event ObjectEvent<Exception> OnHandleError;
        private ConcurrentQueue<Pair<FiestaClient, FiestaPacket>> ToManage;
        private bool IsRunning;
        
        public PacketManager(int Threads = DefaultThreads)
        {
            LoadMethods();
            this.Threads = Threads;
            ToManage = new ConcurrentQueue<Pair<FiestaClient, FiestaPacket>>();
            IsRunning = true;
            for (int i = 0; i < Threads; i++)
            {
                new Thread(ManagePackets).Start();
            }
        }
        
        private static void LoadMethods()
        {
            if (Methods == null)
            {
                Methods = new ConcurrentDictionary<ushort, MethodInfo>();
                Array.ForEach(Reflector.Global.GetMethodsWithAttribute<PacketHandlerMethod>(), pair => Methods.TryAdd(pair.First.OpCode, pair.Second));
            }
        }

        public void Dispose()
        {
            IsRunning = false;
            ToManage = null;
            OnHandleError = null;
        }
        
        public void Handle(FiestaClient Client, FiestaPacket Packet)
        {
            ToManage.Enqueue(new Pair<FiestaClient, FiestaPacket>(Client, Packet));
        }



        private void ManagePackets()
        {
            while (IsRunning)
            {
                Pair<FiestaClient, FiestaPacket> pair;
                if (ToManage.TryDequeue(out pair))
                {
                    try
                    {
                        MethodInfo method;
                        if (Methods.TryGetValue(pair.Second.OpCode, out method))
                            method.Invoke(null, new object[] { pair.First, pair.Second });
                    }
                    catch (Exception ex)
                    {
                        ex = (ex.InnerException ?? ex);

                        if (OnHandleError != null)
                            OnHandleError.Invoke(ex);
                    }
                    finally
                    {
                        pair.First = null;
                        pair.Second.Dispose();
                        pair.Second = null;
                    }
                }
              
                Thread.Sleep(1);
            }
        }
    }
}