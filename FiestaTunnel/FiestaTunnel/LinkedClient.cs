using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FiestaLib.Networking;
using System.Net.Sockets;

namespace FiestaTunnel
{
    public class LinkedClient
    {
        private Client inClient;
        private Client outClient;

        public LinkedClient(Socket sock, string ip, int port)
        {
            inClient = new Client(sock, ClientType.ToClient);
            inClient.OnEvent += new EventHandler<NetworkEventArgs>(inClient_OnEvent);
            StartOutClient(ip, port);
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
                        ProcessOut(pack);
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("Error handling packet: {0}", ex.Message);
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
                        ProcessIn(packet);
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("Error handling packet: {0}", ex.Message);
                    }
                    break;
            }
        }

        void ProcessIn(Packet packet) //packet received from client
        {
            switch (packet.OpCode)
            {
             /*   case 0x301e: //withdraw money
                    long money;
                    if (!packet.TryReadLong(out money))
                    {
                        Console.WriteLine("Error withdrawing money.");
                    }
                    packet.SetOffset(2);
                    packet.WriteLong(-2);
                    outClient.SendPacket(packet);
                    break;*/ 

                case 0x2001:
                    byte chatlen;
                    string chattext = "";
                    if(!packet.TryReadByte(out chatlen) ||
                        !packet.TryReadString(out chattext, chatlen)) {
                        Console.WriteLine("Error reading chat command.");
                    }

                    if (chattext.StartsWith("!"))
                    {
                        try
                        {
                            HandleCommand(chattext);
                        }
                        catch (Exception ex)
                        {
                            DropMessage(ex.Message);
                        }
                    }
                    else
                    {
                        outClient.SendPacket(packet);
                    }
                    break;

                default:
                    outClient.SendPacket(packet);
                    break;
            }
            if (Program.IS_DEBUG)
                Console.WriteLine("[TO OUT] {0}", packet.Dump());
        }

        private void DropMessage(string text)
        {
            using (var packet = new Packet(0x201f))
            {
                packet.WriteString("Server", 16);
                packet.WriteByte(2);
                packet.WriteByte((byte)text.Length);
                packet.WriteString(text, text.Length);
                inClient.SendPacket(packet);
            }
        }

        private void Emote(byte id)
        {
            using (var packet = new Packet(0x2020))
            {
                packet.WriteByte(id);
                outClient.SendPacket(packet);
            }
        }

        void HandleCommand(string text)
        {
            string[] command = text.Split(' ');
            switch (command[0].ToLower())
            {
                case "!anim":
                    byte animid = byte.Parse(command[1]);
                    Emote(animid);
                    break;
                default:
                    DropMessage("Could not parse command.");
                    break;
            }
        }

        ushort charID = 0;
        void ProcessOut(Packet packet) //packet received from server
        {
            switch (packet.OpCode)
            {
                case 0x1802: //detailed char info
                    if (!packet.TryReadUShort(out charID))
                    {
                        Console.WriteLine("Error reading char ID.");
                        return;
                    }
                    else
                    {
                        inClient.SendPacket(packet);
                        Console.WriteLine("CharObj ID: {0}", charID);
                    }
                    break;

                case 0x1c0a: //show drop
                    ushort dropid;
                    byte cantake;
                    if (!packet.TryReadUShort(out dropid) ||
                        !packet.ReadSkip(12) ||
                        !packet.TryReadByte(out cantake))
                    {
                        Console.WriteLine("Error parsing drop ip.");
                        return;
                    }
                    inClient.SendPacket(packet);
                    if (cantake == 8)
                    {
                        using (var ppacket = new Packet(0x3009))
                        {
                            ppacket.WriteUShort(dropid);
                            outClient.SendPacket(ppacket);
                        }
                    }
                    break;

                case  0x2021: //emote
                    ushort mapemoteid;
                    byte emoteid;
                    if (!packet.TryReadUShort(out mapemoteid) ||
                        !packet.TryReadByte(out emoteid))
                    {
                        Console.WriteLine("Error parsing emote.");
                        return;
                    }
                    else if (emoteid > 78)
                    {
                        return;
                    }
                    inClient.SendPacket(packet);
                    break;

                case 0x2002: //normal chat
                    ushort chatobid;
                    byte chatlen;
                    byte chatcolor;
                    string chattext;
                    if (!packet.TryReadUShort(out chatobid) ||
                        !packet.TryReadByte(out chatlen) ||
                        !packet.TryReadByte(out chatcolor) ||
                        !packet.TryReadString(out chattext, chatlen))
                    {
                        Console.WriteLine("Error reading chat packet.");
                        return;
                    }
                    Console.WriteLine("[{0}] {1}", chatobid, chattext);
                    inClient.SendPacket(packet);
                    break;

                case 0x0c0c: //worldserver IP
                    byte worldserverstatus;
                    string worldserverip;
                    short worldport;
                    if (!packet.TryReadByte(out worldserverstatus) ||
                        !packet.TryReadString(out worldserverip, 16) ||
                        !packet.TryReadShort(out worldport))
                    {
                        Console.WriteLine("Error parsing world_ip packet.");
                        return;
                    }
                    Program.CreateListener(worldserverip, worldport);
                    packet.SetOffset(3);
                    packet.WriteString("127.0.0.1", 16);
                    inClient.SendPacket(packet);
                    break;
                case 0x1003: //gameserver IP
                    string gameip;
                    short gameport;
                    if (!packet.TryReadString(out gameip, 16) ||
                        !packet.TryReadShort(out gameport))
                    {
                        Console.WriteLine("Error parsing game_ip packet.");
                        return;
                    }
                    Program.CreateListener(gameip, gameport);
                    packet.SetOffset(2);
                    packet.WriteString("127.0.0.1", 16);
                    inClient.SendPacket(packet);
                    break;
                case 0x180a: //zone transfer
                    short mapid, zoneport;
                    int xmap, ymap;
                    string zoneip;
                    if (!packet.TryReadShort(out mapid) ||
                        !packet.TryReadInt(out xmap) ||
                        !packet.TryReadInt(out ymap) ||
                        !packet.TryReadString(out zoneip, 16) ||
                        !packet.TryReadShort(out zoneport))
                    {
                        Console.WriteLine("Error reading zone transfer.");
                        return;
                    }
                    Program.CreateListener(zoneip, zoneport);
                    packet.SetOffset(12);
                    packet.WriteString("127.0.0.1", 16);
                    inClient.SendPacket(packet);
                    break;
                default:
                    inClient.SendPacket(packet);
                    break;
            }
            if (Program.IS_DEBUG)
                Console.WriteLine("[TO IN] {0}", packet.Dump());
        }
    }
}
