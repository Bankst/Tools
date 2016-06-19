using System.Collections.Generic;
using System.Data;
using System.Linq;

namespace HändlerEditor.Code
{
    public static class DataProvider
    {
        public static List<Item> Items;

        public static void Initialize()
        {
            Items = new List<Item>();

            var itemInfo = new SHNFile(Settings.DataPath + "\\ItemInfo.shn");
            var itemViewInfo = new SHNFile(Settings.DataPath + "\\ItemViewInfo.shn");


            foreach (Item i in from DataRow iiRow in itemInfo.table.Rows
                               let r =
                                   itemViewInfo.table.Rows.Cast<DataRow>().FirstOrDefault(
                                       iviRow => iiRow["InxName"].Equals(iviRow["InxName"]))
                               where r != null
                               select new Item
                                          {
                                              ID = (ushort) iiRow["ID"],
                                              InxName = (string) iiRow["InxName"],
                                              Name = (string) iiRow["Name"],
                                              DemandLevel = (uint) iiRow["DemandLv"],
                                              IconFile = ((string) r["IconFile"]).ToLower(),
                                              IconIndex = (uint) r["IconIndex"]
                                          })
            {
                Items.Add(i);
            }
        }
    }
}