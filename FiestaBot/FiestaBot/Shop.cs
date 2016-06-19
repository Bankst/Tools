using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FiestaBot
{
    public class Shop
    {
        public short ID; //npc entity id (equal to normal id)
        public Dictionary<byte, ushort> Items = new Dictionary<byte, ushort>();
        public byte Count { get { return (byte)Items.Count; } }

        public void AddItem(byte mOffset, ushort ID)
        {
            if (Items.ContainsKey(mOffset))
                Items.Remove(mOffset);
            Items.Add(mOffset, ID);
        }

        public byte FindItemSlot(ushort ID)
        {
            foreach (var x in Items)
            {
                if (x.Value == ID) return x.Key;
            }
            return 0xff;
        }
    }
}
