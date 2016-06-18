using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer.Network
{
    public class Handler4Type : PacketHeader
    {
        public new const byte _Header = 4;
        public const byte GameServerIP = 3;
        public const byte Chardeatiledinfo = 56;
        public const byte CharacterLook = 57;
        public const byte CharacterQuestsBusy = 58; // 0x103A
        public const byte CharacterQuestsDone = 59; // 0x103B
        public const byte CharacterActiveSkillList = 61;
        public const byte CharacterPassiveSkillList = 62;
        public const byte CharacterItemList = 71;
        public const byte CharacterInfoEnd = 72;
        public const byte CharacterTitles = 73;
        public const byte CharacterTimedItemList = 74;
        public const byte unk1 = 206;
        public const byte unk2 = 215;
        public const byte unk3 = 222;
    }
}
