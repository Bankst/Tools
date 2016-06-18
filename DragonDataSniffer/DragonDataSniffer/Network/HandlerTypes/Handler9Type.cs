using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer.Network
{
    public class Handler9Type : PacketHeader
    {
        public new const byte _Header = 9;
        public const byte SelectObject = 1;
        public const byte DelectObject = 8;
    }
}
