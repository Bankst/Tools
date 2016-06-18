using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer.Network
{
    public class Handler6Type : PacketHeader
    {
        public new const byte _Header = 6;
        public const byte ZoneIP = 10;
        public const byte DetailedCharacterInfo = 2;
    }
}
