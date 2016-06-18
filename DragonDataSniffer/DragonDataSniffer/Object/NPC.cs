using System;
using System.Collections.Concurrent;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DragonDataSniffer.Network;
using DragonDataSniffer.Data;
namespace DragonDataSniffer.Object
{
    public class NPC : MapObject
    {
    
        public ushort MapID { get; set; }
        public ushort MobID { get; private set; }
        public MobInfo pInfo { get;  set; }
        public int X { get; private set; }
        public int Y { get; private set; }
        public byte rot { get; private set; }
        public bool HasMenu { get; private set; }
        public NPCRole Role { get;  set; }
        public NPCArgument Argument { get;  set; }
        public byte isGate { get; private set; }
        public string GateName { get; private set; }
        public ConcurrentDictionary<byte,NPCItem> ItemList { get; private set; }
        public NPC(SQLResult pRes, int i = 0) : base()
        {
            ItemList = new ConcurrentDictionary<byte, NPCItem>();

           MobID = pRes.Read<ushort>(i, "MobID");
            MapID = pRes.Read<ushort>(i, "MapID");

           X = pRes.Read<int>(i, "X");
           Y = pRes.Read<int>(i, "Y");
            rot = pRes.Read<byte>(i, "Rotation");
            HasMenu = pRes.Read<bool>(i, "HasMenu");
            Role = (NPCRole)pRes.Read<byte>(i, "Role");
            Argument = (NPCArgument)pRes.Read<byte>(i, "RoleArgument");
 
        }

        public NPC(FiestaPacket packet,ushort pMapID) : base()
        {
            try
            {
                ushort pObjectID, pMobID;
                int pX, pY;
                byte pRot, pIsGate, pUnk;
                string pGateName = "";
                NPCRole role = NPCRole.None;
                if (!packet.TryReadUInt16(out pObjectID)
              || !packet.TryReadByte(out pUnk)
              || !packet.TryReadUInt16(out pMobID)
              || !packet.TryReadInt32(out pX)
              || !packet.TryReadInt32(out pY)
              || !packet.TryReadByte(out pRot)
              || !packet.TryReadByte(out pIsGate))
                {

                    return;
                }

                if (pIsGate == 1)
                {
                    Role = NPCRole.Gate;
                    packet.TryReadString(out pGateName, 12);
                    packet.ReadSkip(121);
                }
                else
                    packet.ReadSkip(133);



                ItemList = new ConcurrentDictionary<byte, NPCItem>();
                MapObjectID = pObjectID;
                MobID = pMobID;
                MapID = pMapID;
                X = pX;
                Y = pY;
                rot = pRot;
                isGate = pIsGate;
                GateName = pGateName;
                Role = role;


                MobInfo mInfo;
                if (Manager.NPCDataManager.Instance.NPCByID.TryGetValue(pMobID, out mInfo))
                {
                    this.pInfo = mInfo;
                }
            }
            catch
            {

            }
        }

        public bool AddItem(NPCItem pItem, bool Save = false)
        {
            if (ItemList.TryAdd(pItem.Slot, pItem))
            {
                if(Save)
                {
                    pItem.AddToDB();
                }
              
                return true;
            }

            return false;
        }
        public void UpdateArgument()
        {
            string update = "UPDATE NPCTable SET RoleArgument = '" + (byte)Argument + "',Role = '" + (byte)this.Role + "' WHERE MobID = '" + this.MobID + "'";
            DatabaseManager.RunSQL(update);

        }
        public void AddToDB()
        {
            string NpcString = "INSERT INTO NPCTable (MobID,MapID,X,Y,Rotation,HasMenu,Role,RoleArgument)" +
               "VALUES ("
                  + "'" + MobID + "',"
                  + "'" + MapID + "',"
                  + "'" + X + "',"
                  + "'" + Y + "',"
                  + "'" + rot + "',"
                  + "'" + Convert.ToByte(this.HasMenu) + "',"
                  + "'" + (byte)Role + "',"
                  + "'" + (byte)Argument + "')";

            DatabaseManager.RunSQL(NpcString);
        }
    }
}
