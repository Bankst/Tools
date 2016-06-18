using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FiestaTunnel
{
    public class Map
    {
        public Dictionary<ushort, string> Characters = new Dictionary<ushort, string>();

        public short MapID { get; set; }

        public Map() { }

        public Map(short mapid)
        {
            this.MapID = mapid;
        }
    }
}
