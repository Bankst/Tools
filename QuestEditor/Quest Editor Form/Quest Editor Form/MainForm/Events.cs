using System;
using QuestEditor;
using System.Drawing;
using System.Windows.Forms;

namespace Quest_Editor_Form
{
    public partial class MainForm : Form
    {
        private void QuestList_ItemCheckChanged(object sender, ItemCheckedEventArgs e)
        {
            SetQuestEnableState(int.Parse(e.Item.Text), e.Item.Checked);
        }

        private void QuestList_UserSelectedID(int id)
        {
            pnlScriptTab.Enabled = true;
            pnlInfoTab.Enabled = true;
            ReadQuestInfo(id);
        }

        private void MobList_ItemCheckChanged(object sender, ItemCheckedEventArgs e)
        {
            SetMobEnableState(selectedQuest.ID, int.Parse(e.Item.Name), e.Item.Checked);
        }

        private void MobList_UserSelectedIndex(int index)
        {
            ReadMobInfo(selectedQuest.ID, index);
            SetChangesSaved(false);
        } 

        private void ItemList_ItemCheckChanged(object sender, ItemCheckedEventArgs e)
        {
            SetItemEnableState(selectedQuest.ID, int.Parse(e.Item.Name), e.Item.Checked);
        }

        private void ItemList_UserSelectedIndex(int index)
        {
            ReadItemInfo(selectedQuest.ID, index);
            SetChangesSaved(false);
        }

        private void RewardList_UserSelectedIndex(int index)
        {
            ReadRewardInfo(selectedQuest.ID, index);
            SetChangesSaved(false);
        }

        private void txtStartScript_TextWritten(object sender, string text)
        {
            if (!pnlScriptTab.Enabled) return;

            string script = txtStartScript.Text;
            selectedQuest.Script.Write(ScriptType.Start, script);
            
            SetChangesSaved(false);
        }

        private void txtActionScript_TextWritten(object sender, string text)
        {
            if (!pnlScriptTab.Enabled)
                return;

            string script = txtActionScript.Text;
            selectedQuest.Script.Write(ScriptType.Action, script);

            SetChangesSaved(false);
        }

        private void txtFinishScript_TextWritten(object sender, string text)
        {
            if (!pnlScriptTab.Enabled)
                return;

            string script = txtFinishScript.Text;
            selectedQuest.Script.Write(ScriptType.Finish, script);

            SetChangesSaved(false);
        }

        private void cbRSelect_UserSelectedIndex(object sender, int index)
        {
            SetRewardInfo((ComboBox)sender, RewardOffset.RewardMethod);
            SetRewardSelectState();
            SetChangesSaved(false);
        }

        private void txtRAmount_TextWritten(object sender, string text)
        {
            SetRewardInfo((QuestTextBox)sender, RewardOffset.RewardAmount_ItemID);
            SetChangesSaved(false);
        }

        private void txtRCount_TextWritten(object sender, string text)
        {
            SetRewardInfo((QuestTextBox)sender, RewardOffset.ItemCount);
            SetChangesSaved(false);
        }

        private void txtRItemID_TextWritten(object sender, string text)
        {
            SetRewardInfo((QuestTextBox)sender, RewardOffset.RewardAmount_ItemID);
            SetChangesSaved(false);
        }

        private void cbRType_UserSelectedIndex(object sender, int index)
        {
            SetRewardInfo((ComboBox)sender, RewardOffset.RewardType);
            SetRewardTypeState(cbRType.SelectedText);
            SetChangesSaved(false);
        }

        private void txtIAmount_TextWritten(object sender, string text)
        {
            SetItemInfo((QuestTextBox)sender, ItemOffset.ItemAmount);
            SetChangesSaved(false);
        }

        private void txtIType_TextWritten(object sender, string text)
        {
            SetItemInfo((QuestTextBox)sender, ItemOffset.ItemType);
            SetChangesSaved(false);
        }

        private void txtIID_TextWritten(object sender, string text)
        {
            SetItemInfo((QuestTextBox)sender, ItemOffset.ItemID);
            SetChangesSaved(false);
        }

        private void txtMAmount_TextWritten(object sender, string text)
        {
            SetMobInfo((QuestTextBox)sender, MobOffset.AmountToKill);
            SetChangesSaved(false);
        }

        private void cbMKill_UserSelectedIndex(object sender, int index)
        {
            SetMobInfo((ComboBox)sender, MobOffset.IsToKill);
            SetChangesSaved(false);
        }

        private void cbMNPC_UserSelectedIndex(object sender, int index)
        {
            SetMobInfo((ComboBox)sender, MobOffset.IsNPC);
            SetChangesSaved(false);
        }

        private void txtMID_TextWritten(object sender, string text)
        {
            SetMobInfo((QuestTextBox)sender, MobOffset.MobID);
            SetChangesSaved(false);
        }

        private void cbClass_UserSelectedIndex(object sender, int index)
        {
            SetQuestInfo((ComboBox)sender, QuestOffset.Class);
            SetChangesSaved(false);
        }

        private void cbMulti_UserSelectedIndex(object sender, int index)
        {
            SetQuestInfo((ComboBox)sender, QuestOffset.IsMulti);
            SetChangesSaved(false);
        }

        private void cbRepeat_UserSelectedIndex(object sender, int index)
        {
            SetQuestInfo((ComboBox)sender, QuestOffset.IsRepeat);
            SetChangesSaved(false);
        }

