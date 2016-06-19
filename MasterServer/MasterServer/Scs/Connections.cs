using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MasterServer.WireProtocol;
using MasterServer.Utility;
using Hik.Communication.Scs.Communication.EndPoints;
using Hik.Communication.Scs.Communication.EndPoints.Tcp;
using Hik.Communication.Scs.Communication.Messages;
using Hik.Communication.Scs.Server;

namespace MasterServer.Scs
{
    class Connections
    {
        static List<IScsServerClient> ClientList = new List<IScsServerClient>();
        static Dictionary<String, String> LoginDictionary = new Dictionary<String, String>();

        public static void Add(IScsServerClient client)
        {
            ClientList.Add(client);
        }

        public static void Add(String Username, String Response)
        {
            LoginDictionary.Add(Username, Response);
        }

        public static void Remove(IScsServerClient client)
        {
            Log.Write("A client has disconnected <Client:" + client.RemoteEndPoint + ">", Log.MessageType.Information);
            ClientList.Remove(client);
        }

        public static Int32 Count()
        {
            return ClientList.Count;
        }

        public static void LookFor(string ip)
        {
            for (int i = 0; i < ClientList.Count; i++)
            {
                if (ClientList[i].RemoteEndPoint.ToString().Contains(ip))
                {
                    Log.Write("The client is connected <Client ID:" + ClientList[i].ClientId + ">", Log.MessageType.Information);
                    break;
                }
            }
        }

        public static void LookFor(ScsEndPoint endpoint)
        {
            for (int i = 0; i < ClientList.Count; i++)
            {
                if (ClientList[i].RemoteEndPoint == endpoint)
                {
                    Log.Write("The client is connected :" + ClientList[i].RemoteEndPoint.ToString(), Log.MessageType.Information);
                }
            }
        }

        public static DateTime GetLastMessageSentTime(Int32 ClientID)
        {
            for (int i = 0; i < ClientList.Count; i++)
            {
                if (ClientList[i].ClientId == ClientID)
                {
                    return ClientList[i].LastSentMessageTime;
                }
                
            }
            return new DateTime();
        }

        public static DateTime GetLastMessageReceivedTime(Int32 ClientID)
        {
            for (int i = 0; i < ClientList.Count; i++)
            {
                if (ClientList[i].ClientId == ClientID)
                {
                    return ClientList[i].LastReceivedMessageTime;
                }

            }
            return new DateTime();
        }

        public static void Disconnect(ScsEndPoint EndPoint)
        {
            for (int i = 0; i < ClientList.Count; i++)
            {
                if (ClientList[i].RemoteEndPoint == EndPoint)
                {
                    ClientList[i].Disconnect();
                    Log.Write("The client has been disconnected by the server :" + ClientList[i].RemoteEndPoint.ToString(), Log.MessageType.Information);
                }
            }
        }

        public static void Disconnect(Int32 ClientID)
        {
            for (int i = 0; i < ClientList.Count; i++)
            {
                if (ClientList[i].ClientId == ClientID)
                {
                    ClientList[i].Disconnect();
                    Log.Write("The client has been disconnected by the server :" + ClientList[i].RemoteEndPoint.ToString(), Log.MessageType.Information);
                }
            }
        }
    }
}