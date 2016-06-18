using System;
using QuestEditor;
using System.Drawing;
using System.Windows.Forms;

namespace Quest_Editor_Form
{
    class ListClass : ListView
    {
        public ListClass()
        {
            isUserSelect = true;
            SelectedIndex = 0;
            SelectedID = -1;

            base.SelectedIndexChanged += new EventHandler(Base_SelectedIndexChanged);
        }

        private void Base_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (SelectedItems.Count < 1) return;

            Items[SelectedIndex].BackColor = SystemColors.Window;
            Items[SelectedIndex].ForeColor = Color.Black;

            if (sender.GetType() != typeof(RewardList))
                SelectedID = Convert.ToInt32(SelectedItems[0].Text);

            SelectedIndex = SelectedItems[0].Index;

            Items[SelectedIndex].BackColor = SystemColors.Highlight;
            Items[SelectedIndex].ForeColor = Color.White;

            if (UserSelectedID != null && isUserSelect) UserSelectedID(SelectedID);
            if (UserSelectedIndex != null && isUserSelect) UserSelectedIndex(SelectedIndex);

            isUserSelect = true;
        }

        public void SelectIndex(int inx)
        {
            isUserSelect = false;
            Items[inx].Selected = true;
        }

        public void SelectIndexAsUser(int inx)
        {
            Items[inx].Selected = true;
        }

        public new void Clear()
        {
            Items.Clear();
        }

        public int SelectedID;
        public int SelectedIndex;
        private bool isUserSelect;

        public delegate void ListUserSelectedID(int id);
        public event ListUserSelectedID UserSelectedID;

        public delegate void ListUserSelectedIndex(int index);
        public event ListUserSelectedIndex UserSelectedIndex;
    }
}
