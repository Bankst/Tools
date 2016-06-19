using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MapleLib.PacketLib;
using System.Data;
using System.Data.SqlClient;

namespace GMServer
{
    public sealed class GmClient
    {
        public Session nSession { get; set; }
        private const short Version = 2;
        public delegate void OnDiscconnect(GmClient Client);
        public event OnDiscconnect OnClientDisconnect;
        public bool Authenciated { get; set; }
        public string Username = "Unk";

        public GmClient(Session pSession)
        {
            nSession = pSession;
            pSession.OnPacketReceived += new Session.PacketReceivedHandler(pSession_OnPacketReceived);
            pSession.OnClientDisconnected += new Session.ClientDisconnectedHandler(pSession_OnClientDisconnected);
            Authenciated = false;

            SendHandshake();
        }

        private void SendHandshake()
        {
            PacketWriter writer = new PacketWriter();
            writer.WriteShort(14);
            writer.WriteShort(Version);
            writer.WriteMapleString("3");

            byte[] SIV = new byte[4];
            byte[] RIV = new byte[4];
            Random rand = new Random();
            rand.NextBytes(RIV);
            rand.NextBytes(SIV);

            writer.WriteBytes(RIV);
            writer.WriteBytes(SIV);
            writer.WriteByte(0x05);

            byte[] dat = writer.ToArray();
            nSession.SendRawPacket(dat);
            nSession.SIV = new MapleLib.MapleCryptoLib.MapleCrypto(SIV, Version);
            nSession.RIV = new MapleLib.MapleCryptoLib.MapleCrypto(RIV, Version);
        }

        private void RequestAuth(byte ver)
        {
            if (this.Authenciated) return;
            PacketWriter writer = new PacketWriter();
            writer.WriteShort((short)Opcode.S_REQUESTLOGIN);
            writer.WriteByte(ver);
            nSession.SendPacket(writer);
        }

        void pSession_OnClientDisconnected(Session session)
        {
            OnClientDisconnect.Invoke(this);
            Authenciated = false;
        }


        void pSession_OnPacketReceived(PacketReader packet)
        {
            Opcode opc = (Opcode)packet.ReadShort();
            switch (opc)
            {
                case Opcode.C_LOGINDATA:
                   this.Authenciated = LoginClient(packet.ReadMapleString(), packet.ReadMapleString());
                   if (this.Authenciated)
                       RequestAuth(1); //suc
                   else
                       RequestAuth(2);//fail
                    break;
                default:
                    Program.MainFrm.Log("Unhandled packet {0}", opc.ToString());
                    break;
            }
        }

        bool LoginClient(string username, string password)
        {
            bool authOk = false;
            DatabaseManager.Instance.SelectDB(DBType.ACCOUNT);
            using (SqlCommand comm = DatabaseManager.Instance.CreateCommand())
            {
                comm.CommandText = "SELECT nAuthID from tUser where sUserID=@us and sUserPW=@pw";
                comm.Parameters.AddWithValue("@us", username);
                comm.Parameters.AddWithValue("@pw", password);
                using (SqlDataReader reader = comm.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        reader.Read();
                        int auth = Convert.ToInt32(reader["nAuthID"]);
                        if (auth >= 8) authOk = true;
                    }
                }
            }
            if(authOk)
                Program.MainFrm.Log("Client auth success: {0}", username);
            else
                Program.MainFrm.Log("Client auth fail: {0}", username);
            return authOk;
        }

       
    }
}
