using QuestEditor;
using System.Windows.Forms;

namespace Quest_Editor_Form
{
    class QuestList : ListClass
    {
        public void Add(Quest quest)
        {
            ListViewItem viewItem;
            bool isEnabled;
            string questID;

            viewItem = new ListViewItem();
            questID = quest.ID.ToString();
            isEnabled = Converter.ToBool(quest.IsEnabled);

            viewItem.Text = questID;
            viewItem.Name = questID;
            viewItem.Checked = isEnabled;

            Items.Add(viewItem);
        }

        public void Remove(ushort id)
        {
            Items.Find(id.ToString(), false)[0].Remove();
        }

        public void UpdateSelectedQuestID(ushort id)
        {
            Items[SelectedIndex].Text = id.ToString();
            Items[SelectedIndex].Name = id.ToString();
        }
    }
}
