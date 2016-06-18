using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer.Network
{
    public class Handler15Type : PacketHeader
    {
        public new const byte _Header = 15;
        public const byte NPCItemList = 9;
        public const byte SkillNPCStuff = 10;
        public const byte StuffNPCItemList = 11;

    }
}
