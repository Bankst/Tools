using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MasterServer.WireProtocol;
using MasterServer.Utility;
using MasterServer.Settings;
using MasterServer.Handlers;
using Hik.Communication.Scs.Communication.EndPoints.Tcp;
using Hik.Communication.Scs.Communication.Messages;
using Hik.Communication.Scs.Server;

namespace MasterServer.Scs
{
    class ScsServer
    {
        IScsServer server;
        LoginHandler loginHandler;
        PatchHandler patchHandler;
        UpdateHandler updateHandler;

        public ScsServer() { }

        public void Start()
        {
            try
            {
                server = ScsServerFactory.CreateServer(new ScsTcpEndPoint(MasterSettings.PortNumber));
                server.WireProtocolFactory = new WireProtocolFactory();
                server.ClientConnected += Server_ClientConnected;
                server.ClientDisconnected += Server_ClientDisconnected;
                server.Start();
            }
            catch (Exception ex) { Log.Write(ex.Message, Log.MessageType.Error); Console.ReadLine(); Environment.Exit(1); }
            Log.Write("MasterServer has been started.", Log.MessageType.Information);
        }

        public void Stop()
        {
            try
            {
                server.Stop();
            }
            catch (Exception ex) { Log.Write(ex.Message, Log.MessageType.Error); Console.ReadLine(); Environment.Exit(1); }
            Log.Write("MasterServer has been stopped.", Log.MessageType.Information);
        }

        void Server_ClientConnected(object sender, ServerClientEventArgs e)
        {
            if (Connections.Count() < MasterSettings.MaxConnections)
            {
                Connections.Add(e.Client);
                e.Client.MessageReceived += Client_MessageReceived;
                Log.Write("Client connected <ClientID:" + e.Client.ClientId + ">", Log.MessageType.Information);
            }
            else
            {
                e.Client.SendMessage(new ScsTextMessage("Status:Server Full;"));
                e.Client.Disconnect(); Connections.Remove(e.Client);
            }
        }

        void Server_ClientDisconnected(object sender, ServerClientEventArgs e)
        {
            Connections.Remove(e.Client);
        }

        void Client_MessageReceived(object sender, MessageEventArgs e)
        {
            var client = (IScsServerClient)sender;
            String message = ((ScsTextMessage)e.Message).Text;

            if (message.Contains("Update:"))
            {
                try
                {
                    updateHandler = new UpdateHandler();
                }
                catch (Exception ex)
                {
                    Log.Write(ex.Message, Log.MessageType.Warning);
                }
            }
            else if (message.Contains("PatchVersion:"))
            {
                try
                {
                    PatchSettings.Load();
                    patchHandler = new PatchHandler();
                    
                    Int32 currentPatch = Convert.ToInt32(StringExtension.Substring(message, "PatchVersion:", ";"));
                    for (int i = currentPatch; i < PatchSettings.TotalPatches; i++)
                    {
                        client.SendMessage(new ScsTextMessage(patchHandler.GetPatch(i, PatchSettings.GetPatchType())));
                    }
                }
                catch (Exception ex)
                {
                    Log.Write(ex.Message, Log.MessageType.Information);
                }
            }
            else if (message.Contains("Login:"))
            {
                try
                {
                    String Username = StringExtension.Substring(message, "Login:", "#");
                    String Password = StringExtension.Substring(message, "#", ";");
                    loginHandler = new LoginHandler(Username, Password);
                    String Response = loginHandler.Login();
                    client.SendMessage(new ScsTextMessage(Response));
                }
                catch (Exception ex)
                {
                    Log.Write(ex.Message, Log.MessageType.Warning);
                }
            }
        }
    }
}