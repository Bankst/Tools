using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer.Network
{
    public class Handler7Type : PacketHeader
    {
        public new const byte _Header = 7;
        public const byte SpawnMultiObject = 9;
        public const byte SpawnSingleObject = 8;

    }
}
