using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;

using FiestaLib.Data;
using FiestaLib.Networking;
using FiestaLib.Util;
using System.Net.Sockets;
using FiestaLib.Util.Database;
using FiestaLib.Objects;
using FiestaTunnel.Handler;

namespace FiestaTunnel
{
    public class LinkedClient
    {
        public Client inClient;
        public Client outClient;
        public Dictionary<short, string> maps = new Dictionary<short, string>();
        public List<NPC> npcs = new List<NPC>();
        public List<int> onlyNpcs = new List<int>();
        public string MapName = "";

        public string ProxyIP = Program.settings.ProxyIP;


        public LinkedClient(Socket sock, string ip, int port)
        {
            inClient = new Client(sock, ClientType.ToClient);
            inClient.OnEvent += new EventHandler<NetworkEventArgs>(inClient_OnEvent);
            StartOutClient(ip, port);
            // get existing spawnpoints from database
            Console.WriteLine("-- Loaded [{0}] Spawns from DB --",getSpawnPointsFromDB());
            Console.WriteLine("-- Loaded [{0}] Maps from DB --", getMapsFromDB());
            Console.WriteLine("-- Loaded [{0}] RealNpcs from DB --", getOnlyNpcs());
            ;
        }

        void StartOutClient(string IP, int port)
        {
            try
            {
                Socket outSocket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                outSocket.Connect(IP, port);
                outClient = new Client(outSocket, ClientType.ToServer);
                outClient.OnEvent += new EventHandler<NetworkEventArgs>(outClient_OnEvent);
                outClient.Start();
            }
            catch (Exception ex)
            {
                inClient.Disconnect();
                Console.WriteLine("Error connecting to {1}: {2}", IP, ex.Message);
            }
        }

        void outClient_OnEvent(object sender, NetworkEventArgs e)
        {
            switch (e.Type)
            {
                case NetworkEventType.CryptoReceived:
                    Console.WriteLine("Crypto Initialized({0}).", (short)e.Obj);
                    inClient.Start();
                    break;
                case NetworkEventType.PacketReceived:
                    Packet pack = (Packet)e.Obj;
                    try
                    {
                        if (!CallHandlerForPacket(pack))//get from server
                        {
                            inClient.SendPacket(pack);
                        }
                         
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("Error handling packet: {0}", ex.Message);
                        inClient.SendPacket(pack); // keeps sure the packet is still sent if there is an error 
                    }
                    break;
                case NetworkEventType.Disconnected:
                    Console.WriteLine("OutClient Disconnected.");
                    inClient.Disconnect();
                    break;
            }
        }

