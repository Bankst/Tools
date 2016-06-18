using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FiestaLib.Data
{
    public enum ServerOpCode : ushort
    {
        SpawnMultiObject = 0x1C09,
        SpawnSingleObject = 0x1C08,
        WorldServerIP = 0x0c0c,
        GameServerIP = 0x1003,
        ZoneIP = 0x180a,
        Chardeatiledinfo = 0x1038,
        PerfomEmote = 0x2020,
        ChangeMap = 0x1809,


    }
    public enum ClienOpcodes : ushort
    {
        ChatMessage = 0x2001,
    }
}
