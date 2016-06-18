using System;
using QuestEditor;
using System.Drawing;
using System.Windows.Forms;

namespace Quest_Editor_Form
{
    class RewardList : ListClass
    {
        public void Add(QuestReward reward)
        {
            ushort itemCount, itemID;
            RewardMethod selectType;
            ListViewItem viewItem;
            RewardType type;
            byte isEnabled;
            int rewardInx;
            ulong amount;

            viewItem = new ListViewItem();
            rewardInx = Items.Count;

            isEnabled = (byte)reward.Method;
            type = (RewardType)reward.Type;
            itemCount = reward.ItemCount;
            selectType = reward.Method;
            itemID = reward.ItemID;

            viewItem.Text = type.ToString();
            viewItem.Name = rewardInx.ToString();
            viewItem.SubItems.Add(itemID.ToString());

            if (type == RewardType.Item)
            {

                itemCount = reward.ItemCount;
                viewItem.SubItems.Add(itemCount.ToString());
            }
            else
            {
                amount = reward.Amount;
                viewItem.SubItems.Add(amount.ToString());
            }

            viewItem.SubItems.Add(selectType.ToString());

            Items.Add(viewItem);
        }
    }
}
