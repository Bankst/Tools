using System;
using System.Windows.Forms;

namespace Quest_Editor_Form
{
    public class QuestComboBox : ComboBox
    {
        public QuestComboBox()
        {
            base.SelectedIndexChanged += Base_SelectedIndexChanged;
            isUserSelected = true;
        }

        private void Base_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (UserSelectedIndex != null && isUserSelected)
                UserSelectedIndex(this, SelectedIndex);

            isUserSelected = true;
        }

        public void SelectIndex(int index)
        {
            isUserSelected = false;
            base.SelectedIndex = index;
        }

        public void SelectItem(string data)
        {
            isUserSelected = false;
            base.SelectedItem = data;
        }

        public new object SelectedItem
        {
            get
            {
                return base.SelectedItem;
            }
        }

        public new string SelectedText
        {
            get
            {
                return SelectedItem.ToString();
            }
        }

        private bool isUserSelected;

        public event ComboBoxUserSelectedIndex UserSelectedIndex;
        public delegate void ComboBoxUserSelectedIndex(object sender, int index);
    }
}