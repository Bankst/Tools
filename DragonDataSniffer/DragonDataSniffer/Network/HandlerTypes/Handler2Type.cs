using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer.Network
{
    public class Handler2Type : PacketHeader
    {
        public new const byte _Header = 2;
        public const byte SetXorKeyPosition = 7;
    }
}
