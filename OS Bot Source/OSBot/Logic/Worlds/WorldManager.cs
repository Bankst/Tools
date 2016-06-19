using System;
using System.Linq;
using System.Windows;
using System.Threading;
using System.Net.Sockets;
using System.Windows.Controls;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using OSBot.GUI;
using OSBot.GUI.Controls;
using OSBot.Network;

namespace OSBot.Logic.Worlds
{
    public sealed class WorldManager
    {
        public FiestaBot Bot { get; private set; }
        public ReadOnlyCollection<World> Worlds { get { return (WorldList.AsReadOnly()); } }
        private List<World> WorldList;
        public World SelectedWorld { get; private set; }
        public string WorldIP { get; private set; }
        public ushort WorldPort { get; private set; }
        public string WorldTransferHash { get; private set; }
        public WorldControl WorldControl { get; private set; }
        
        public WorldManager(FiestaBot Bot)
        {
            this.Bot = Bot;
            WorldList = new List<World>();
            GUIManager.Invoke(LoadControl);
        }

        public void Dispose()
        {
            Bot = null;
        }
        
        private void LoadControl()
        {
            WorldControl = new WorldControl();
            WorldControl.ComboBox_WorldList.SelectionChanged += On_WorldControl_ComboBox_WorldList_SelectionChanged;
            WorldControl.Button_WorldSelect_ConnectToggle.Click += On_WorldControl_Button_ConnectToggle_Click;
        }

        private void On_WorldControl_ComboBox_WorldList_SelectionChanged(object sender, SelectionChangedEventArgs args)
        {
            var inx = WorldControl.ComboBox_WorldList.SelectedIndex;
            if (inx >= 0)
            {
                SelectedWorld = WorldList[inx];
                WorldControl.Label_WorldSelect_WorldID.Content = SelectedWorld.ID;
                WorldControl.Label_WorldSelect_WorldName.Content = SelectedWorld.Name;
                WorldControl.Label_WorldSelect_WorldStatus.Content = SelectedWorld.Status;
            }
        }

        private void On_WorldControl_Button_ConnectToggle_Click(object sender, RoutedEventArgs args)
        {
            if (SelectedWorld == null)
            {
                Bot.WriteDebug("You have to select a world from the list.");
                return;
            }
            
            ToggleControls(false);
            Bot.WriteDebug("Selecting world '{0}' (ID: {1})...", SelectedWorld.Name, SelectedWorld.ID);
            
            using (var packet = new FiestaPacket(GameOpCode.Client.H3.WorldSelect))
            {
                packet.WriteByte(SelectedWorld.ID);
                Bot.Send(packet, ClientState.Login);
            }
        }

        private void ToggleControls(bool Enabled)
        {
            GUIManager.Invoke(() =>
                {
                    WorldControl.ComboBox_WorldList.IsEnabled = Enabled;
                    WorldControl.Button_WorldSelect_ConnectToggle.IsEnabled = Enabled;
                });
        }

        private void ToggleConnectButton(bool ConnectText)
        {
            GUIManager.Invoke(() =>
            {
                WorldControl.Button_WorldSelect_ConnectToggle.Content = (ConnectText ? "Connect" : "Disconnect");
            });
        }
        
        private void ConnectWorld()
        {
            ToggleConnectButton(false);
            Bot.WriteDebug("Connecting world server on [{0}:{1}]...", WorldIP, WorldPort);
            Bot.LoginClient.Dispose(); //disconnect from login
            var tries = 1;
            Socket worldSocket;
            while (!SocketHelper.Connect(WorldIP, WorldPort, out worldSocket)
                && Program.IsRunning)
            {
                tries++;
                Bot.WriteDebug("Connecting world server on [{0}:{1}] ({2} tries)...", WorldIP, WorldPort, tries);
                Thread.Sleep(1);
            }
            
            Bot.WriteDebug("Connection success. Waiting for authentication...");
            Bot.WorldClient = new FiestaClient(worldSocket, Bot);
            Bot.WorldClient.OnDispose += On_WorldClient_Dispose;
            Bot.WorldClient.OnPacketReceive += Bot.PacketManager.Handle;
            Bot.WorldClient.OnXorPosReceived += On_WorldClient_XorPosReceived;
            Bot.WorldClient.Start();
        }

        private void On_WorldClient_Dispose(TCPClient TCPClient)
        {
            Console.WriteLine("disconnected from world");
        }

        private void On_WorldClient_XorPosReceived()
        {
            Bot.WriteDebug("Authenticaton success. Sending transfer hash...");
            using (var packet = new FiestaPacket(GameOpCode.Client.H3.WorldClientKey))
            {
                packet.Fill(18, 0x00); // hm ?
                packet.WriteString(WorldTransferHash, 64);
                Bot.Send(packet, ClientState.World);
            }
        }

        [PacketHandlerMethod(GameOpCode.Server.H3.WorldlistNew)]
        public static void On_FiestaClient_WorldListNew(FiestaClient Client, FiestaPacket Packet)
        {
            byte worldCount;
            if (!Packet.ReadByte(out worldCount))
            {
                Client.Bot.HandleReadError();
                return;
            }
            Client.Bot.WriteDebug("Received world list. Parsing {0} worlds...", worldCount);
            for (int i = 0; i < worldCount; i++)
            {
                byte worldID, worldStatus;
                string worldName;
                if (!Packet.ReadByte(out worldID)
                    || !Packet.ReadString(out worldName, 16)
                    || !Packet.ReadByte(out worldStatus))
                {
                    Client.Bot.HandleReadError();
                    return;
                }
                //create world instance
                var world = new World(worldID, worldName, (WorldStatus)worldStatus);
                Client.Bot.WorldManager.WorldList.Add(world);
            }

            //Order worlds by id
            Client.Bot.WorldManager.WorldList = Client.Bot.WorldManager.WorldList.OrderBy(w => w.ID).ToList();
            
            //initialize gui
            GUIManager.Invoke(() =>
                {
                    Client.Bot.WorldManager.WorldControl.ComboBox_WorldList.Items.Clear();
                    foreach (var world in Client.Bot.WorldManager.WorldList)
                    {
                        var item = new ComboBoxItem()
                        {
                            Content = world.Name,
                        };
                        Client.Bot.WorldManager.WorldControl.ComboBox_WorldList.Items.Add(item);
                    }

                    if (Client.Bot.WorldManager.WorldList.Count > 0)
                        Client.Bot.WorldManager.WorldControl.ComboBox_WorldList.SelectedIndex = 0;
                    Client.Bot.Tab.ChangeSubPanel(Client.Bot.WorldManager.WorldControl);
                });
            Client.Bot.WriteDebug("World list parsed. Select a world from the list.");
        }

        [PacketHandlerMethod(GameOpCode.Server.H3.WorldServerIP)]
        public static void On_FiestaClient_WorldServerIP(FiestaClient Client, FiestaPacket Packet)
        {
            byte worldStatus;
            string worldIP, transferHash;
            ushort worldPort;
            if (!Packet.ReadByte(out worldStatus)
                || !Packet.ReadString(out worldIP, 16)
                || !Packet.ReadUInt16(out worldPort)
                || !Packet.ReadString(out transferHash, 64))
            {
                Client.Bot.HandleReadError();
                return;
            }
            Client.Bot.WorldManager.WorldIP = worldIP;
            Client.Bot.WorldManager.WorldPort = worldPort;
            Client.Bot.WorldManager.WorldTransferHash = transferHash;
            new Thread(Client.Bot.WorldManager.ConnectWorld).Start();
        }
    }
}