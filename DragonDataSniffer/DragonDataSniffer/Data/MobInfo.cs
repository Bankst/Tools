using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer.Data
{
    public sealed class MobInfo
    {
        public ushort ID { get; private set; }
        public string Index { get; private set; }
        public byte Level { get; private set; }
        public bool IsNPC { get; private set; }
        public uint Size { get; private set; }
        //MobInfoServer
        public bool DetectEnemy { get; private set; }
        public uint EXP { get; private set; }
        public double EXPRange { get; private set; }
        public double DetectCharacterRange { get; private set; }
        public double FollowCharacterRange { get; private set; }
        public bool BroadcastAtDead { get; private set; }
        public ushort WalkSpeed { get; private set; }
        public ushort RunSpeed { get; private set; }
        public int MaxHP { get; private set; }

        public MobInfo(SQLResult pResult, int i)
        {

            ID = pResult.Read<ushort>(i, "ID");
            Index = pResult.Read<string>(i, "InxName");
            Level = pResult.Read<byte>(i, "Level");

            MaxHP = pResult.Read<int>(i, "MaxHP");
            WalkSpeed = pResult.Read<ushort>(i, "WalkSpeed");
            RunSpeed = pResult.Read<ushort>(i, "RunSpeed");

            IsNPC = pResult.Read<bool>(i, "IsNPC");
            Size = pResult.Read<uint>(i, "Size");

        }
    }
}
