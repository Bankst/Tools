using System;
using System.Threading;
using System.Net.Sockets;
using OSBot.Logic.Tabs;
using OSBot.Logic.Worlds;
using OSBot.GUI;
using OSBot.Network;

namespace OSBot.Logic
{
    public sealed class FiestaBot
    {
        public string Username { get; private set; } // username and pw which have been used for login
        public string Password { get; private set; }
        
        //public string LoginToken { get; private set; } // Only for OS Fiesta ?
        public BotTab Tab { get; private set; }
        public const string ServerIP = "46.253.147.147";
        public const ushort ServerPort = 9210;
        public const ushort ClientYear = 2006;
        public const ushort ClientVersion = 674;
        public FiestaClient LoginClient { get; set; }
        public FiestaClient WorldClient { get; set; }
        public FiestaClient ZoneClient { get; set; }
        public PacketManager PacketManager { get; private set; }
        public WorldManager WorldManager { get; private set; }
                
        public FiestaBot(string Username, string Password, string LoginToken)
        {
            this.Username = Username;
            this.Password = Password;
            //this.LoginToken = LoginToken;
            Load();
        }
        public void Dispose()
        {
            Username = null;
            Password = null;
            
            //LoginToken = null;
            Tab = null;
            if (LoginClient != null)
                LoginClient.Dispose();
            
            LoginClient = null;
            PacketManager.Dispose();
            PacketManager = null;
            WorldManager.Dispose();
            WorldManager = null;
        }

        private void Load()
        {
            GUIManager.Invoke(() => Tab = new BotTab(this));
            PacketManager = new PacketManager();
            PacketManager.OnHandleError += On_PacketManager_HandleError;
            WorldManager = new WorldManager(this);
        }
        
        public void HandleReadError()
        {
            WriteDebug("Packet read error. Disconnecting...");
            LoginClient.Dispose();
        }

        public void StartConnect()
        {
            WriteDebug("Connecting login server on [{0}:{1}]...", ServerIP, ServerPort);
            var tries = 1;
            Socket clientSocket;
            while (!SocketHelper.Connect(ServerIP, ServerPort, out clientSocket)
                && Program.IsRunning)
            {
                tries++;
                WriteDebug("Connecting login server on [{0}:{1}] ({2} tries)...", ServerIP, ServerPort, tries);
                Thread.Sleep(1);
            }


            WriteDebug("Connection success. Waiting for authentication...");
            LoginClient = new FiestaClient(clientSocket, this);
            LoginClient.OnDispose += On_FiestaClient_Dispose;
            LoginClient.OnXorPosReceived += On_FiestaClient_XorPosReceived;
            LoginClient.OnPacketReceive += PacketManager.Handle;
            LoginClient.Start();
        }

        private void On_FiestaClient_Dispose(TCPClient TCPClient)
        {
            //Todo: some disconnect handler here
            Console.WriteLine("disconnected from login");
        }

        private void On_PacketManager_HandleError(Exception Exception)
        {
            WriteException(Exception, "Error handling packet:");
        }
        
        private void On_FiestaClient_XorPosReceived()
        {
            WriteDebug("Authentication success. Sending version...");
            using (var packet = new FiestaPacket(GameOpCode.Client.H3.Version))
            {
                packet.WriteUInt16(ClientYear);
                packet.WriteUInt16(ClientVersion);
                LoginClient.Send(packet);
            }
        }


        public void Send(Packet Packet, ClientState State)
        {
            switch (State)
            {
                case ClientState.Login:
                    LoginClient.Send(Packet);
                    break;
                case ClientState.World:
                    WorldClient.Send(Packet);
                    break;
                case ClientState.Game:
                    ZoneClient.Send(Packet);
                    break;
            }
        }
        
        public void WriteDebug(string Message, params object[] args)
        {
            Message = String.Format("<{0}> {1}", DateTime.Now, String.Format(Message, args));
            GUIManager.Invoke(() =>
                {
                    Tab.BotControl.RichText_Console.AppendText(String.Format(Message, args) + Environment.NewLine);
                    Tab.BotControl.RichText_Console.ScrollToEnd();
                });
        }

        public void WriteException(Exception Exception, string Message, params object[] args)
        {
            WriteDebug("{0}{1}{1}{2}{1}{1}{3}{1}{1}", String.Format(Message, args), Environment.NewLine, Exception.Message, Exception.StackTrace);
        }
    }
}