using System;
using System.Collections.Concurrent;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer.Network
{
    [TunnelModule(InitializationStage.Metadata)]
    public class GameAcceptorManager
    {
        public static GameAcceptorManager Instance { get; private set; }
        private ConcurrentDictionary<ClientType, GameClientAcceptor> AcceptorsByType { get; set; }
        private ConcurrentDictionary<ushort,GameClientAcceptor> AcceptorsByPort { get; set; }
        GameAcceptorManager()
        {
            AcceptorsByType = new ConcurrentDictionary<ClientType, GameClientAcceptor>();
        }
        [InitializerMethod]
        public static bool Load()
        {
            try
            {
                Instance = new GameAcceptorManager();
                return true;
            }
            catch (Exception ex)
            {
                Log.WriteLine(LogLevel.Exception, "GameClientManager exception: {0}", ex.ToString());
                return false;
            }
        }
        public bool GetAcceptorByType(ClientType pType,out GameClientAcceptor aceptor)
        {
            if (AcceptorsByType.TryGetValue(pType, out aceptor))
                return true;

            return false;
        }
        public void StopAcceptorByType(ClientType pType)
        {
            GameClientAcceptor Acceptor;

            if (AcceptorsByType.TryRemove(pType, out Acceptor))
            {
                Acceptor.Stop();
            }

        }
        public void StopAcceptorByPort(ushort port)
        {

        }
        public bool StopAcceptorByType(ClientType pType,out GameClientAcceptor  Acceptor)
        {

            if (AcceptorsByType.TryGetValue(pType, out Acceptor))
            {
              
                GameClientAcceptor Acp;
                if (AcceptorsByType.TryRemove(pType, out Acp))
                {
                    Acceptor.Stop();
                    return true;
                }
                return true;
            }
           return false;
        }

        public bool StartAcceptor(ClientType pType,int port)
        {
            if(!AcceptorsByType.ContainsKey(pType))
            {
                GameClientAcceptor Accept = new GameClientAcceptor(port, pType);

                AcceptorsByType.TryAdd(pType, Accept);
                return true;
            }
            return false;
        }
    }
}