        void inClient_OnEvent(object sender, NetworkEventArgs e)
        {
            switch (e.Type)
            {
                case NetworkEventType.Disconnected:
                    Console.WriteLine("InClient disconnected.");
                    outClient.Disconnect();
                    break;
                case NetworkEventType.PacketReceived:
                    Packet packet = (Packet)e.Obj;
                    try
                    {
                        if (!this.CallHandlerForPacket(packet))                       //Get From Client
                        {
                            outClient.SendPacket(packet);
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("Error handling packet: {0}", ex.Message);
                    }
                    break;
            }
        }


        public void DropMessage(string text)
        {
            return;
            //TODO: send to worldclient
            /* using (var packet = new Packet(0x201f))
             {
                 packet.WriteString("Server", 16);
                 packet.WriteByte(2);
                 packet.WriteByte((byte)text.Length);
                 packet.WriteString(text, text.Length);
                 inClient.SendPacket(packet);
             } */
        }

        private int getOnlyNpcs()
        {

            try
            {
                SQLResult res = FiestaLib.Util.Database.DatabaseHelper.Instance.Select("SELECT * from mobinfo WHERE isNPC = '1'");
                short id = 0;
                for (int i = 0; i < res.Count; i++)
                {
                    id = res.Read<short>(i, "ID");                    
                    onlyNpcs.Add(id);
                }

            }
            catch (Exception e)
            {
                Console.WriteLine("{0}", e);
            }
            return onlyNpcs.Count;
        }

        public bool isNPC(int id)
        {
            return onlyNpcs.Contains(id) ? true : false;
        }

        private int getMapsFromDB()
        {

            try
            {                
                SQLResult res = FiestaLib.Util.Database.DatabaseHelper.Instance.Select("SELECT * from mapinfos");
                string Name = "";
                short id = 0;
                for (int i = 0; i < res.Count; i++)
                {
                    id = res.Read<short>(i, "ID");
                    Name = res.Read<String>(i, "MapName");
                    maps.Add(id, Name);
                }

            }
            catch (Exception e)
            {
                Console.WriteLine("{0}", e);
            }
            return maps.Count;
        }

        public short MapNameToID(string name)
        {
            
            var result = maps.Where(o => o.Value == name).FirstOrDefault().Key;
            Console.WriteLine("Mapid for [{0}] is : {1}", name, result);
            if (String.IsNullOrEmpty(name) || result == 0)
                return 0;
            return result;
        }

        public String MapIDToName(int id)
        {
            var result = maps.Where(o => o.Key == id).FirstOrDefault().Value;  
            if (id == 0 || result == null)
                return "Rou";
            return result;
        }

        public void SetGateInfo(NPC npc)
        {
            if (npc == null || npc.isGate == 0)
                return;

            string GateName = "";
            SQLResult getgatename = FiestaLib.Util.Database.DatabaseHelper.Instance.Select("SELECT RoleArg0 from source_shinenpc WHERE RegenX LIKE '{0}' AND RegenY LIKE '{1}' AND Role='Gate' AND Map='{2}'", npc.x,npc.y,MapIDToName(Program.map.MapID));
            GateName=getgatename.Read<string>(0, "RoleArg0");
            Console.WriteLine("GateName is : {0}",GateName);
            npc.GateName = GateName;


            SQLResult res = FiestaLib.Util.Database.DatabaseHelper.Instance.Select("SELECT * from source_linktable WHERE GateName='{0}'",npc.GateName);
            Console.WriteLine("ResCount: {0} NpcId: {1} GateName: {2}", res.Count,npc.NpcId,npc.GateName);
            int i = 0;
            string gateString = "INSERT INTO gateinfo (SpawnID,GateName,MapToName,ToPosX,ToPosY,Direct,MinLevel,MaxLevel,Party)" +
                   "VALUES ("
                   + getSpawnIDFromDB(npc) + ","
                   + " \"" + res.Read<string>(i, "GateName") + "\","
                   + " \"" + res.Read<string>(i, "MapClient") + "\","
                   + res.Read<UInt16>(i, "Coord_X") + ","
                   + res.Read<UInt16>(i, "Coord_Y") + ","
                   + res.Read<int>(i, "Direct") + ","
                   + res.Read<UInt16>(i, "LevelFrom") + ","
                   + res.Read<UInt16>(i, "LevelTo") + ","
                   + res.Read<UInt16>(i, "Party") + ")";

            if (FiestaLib.Util.Database.DatabaseHelper.Instance.runSQL(gateString))
                Console.WriteLine("Added GateInfo for Npc [{0}] sucessfully..",npc.NpcId);
            else Console.WriteLine("Error adding Gateinfo for Npc : " + npc.NpcId);

        }

        private int getSpawnPointsFromDB()
        {

            try
            {               
                SQLResult res = FiestaLib.Util.Database.DatabaseHelper.Instance.Select("SELECT * from spawnpoins");
                for (int i = 0; i < res.Count; i++)
                {
                    NPC Npc = new NPC
                    {
                        NpcId = res.Read<ushort>(i, "MobID"),
                        Map = res.Read<int>(i, "MapID"),
                        x = res.Read<UInt16>(i, "PosX"),
                        y = res.Read<UInt16>(i, "PosY"),
                        rot = res.Read<Byte>(i, "Rotation")
                    };

                    npcs.Add(Npc);
                };
            }catch (Exception e) 
            { 
                Console.WriteLine("{0}", e); 
            }
            return npcs.Count;
        }

        private int getSpawnIDFromDB(NPC npc)
        {
            if (npc == null)
                return 0;

            int SpawnId = 0;
            try
            {
                SQLResult res = FiestaLib.Util.Database.DatabaseHelper.Instance.Select(String.Format("SELECT ID from spawnpoins WHERE MapID='{0}' AND MobID='{1}' AND PosX='{2}' AND PosY='{3}'",npc.Map,npc.NpcId,npc.x,npc.y));
                SpawnId = res.Read<int>(0, "ID");
            }
            catch (Exception e)
            {
                Console.WriteLine("Error getting SPawnID from DB :{0}", e);
            }
            return SpawnId;
        }
     
        private bool CallHandlerForPacket(Packet packet)
        {
            MethodInfo handler = HandlerStore.GetMethod(packet.OpCode);

            if (handler != null)
            {
                handler.Invoke(null, new object[] {this , packet});
                return true;
            }
            else
            {
                return false;
            }
    
        }
        public void Emote(byte id)
        {
            using (var packet = new Packet(ServerOpCode.PerfomEmote))
            {
                packet.WriteByte(id);
                outClient.SendPacket(packet);
            }
        }
    }
}
