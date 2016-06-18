using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FiestaLib.Networking;
using FiestaLib.Util.Database;

namespace FiestaLib.Objects
{
    public class NPC
    {
        public int Map;
        public ushort NpcId;
        public int x;
        public int y;
        public byte rot;
        public byte isGate;
        public string GateName;

        public static NPC GetNpcFromPacket(Packet packet)
        {
            ushort pObjectID, pNpcId;
            int pX,pY;
            byte pRot,pIsGate,pUnk;
            string pGateName = "";

            if (!packet.TryReadUShort(out pObjectID)
            || !packet.TryReadByte(out pUnk)
            || !packet.TryReadUShort(out pNpcId)
            || !packet.TryReadInt(out pX)
            || !packet.TryReadInt(out pY)
            || !packet.TryReadByte(out pRot)
            || !packet.TryReadByte(out pIsGate))
                return null;

            if (pIsGate == 1)
            {
                packet.TryReadString(out pGateName, 12);
                packet.ReadSkip(98);
            }
            else
                packet.ReadSkip(110);


            NPC spawnm = new NPC
            {
                NpcId = pNpcId,
                x = pX,
                y = pY,
                rot = pRot,
                isGate = pIsGate,
                GateName = pGateName,
                Map = 0
            };

            return spawnm;
        }

        public void AddToDB()
        {
            string npcString = "INSERT INTO spawnpoins (MobID,MapID,PosX,PosY,Rotation)" +
                                                  "VALUES ("
                                                  + this.NpcId + ","
                                                  + this.Map + ","
                                                  + this.x + ","
                                                  + this.y + ","
                                                  + this.rot + ")";

            DatabaseHelper.Instance.runSQL(npcString);
        }
    }
}
