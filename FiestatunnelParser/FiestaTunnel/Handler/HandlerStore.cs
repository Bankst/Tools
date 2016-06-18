using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using FiestaLib.Util;

namespace FiestaTunnel.Handler
{

    [TunnelModule(InitializationStage.HandlerStore)]
    static class HandlerStore
    {
        private static readonly Dictionary<ushort, MethodInfo> PacketHandlers = new Dictionary<ushort, MethodInfo>();

        [InitializerMethod]
        public static bool Initialize()
        {
            foreach (var handler in Reflector.FindMethodsByAttribute<PacketHandlerAttribute>())
            {
               PacketHandlers.Add(handler.First.OpCode, handler.Second);
            }
            Console.WriteLine("Load {0} Handlers",PacketHandlers.Count);
            return true;
        }

        public static MethodInfo GetMethod(ushort opCode)
        {
            MethodInfo method;

            PacketHandlers.TryGetValue(opCode, out method);
            return method;
        }

        public static Action GetCallback(MethodInfo method, params object[] parameters)
        {
            return () => method.Invoke(null, parameters);
        }
    }
}
