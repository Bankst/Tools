using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer.Data
{
    public enum MapType : byte
    {
        Normal = 0,
        KingdomQuest = 1,
        Estate = 2,
        Instance = 3,
        Abyss = 4,
        Unknown = 6,
        LuckyHouse = 7,
    }
}
