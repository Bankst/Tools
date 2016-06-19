using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel;
using FiestaBot.Scripting;

namespace FiestaBot
{
    public class Character
    {
        #region PropertyGrid Attributes
        public int _ID;
                 [CategoryAttribute("General")] 
        public int ID { get { return _ID; } set { _ID = value; } }
        public byte _Slot;
         [CategoryAttribute("General") ] 
        public byte Slot { get { return _Slot; } set { _Slot = value; } }
        public string _Name;
         [CategoryAttribute("General")] 
        public string Name { get { return _Name; } set { _Name = value; } }
        public byte _Level;
         [CategoryAttribute("General")] 
        public byte Level { get { return _Level; } set { _Level = value; } }
        public ulong _Exp;
         [CategoryAttribute("General") ] 
        public ulong Exp { get { return _Exp; } set { _Exp = value; } }
        public string _Map;

        [CategoryAttribute("Position")] 
        public string Map { get { return _Map; } set { _Map = value; } }
        public Position _Pos;
        [CategoryAttribute("Position")] 
        public Position Pos { get { return _Pos; } set { _Pos = value; } }
         [CategoryAttribute("Position")] 
        public int X { get { return _Pos.X; } }
         [CategoryAttribute("Position")] 
        public int Y { get { return _Pos.Y; } }

        public ushort _HPStones;
                 [CategoryAttribute("Stats")] 
        public ushort HPStones { get { return _HPStones; } set { _HPStones = value; } }
        public ushort _SPStones;
                 [CategoryAttribute("Stats")] 
        public ushort SPStones { get { return _SPStones; } set { _SPStones = value; } }
        public int _MaxHP;
                 [CategoryAttribute("Stats")] 
        public int MaxHP { get { return _MaxHP; } set { _MaxHP = value; } }
        public int _MaxSP;
                 [CategoryAttribute("Stats")] 
        public int MaxSP { get { return _MaxSP; } set { _MaxSP = value; } }

                 [CategoryAttribute("Stats")] 
        public int Fame { get { return _Fame; } set { _Fame = value; } }
        public int _Fame;
          [CategoryAttribute("General")] 
        public ulong Money { get { return _Money; } set { _Money = value; } }
        public ulong _Money;

        public byte _iSTR;
         [CategoryAttribute("Stats")] 
        public byte iSTR { get { return _iSTR; } set { _iSTR = value; } }
        public byte _iEND;
                 [CategoryAttribute("Stats")] 
        public byte iEND { get { return _iEND; } set { _iEND = value; } }
        public byte _iDEX;
                 [CategoryAttribute("Stats")] 
        public byte iDEX { get { return _iDEX; } set { _iDEX = value; } }
        public byte _iINT;
                 [CategoryAttribute("Stats")] 
        public byte iINT { get { return _iINT; } set { _iINT = value; } }
        public byte _iSPR;
                 [CategoryAttribute("Stats")] 
        public byte iSPR { get { return _iSPR; } set { _iSPR = value; } }
        #endregion

                 public Dictionary<ushort, GameObject> GameObjects = new Dictionary<ushort, GameObject>();
                 public List<InventoryItem> Inventory = new List<InventoryItem>();
                 public Shop ViewingShop;
                 public bool Resting = false;
                 public GameCharacter Chasing = null;
                 public bool Warping = false;
                 public PathReproducer PathRepr;
                 public List<ushort> ActiveSkills = new List<ushort>();
                 public Recipe Producing;
                 public bool Buying = false;
                 public bool AutoSell = false;

                 public void AddItem(byte InvType, InventoryItem pItem)
                 {
                     pItem.Type = InvType;
                     Inventory.Remove(Inventory.Find(d => d.Type == InvType && d.Slot == pItem.Slot));
                     Inventory.Add(pItem);
                 }

                 public ushort GetItemCount(ushort ID)
                 {
                     lock (Inventory)
                     {
                         ushort count = 0;
                         foreach (var x in Inventory)
                         {
                             if (x.ID == ID) count += x.Count;
                         }
                         return count;
                     }
                 }

                 public byte GetSlotByFilter(ushort ID, byte limit)
                 {
                     foreach (var x in Inventory)
                     {
                         if (x.ID == ID && x.Count < limit)
                             return x.Slot;
                     }
                     return 0xff;
                 }

                 public GameCharacter FindPlayer(string mName)
                 {
                     foreach (var x in GameObjects)
                     {
                         if (x.Value.GetType() != typeof(GameCharacter)) continue;
                         if (((GameCharacter)(x.Value)).Name.ToLower() == mName.ToLower())
                             return (GameCharacter)x.Value;
                     }
                     return null;
                 }

                 public void AddCharacter(GameCharacter mChar)
                 {
                     if (GameObjects.ContainsKey(mChar.ID))
                         GameObjects.Remove(mChar.ID);
                     GameObjects.Add(mChar.ID, mChar);
                 }

                 public void AddNPC(GameNPC mNpc)
                 {
                     if (GameObjects.ContainsKey(mNpc.ID))
                         GameObjects.Remove(mNpc.ID);
                     GameObjects.Add(mNpc.ID, mNpc);
                 }

                 public void ChangeMap(string mMapName, Position mPos)
                 {
                     GameObjects.Clear();
                     ViewingShop = null;
                     Chasing = null;
                     //TODO: change other shit too
                 }
    }

    public class GameObject
    {
        public Position Pos;
        public ushort ID;
    }

    public class GameCharacter : GameObject
    {
        public string Name;
        public byte Level;
        public CharacterState State;
    }

    public class GameNPC : GameObject
    {
        public ushort NPCID;
        public byte Type;
        public byte[] Info;
    }

    public enum CharacterState : byte
    {
        Normal = 1,
        Sitting = 2,
        Dead = 3,
        Resting = 4,
        Shop = 5,
        Mount = 6
    }
}
