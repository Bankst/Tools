using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FiestaBot.Tools;
using System.IO;

namespace FiestaBot
{
    public static class DataProvider
    {
        private static List<ItemInfo> mItemInfo = new List<ItemInfo>();
        private static List<Recipe> Recipes = new List<Recipe>();
        public static ushort ItemCount { get { return (ushort)mItemInfo.Count; } }

        public static void Initialize(string mFolder)
        {
            DateTime start = DateTime.Now;
            if (!LoadItems(mFolder))
                Log.WriteLine("Could not find ItemFiles.");

            if (!LoadRecipes(mFolder))
                Log.WriteLine("Could not load produce skills.");

            Log.WriteLine("FileLoad finished in {0}ms", Math.Round((DateTime.Now - start).TotalMilliseconds, 1));
        }

        private static bool LoadRecipes(string mPath)
        {
            string ItemInfoPath = mPath + "\\Produce.shn";
            if (!File.Exists(ItemInfoPath)) return false;
            SHNFile Produce = new SHNFile(ItemInfoPath);
            byte RecipeIDOffset = (byte)Produce.getColIndex("ProductID");
            byte RecipeNameOffset = (byte)Produce.getColIndex("ProduceIndex");
            byte FinalProductOffset = (byte)Produce.getColIndex("Product");
            byte Raw0 = (byte)Produce.getColIndex("Raw0");
            byte Quantity0 = (byte)Produce.getColIndex("Quantity0");
            byte Raw1 = (byte)Produce.getColIndex("Raw1");
            byte Quantity1 = (byte)Produce.getColIndex("Quantity1");
            byte Raw2 = (byte)Produce.getColIndex("Raw2");
            byte Quantity2 = (byte)Produce.getColIndex("Quantity2");
            byte Raw3 = (byte)Produce.getColIndex("Raw3");
            byte Quantity3 = (byte)Produce.getColIndex("Quantity3");

            for (int i = 0; i < Produce.table.Rows.Count; i++)
            {
                Recipe lol = new Recipe();
                lol.ID = Convert.ToUInt16(Produce.table.Rows[i][RecipeIDOffset]);
                lol.Product = GetItemByName((string)Produce.table.Rows[i][FinalProductOffset]);
                lol.RecipeName = (string)Produce.table.Rows[i][RecipeNameOffset];

                string raw0n = (string)Produce.table.Rows[i][Raw0];
                ItemInfo item0 = null;
                if (raw0n.Length > 3 && (item0 = GetItemByName(raw0n)) != null)
                {
                    byte quant0 = Convert.ToByte(Produce.table.Rows[i][Quantity0]);
                    lol.Ingredients.Add(item0, quant0);
                }

                string raw1n = (string)Produce.table.Rows[i][Raw1];
                ItemInfo item1 = null;
                if (raw1n.Length > 3 && (item1 = GetItemByName(raw1n)) != null)
                {
                    byte quant1 = Convert.ToByte(Produce.table.Rows[i][Quantity1]);
                    lol.Ingredients.Add(item1, quant1);
                }

                string raw2n = (string)Produce.table.Rows[i][Raw2];
                ItemInfo item2 = null;
                if (raw0n.Length > 3 && (item2 = GetItemByName(raw2n)) != null)
                {
                    byte quant2 = Convert.ToByte(Produce.table.Rows[i][Quantity2]);
                    lol.Ingredients.Add(item2, quant2);
                }

                string raw3n = (string)Produce.table.Rows[i][Raw3];
                ItemInfo item3 = null;
                if (raw0n.Length > 3 && (item3 = GetItemByName(raw3n)) != null)
                {
                    byte quant3 = Convert.ToByte(Produce.table.Rows[i][Quantity3]);
                    lol.Ingredients.Add(item3, quant3);
                }
                Recipes.Add(lol);
            }
            Produce.Dispose();
            return true;
        }

        private static bool LoadItems(string mPath)
        {
            string ItemInfoPath = mPath + "\\ItemInfo.shn";
            if (!File.Exists(ItemInfoPath)) return false;
            SHNFile fItemInfo = new SHNFile(ItemInfoPath);
            byte IDOffset = (byte)fItemInfo.getColIndex("ID");
            byte NameOffset = (byte)fItemInfo.getColIndex("InxName");
            byte TypeOffset = (byte)fItemInfo.getColIndex("Type");
            byte MaxOffset = (byte)fItemInfo.getColIndex("MaxLot");
            byte BuyPriceOffset = (byte)fItemInfo.getColIndex("BuyPrice");
            byte SellPriceOffset = (byte)fItemInfo.getColIndex("SellPrice");

            for (int i = 0; i < fItemInfo.table.Rows.Count; i++)
            {
                ItemInfo inf = new ItemInfo();
                inf.ID = Convert.ToUInt16(fItemInfo.table.Rows[i][IDOffset]);
                inf.Name = (string)fItemInfo.table.Rows[i][NameOffset];
                inf.Type = (ItemType)((uint)fItemInfo.table.Rows[i][TypeOffset]);
                inf.MaxCount = Convert.ToUInt32(fItemInfo.table.Rows[i][MaxOffset]);
                inf.BuyPrice = (uint)(fItemInfo.table.Rows[i][BuyPriceOffset]);
                inf.SellPrice = (uint)(fItemInfo.table.Rows[i][SellPriceOffset]);
                mItemInfo.Add(inf);
            }
            fItemInfo.Dispose();

            string ItemUseFile = mPath + "\\ItemUseEffect.shn";
            if (!File.Exists(ItemUseFile)) return false;
            SHNFile UseEffect = new SHNFile(ItemUseFile);
            byte LnxOffset = (byte)UseEffect.getColIndex("ItemIndex");
            byte EffectOffset = (byte)UseEffect.getColIndex("UseEffectA");
            byte EffectValue = (byte)UseEffect.getColIndex("UseValueA");
            for (int i = 0; i < UseEffect.table.Rows.Count; i++)
            {
                string Name = (string)UseEffect.table.Rows[i][LnxOffset];
                byte Type = Convert.ToByte(UseEffect.table.Rows[i][EffectOffset]);
                ushort Value = Convert.ToUInt16(UseEffect.table.Rows[i][EffectValue]);
                ItemInfo workingItem = mItemInfo.Find(d => d.Name == Name);
                if (workingItem == null) continue;
                switch (Type)
                {
                    case 0: //HPPot
                        workingItem.HPRecovery = Value;
                        break;
                    case 1:
                        workingItem.SPRecovery = Value;
                        break;
                    default:
                        continue;
                }
            }
            UseEffect.Dispose();
            return true;
        }

        public static Recipe GetRecipeByID(ushort ID)
        {
            return Recipes.Find(d => d.ID == ID);
        }

        public static ItemInfo GetItemByID(ushort ID)
        {
            return mItemInfo.Find(d => d.ID == ID);
        }

        public static ItemInfo GetItemByName(string Name)
        {
            return mItemInfo.Find(d => d.Name == Name);
        }
    }

    public class Recipe
    {
        public ushort ID;
        public Dictionary<ItemInfo, byte> Ingredients = new Dictionary<ItemInfo,byte>();
        public ItemInfo Product;
        public string RecipeName;
    }

    public class ItemInfo
    {
        public ushort ID;
        public ItemType Type;
        public uint MaxCount = 1;
        public string Name;
        public uint BuyPrice = 0;
        public uint SellPrice = 0;
        public ushort SPRecovery = 0;
        public ushort HPRecovery = 0;
    }

    public enum ItemType : byte
    {
        Equip = 0,
        Useable = 1,
        Etc = 2
    }
}
