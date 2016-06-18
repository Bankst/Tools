using QuestEditor;
using System.Windows.Forms;

namespace Quest_Editor_Form
{
    class ItemList : ListClass
    {
        public void Add(QuestItem item)
        {
            ListViewItem viewItem;
            ushort amount, itemID;
            byte isEnabled, type;
            int itemInx;

            viewItem = new ListViewItem();
            itemInx = Items.Count;

            isEnabled = item.IsEnabled;
            amount = item.Amount;
            itemID = item.ID;
            type = item.Type;

            viewItem.Text = itemID.ToString();
            viewItem.Name = itemInx.ToString();
            viewItem.SubItems.Add(type.ToString());
            viewItem.SubItems.Add(amount.ToString());
            viewItem.Checked = Converter.ToBool(isEnabled);

            Items.Add(viewItem);
        }
    }
}
