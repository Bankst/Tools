using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer.Data
{
    public sealed class MapInfo
    {
        public ushort ID { get; private set; }
        public string Index { get; private set; }
        public string Name { get; private set; }
        public Position Regen { get; private set; }
        public MapType Type { get; private set; }
        public bool IsInSide { get; private set; }
        public double ViewRange { get; private set; }

        public MapInfo(SQLResult rResult, int rIndex)
        {
            ID = rResult.Read<ushort>(rIndex, "ID");
            Index = rResult.Read<string>(rIndex, "MapName");

            Regen = new Position(rResult.Read<uint>(rIndex, "RegenX"), rResult.Read<uint>(rIndex, "RegenY"));
            Type = (MapType)rResult.Read<byte>(rIndex, "MapType");
            IsInSide = rResult.Read<bool>(rIndex, "InSide");
            ViewRange = rResult.Read<uint>(rIndex, "ViewRange");

        }
    }
}