        private void txtPrevious_TextWritten(object sender, string text)
        {
            SetQuestInfo((QuestTextBox)sender, QuestOffset.PrevQuest);
            SetChangesSaved(false);
        }

        private void txtNPC_TextWritten(object sender, string text)
        {
            SetQuestInfo((QuestTextBox)sender, QuestOffset.StartNPC);
            SetChangesSaved(false);
        }

        private void txtMaxiLevel_TextWritten(object sender, string text)
        {
            SetQuestInfo((QuestTextBox)sender, QuestOffset.MaxLevel);
            SetChangesSaved(false);
        }

        private void txtMiniLevel_TextWritten(object sender, string text)
        {
            SetQuestInfo((QuestTextBox)sender, QuestOffset.MinLevel);
            SetChangesSaved(false);
        }

        private void cbLevelBased_UserSelectedIndex(object sender, int index)
        {
            SetQuestInfo((ComboBox)sender, QuestOffset.IsRepeat);
            SetChangesSaved(false);
        }

        private void txtDescript_TextWritten(object sender, string text)
        {
            SetQuestInfo((QuestTextBox)sender, QuestOffset.QuestDescript);
            SetChangesSaved(false);
        }

        private void txtTitle_TextWritten(object sender, string text)
        {
            SetQuestInfo((QuestTextBox)sender, QuestOffset.QuestTitle);
            SetChangesSaved(false);
        }

        private void txtID_TextWritten(object sender, string text)
        {
            SetQuestInfo((QuestTextBox)sender, QuestOffset.QuestID);
            lstQuests.UpdateSelectedQuestID(ushort.Parse(text));
            SetChangesSaved(false);
        }

        private void newFMainMenu_Click(object sender, EventArgs e)
        {
            if (!savedChanges)
                if (ExitWarning())
                    return;

            questFile = new QuestFile();
            Settings.In["SHNPath"] = "";
            SetChangesSaved(true);
        }

        private void newQMainMenu_Click(object sender, EventArgs e)
        {
            if (CreateNewQuest())
                SetChangesSaved(false);
        }

        private void duplicateMainMenu_Click(object sender, EventArgs e)
        {
            if (selectedQuest == null && DuplicateQuest(selectedQuest))
                SetChangesSaved(false);
        }

        private void openMainMenu_Click(object sender, EventArgs e)
        {
            DialogForm frm = new DialogForm(DialogType.Open);
            frm.ShowDialog(this);

            if (frm.Path == null) return;

            OpenQuestFile(frm.Path);
        }

        private void saveMainMenu_Click(object sender, EventArgs e)
        {
            if (Settings.In["SHNPath"] == "")
            {
                DialogForm frm = new DialogForm(DialogType.Save);
                frm.ShowDialog(this);
                Settings.In["SHNPath"] = frm.Path;

                if (frm.Path == null) return;
            }

            SaveQuestFile(Settings.In["SHNPath"]);
        }

        private void deleteMainMenu_Click(object sender, EventArgs e)
        {
            questFile.RemoveQuest(selectedQuest);
            lstQuests.Remove(selectedQuest.ID);

            if (lstQuests.Items.Count < 1)
            {
                pnlInfoTab.Enabled = false;
                pnlScriptTab.Enabled = false;
            }

            SetChangesSaved(false);
        }

        private void deleteSelectMainMenu_Click(object sender, EventArgs e)
        {
            ListView.SelectedListViewItemCollection items = lstQuests.SelectedItems;
            foreach (ListViewItem item in items)
            {
                item.Selected = true;
                deleteMainMenu.PerformClick();
            }

            if (lstQuests.Items.Count < 1)
            {
                pnlInfoTab.Enabled = false;
                pnlScriptTab.Enabled = false;
            }

            SetChangesSaved(false);
        }

        private void deleteAllMainMenu_Click(object sender, EventArgs e)
        {
            foreach (ListViewItem item in lstQuests.Items)
            {
                item.Selected = true;
                deleteMainMenu.PerformClick();
            }

            if (lstQuests.Items.Count < 1)
            {
                pnlInfoTab.Enabled = false;
                pnlScriptTab.Enabled = false;
            }

            SetChangesSaved(false);
        }

        private void exitMainMenu_Click(object sender, EventArgs e)
        {
            ApplicationExit();
        }

        private void btnInfoTab_Click(object sender, EventArgs e)
        {
            // [This] Button Down style
            btnInfoTab.FlatAppearance.BorderColor = Color.Black;

            pnlInfoTab.BringToFront();
            btnInfoTab.BringToFront();
            pnlInfoTab.Focus();

            // [Other] Button UP style
            btnScriptTab.FlatAppearance.BorderColor = Color.LightGray;
        }

        private void btnScriptTab_Click(object sender, EventArgs e)
        {
            // [This] Button Down style
            btnScriptTab.FlatAppearance.BorderColor = Color.Black;

            pnlScriptTab.BringToFront();
            btnScriptTab.BringToFront();
            pnlScriptTab.Focus();

            // [Other] Button UP style
            btnInfoTab.FlatAppearance.BorderColor = Color.LightGray;
        }

        private void TextBox_SelectAll(object sender, KeyEventArgs e)
        {
            if (e.Control && e.KeyCode == Keys.A)
            {
                e.Handled = true;
                ((TextBox)sender).SelectAll();
            }
        }

        private void Form_Closing(object sender, FormClosingEventArgs e)
        {
            if (!savedChanges && !ExitWarning())
            {
                e.Cancel = true;
            }
            else
            {
                e.Cancel = true;
                ApplicationExit();
            }
        }
    }
}
