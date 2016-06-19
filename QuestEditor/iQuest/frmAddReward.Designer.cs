namespace iQuest
{
    partial class frmAddReward
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.grpItems = new System.Windows.Forms.GroupBox();
            this.lstItem = new System.Windows.Forms.ListBox();
            this.btnSearch = new System.Windows.Forms.Button();
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.cmbRewardType = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtID = new System.Windows.Forms.TextBox();
            this.txtAmount = new System.Windows.Forms.TextBox();
            this.cmbIsGiven = new System.Windows.Forms.ComboBox();
            this.button1 = new System.Windows.Forms.Button();
            this.grpItems.SuspendLayout();
            this.SuspendLayout();
            // 
            // grpItems
            // 
            this.grpItems.Controls.Add(this.lstItem);
            this.grpItems.Controls.Add(this.btnSearch);
            this.grpItems.Controls.Add(this.txtSearch);
            this.grpItems.Location = new System.Drawing.Point(12, 12);
            this.grpItems.Name = "grpItems";
            this.grpItems.Size = new System.Drawing.Size(206, 409);
            this.grpItems.TabIndex = 1;
            this.grpItems.TabStop = false;
            this.grpItems.Text = "Items:";
            // 
            // lstItem
            // 
            this.lstItem.FormattingEnabled = true;
            this.lstItem.Location = new System.Drawing.Point(8, 45);
            this.lstItem.Name = "lstItem";
            this.lstItem.Size = new System.Drawing.Size(182, 355);
            this.lstItem.TabIndex = 2;
            this.lstItem.MouseClick += new System.Windows.Forms.MouseEventHandler(this.lstItem_MouseClick);
            this.lstItem.SelectedIndexChanged += new System.EventHandler(this.lstItem_SelectedIndexChanged);
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(119, 19);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(72, 20);
            this.btnSearch.TabIndex = 1;
            this.btnSearch.Text = "Search";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // txtSearch
            // 
            this.txtSearch.Location = new System.Drawing.Point(7, 19);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(106, 20);
            this.txtSearch.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(237, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(34, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Type:";
            // 
            // cmbRewardType
            // 
            this.cmbRewardType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbRewardType.FormattingEnabled = true;
            this.cmbRewardType.Location = new System.Drawing.Point(300, 18);
            this.cmbRewardType.Name = "cmbRewardType";
            this.cmbRewardType.Size = new System.Drawing.Size(64, 21);
            this.cmbRewardType.TabIndex = 3;
            this.cmbRewardType.MouseClick += new System.Windows.Forms.MouseEventHandler(this.cmbRewardType_MouseClick);
            this.cmbRewardType.SelectedIndexChanged += new System.EventHandler(this.cmbRewardType_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(237, 60);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(21, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "ID:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(237, 102);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(46, 13);
            this.label3.TabIndex = 5;
            this.label3.Text = "Amount:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(238, 138);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "isGiven:";
            // 
            // txtID
            // 
            this.txtID.Location = new System.Drawing.Point(300, 57);
            this.txtID.Name = "txtID";
            this.txtID.Size = new System.Drawing.Size(64, 20);
            this.txtID.TabIndex = 7;
            // 
            // txtAmount
            // 
            this.txtAmount.Location = new System.Drawing.Point(300, 99);
            this.txtAmount.Name = "txtAmount";
            this.txtAmount.Size = new System.Drawing.Size(64, 20);
            this.txtAmount.TabIndex = 8;
            this.txtAmount.Text = "0";
            // 
            // cmbIsGiven
            // 
            this.cmbIsGiven.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbIsGiven.FormattingEnabled = true;
            this.cmbIsGiven.Location = new System.Drawing.Point(300, 135);
            this.cmbIsGiven.Name = "cmbIsGiven";
            this.cmbIsGiven.Size = new System.Drawing.Size(64, 21);
            this.cmbIsGiven.TabIndex = 9;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(240, 171);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(124, 42);
            this.button1.TabIndex = 10;
            this.button1.Text = "Add Reward";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // frmAddReward
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(384, 430);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.cmbIsGiven);
            this.Controls.Add(this.txtAmount);
            this.Controls.Add(this.txtID);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cmbRewardType);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.grpItems);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "frmAddReward";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Add Reward";
            this.Load += new System.EventHandler(this.frmAddReward_Load);
            this.grpItems.ResumeLayout(false);
            this.grpItems.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox grpItems;
        private System.Windows.Forms.ListBox lstItem;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.TextBox txtSearch;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cmbRewardType;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtID;
        private System.Windows.Forms.TextBox txtAmount;
        private System.Windows.Forms.ComboBox cmbIsGiven;
        private System.Windows.Forms.Button button1;
    }
}