using QuestEditor;
using System.Windows.Forms;

namespace Quest_Editor_Form
{
    class MobList : ListClass
    {
        public void Add(QuestMob mob)
        {
            byte isEnabled, amount;
            ListViewItem viewItem;
            byte isKill, isNPC;
            ushort mobID;
            int mobInx;

            viewItem = new ListViewItem();
            mobInx = Items.Count;

            isEnabled = mob.IsEnabled;
            amount = mob.AmountToKill;
            isKill = mob.IsToKill;
            isNPC = mob.IsNPC;
            mobID = mob.ID;

            viewItem.Text = mobID.ToString();
            viewItem.Name = mobInx.ToString();
            viewItem.Checked = Converter.ToBool(isEnabled);
            viewItem.SubItems.Add(((BoolType)isNPC).ToString());
            viewItem.SubItems.Add(((BoolType)isKill).ToString());
            viewItem.SubItems.Add(amount.ToString());

            Items.Add(viewItem);
        }
    }
}
