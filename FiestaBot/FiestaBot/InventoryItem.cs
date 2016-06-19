using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FiestaBot
{
    public class InventoryItem
    {
        public ushort ID;
        public byte Slot;
        public ushort Count = 1;
        public byte[] Info;
        public byte Type;
    }
}
