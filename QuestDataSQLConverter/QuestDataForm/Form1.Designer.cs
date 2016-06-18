namespace QuestDataForm
{
    partial class Form1
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
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.lQuest = new System.Windows.Forms.Label();
            this.lTitleID = new System.Windows.Forms.Label();
            this.lDecryption = new System.Windows.Forms.Label();
            this.lReapeat = new System.Windows.Forms.Label();
            this.lNeedLevel = new System.Windows.Forms.Label();
            this.lMinLevel = new System.Windows.Forms.Label();
            this.lMaxLevel = new System.Windows.Forms.Label();
            this.lStartingNPC = new System.Windows.Forms.Label();
            this.lPreQuest = new System.Windows.Forms.Label();
            this.lMultiQuest = new System.Windows.Forms.Label();
            this.NeedLevel = new System.Windows.Forms.Label();
            this.lNeedClass = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.tp1Amount = new System.Windows.Forms.Label();
            this.tp1ItemID = new System.Windows.Forms.Label();
            this.tp1rewardType = new System.Windows.Forms.Label();
            this.tp1reward = new System.Windows.Forms.Label();
            this.label33 = new System.Windows.Forms.Label();
            this.label32 = new System.Windows.Forms.Label();
            this.label31 = new System.Windows.Forms.Label();
            this.label30 = new System.Windows.Forms.Label();
            this.listBox2 = new System.Windows.Forms.ListBox();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.tp2Amount = new System.Windows.Forms.Label();
            this.tp2ItemID = new System.Windows.Forms.Label();
            this.tp2ItemType = new System.Windows.Forms.Label();
            this.tp2Enable = new System.Windows.Forms.Label();
            this.label25 = new System.Windows.Forms.Label();
            this.label24 = new System.Windows.Forms.Label();
            this.label23 = new System.Windows.Forms.Label();
            this.label22 = new System.Windows.Forms.Label();
            this.listBox3 = new System.Windows.Forms.ListBox();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.tp3IsEnable = new System.Windows.Forms.Label();
            this.tp3Amount = new System.Windows.Forms.Label();
            this.Tp3IsToKill = new System.Windows.Forms.Label();
            this.tp3IsNPC = new System.Windows.Forms.Label();
            this.tp3MobID = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.listBox4 = new System.Windows.Forms.ListBox();
            this.tabControl2 = new System.Windows.Forms.TabControl();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.tabPage5 = new System.Windows.Forms.TabPage();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.tabPage6 = new System.Windows.Forms.TabPage();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.button2 = new System.Windows.Forms.Button();
            this.label17 = new System.Windows.Forms.Label();
            this.label18 = new System.Windows.Forms.Label();
            this.lDBConnect = new System.Windows.Forms.Label();
            this.lFullCount = new System.Windows.Forms.Label();
            this.button3 = new System.Windows.Forms.Button();
            this.label19 = new System.Windows.Forms.Label();
            this.lEnable = new System.Windows.Forms.Label();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.tabPage3.SuspendLayout();
            this.tabControl2.SuspendLayout();
            this.tabPage4.SuspendLayout();
            this.tabPage5.SuspendLayout();
            this.tabPage6.SuspendLayout();
            this.SuspendLayout();
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // listBox1
            // 
            this.listBox1.FormattingEnabled = true;
            this.listBox1.Location = new System.Drawing.Point(12, 12);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(205, 407);
            this.listBox1.TabIndex = 0;
            this.listBox1.SelectedIndexChanged += new System.EventHandler(this.listBox1_SelectedIndexChanged);
            this.listBox1.SelectedValueChanged += new System.EventHandler(this.listBox1_SelectedValueChanged);
            this.listBox1.RightToLeftChanged += new System.EventHandler(this.listBox1_RightToLeftChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(258, 12);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(52, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "QuestID :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(258, 35);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(44, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "TitleID :";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(258, 60);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(75, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "DecryptionID :";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(258, 86);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(68, 13);
            this.label4.TabIndex = 4;
            this.label4.Text = "Repeatable :";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(258, 113);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(65, 13);
            this.label5.TabIndex = 5;
            this.label5.Text = "NeedLevel :";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(258, 144);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(56, 13);
            this.label6.TabIndex = 6;
            this.label6.Text = "MinLevel :";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(258, 176);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(59, 13);
            this.label7.TabIndex = 7;
            this.label7.Text = "MaxLevel :";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(258, 201);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(71, 13);
            this.label8.TabIndex = 8;
            this.label8.Text = "StartingNPC :";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(258, 231);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(57, 13);
            this.label9.TabIndex = 9;
            this.label9.Text = "PreQuest :";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(258, 258);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(57, 13);
            this.label10.TabIndex = 10;
            this.label10.Text = "MultiQuest";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(261, 294);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(64, 13);
            this.label11.TabIndex = 11;
            this.label11.Text = "NeedClass :";
            // 
            // lQuest
            // 
            this.lQuest.AutoSize = true;
            this.lQuest.Location = new System.Drawing.Point(349, 13);
            this.lQuest.Name = "lQuest";
            this.lQuest.Size = new System.Drawing.Size(0, 13);
            this.lQuest.TabIndex = 12;
            // 
            // lTitleID
            // 
            this.lTitleID.AutoSize = true;
            this.lTitleID.Location = new System.Drawing.Point(322, 35);
            this.lTitleID.Name = "lTitleID";
            this.lTitleID.Size = new System.Drawing.Size(0, 13);
            this.lTitleID.TabIndex = 13;
            // 
            // lDecryption
            // 
            this.lDecryption.AutoSize = true;
            this.lDecryption.Location = new System.Drawing.Point(352, 60);
            this.lDecryption.Name = "lDecryption";
            this.lDecryption.Size = new System.Drawing.Size(0, 13);
            this.lDecryption.TabIndex = 14;
            // 
            // lReapeat
            // 
            this.lReapeat.AutoSize = true;
            this.lReapeat.Location = new System.Drawing.Point(355, 86);
            this.lReapeat.Name = "lReapeat";
            this.lReapeat.Size = new System.Drawing.Size(0, 13);
            this.lReapeat.TabIndex = 15;
            // 
            // lNeedLevel
            // 
            this.lNeedLevel.AutoSize = true;
            this.lNeedLevel.Location = new System.Drawing.Point(352, 113);
            this.lNeedLevel.Name = "lNeedLevel";
            this.lNeedLevel.Size = new System.Drawing.Size(0, 13);
            this.lNeedLevel.TabIndex = 16;
            // 
            // lMinLevel
            // 
            this.lMinLevel.AutoSize = true;
            this.lMinLevel.Location = new System.Drawing.Point(358, 144);
            this.lMinLevel.Name = "lMinLevel";
            this.lMinLevel.Size = new System.Drawing.Size(0, 13);
            this.lMinLevel.TabIndex = 17;
            // 
            // lMaxLevel
            // 
            this.lMaxLevel.AutoSize = true;
            this.lMaxLevel.Location = new System.Drawing.Point(358, 176);
            this.lMaxLevel.Name = "lMaxLevel";
            this.lMaxLevel.Size = new System.Drawing.Size(0, 13);
            this.lMaxLevel.TabIndex = 18;
            // 
            // lStartingNPC
            // 
            this.lStartingNPC.AutoSize = true;
            this.lStartingNPC.Location = new System.Drawing.Point(355, 201);
            this.lStartingNPC.Name = "lStartingNPC";
            this.lStartingNPC.Size = new System.Drawing.Size(0, 13);
            this.lStartingNPC.TabIndex = 19;
            // 
            // lPreQuest
            // 
            this.lPreQuest.AutoSize = true;
            this.lPreQuest.Location = new System.Drawing.Point(355, 231);
            this.lPreQuest.Name = "lPreQuest";
            this.lPreQuest.Size = new System.Drawing.Size(0, 13);
            this.lPreQuest.TabIndex = 20;
            // 
            // lMultiQuest
            // 
            this.lMultiQuest.AutoSize = true;
            this.lMultiQuest.Location = new System.Drawing.Point(352, 258);
            this.lMultiQuest.Name = "lMultiQuest";
            this.lMultiQuest.Size = new System.Drawing.Size(0, 13);
            this.lMultiQuest.TabIndex = 21;
            // 
            // NeedLevel
            // 
            this.NeedLevel.AutoSize = true;
            this.NeedLevel.Location = new System.Drawing.Point(352, 293);
            this.NeedLevel.Name = "NeedLevel";
            this.NeedLevel.Size = new System.Drawing.Size(0, 13);
            this.NeedLevel.TabIndex = 22;
            // 
            // lNeedClass
            // 
            this.lNeedClass.AutoSize = true;
            this.lNeedClass.Location = new System.Drawing.Point(359, 294);
            this.lNeedClass.Name = "lNeedClass";
            this.lNeedClass.Size = new System.Drawing.Size(0, 13);
            this.lNeedClass.TabIndex = 23;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(257, 349);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(98, 23);
            this.button1.TabIndex = 24;
            this.button1.Text = "SaveQuest";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Location = new System.Drawing.Point(398, 57);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(336, 208);
            this.tabControl1.TabIndex = 25;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.tp1Amount);
            this.tabPage1.Controls.Add(this.tp1ItemID);
            this.tabPage1.Controls.Add(this.tp1rewardType);
            this.tabPage1.Controls.Add(this.tp1reward);
            this.tabPage1.Controls.Add(this.label33);
            this.tabPage1.Controls.Add(this.label32);
            this.tabPage1.Controls.Add(this.label31);
            this.tabPage1.Controls.Add(this.label30);
            this.tabPage1.Controls.Add(this.listBox2);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(328, 182);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "tabPage1";
            this.tabPage1.UseVisualStyleBackColor = true;
            this.tabPage1.Click += new System.EventHandler(this.tabPage1_Click_1);
            // 
            // tp1Amount
            // 
            this.tp1Amount.AutoSize = true;
            this.tp1Amount.Location = new System.Drawing.Point(209, 34);
            this.tp1Amount.Name = "tp1Amount";
            this.tp1Amount.Size = new System.Drawing.Size(0, 13);
            this.tp1Amount.TabIndex = 8;
            // 
            // tp1ItemID
            // 
            this.tp1ItemID.AutoSize = true;
            this.tp1ItemID.Location = new System.Drawing.Point(209, 7);
            this.tp1ItemID.Name = "tp1ItemID";
            this.tp1ItemID.Size = new System.Drawing.Size(0, 13);
            this.tp1ItemID.TabIndex = 7;
            // 
            // tp1rewardType
            // 
            this.tp1rewardType.AutoSize = true;
            this.tp1rewardType.Location = new System.Drawing.Point(98, 34);
            this.tp1rewardType.Name = "tp1rewardType";
            this.tp1rewardType.Size = new System.Drawing.Size(0, 13);
            this.tp1rewardType.TabIndex = 6;
            // 
            // tp1reward
            // 
            this.tp1reward.AutoSize = true;
            this.tp1reward.Location = new System.Drawing.Point(98, 7);
            this.tp1reward.Name = "tp1reward";
            this.tp1reward.Size = new System.Drawing.Size(0, 13);
            this.tp1reward.TabIndex = 5;
            // 
            // label33
            // 
            this.label33.AutoSize = true;
            this.label33.Location = new System.Drawing.Point(160, 34);
            this.label33.Name = "label33";
            this.label33.Size = new System.Drawing.Size(49, 13);
            this.label33.TabIndex = 4;
            this.label33.Text = "Amount :";
            // 
            // label32
            // 
            this.label32.AutoSize = true;
            this.label32.Location = new System.Drawing.Point(159, 7);
            this.label32.Name = "label32";
            this.label32.Size = new System.Drawing.Size(44, 13);
            this.label32.TabIndex = 3;
            this.label32.Text = "ItemID :";
            // 
            // label31
            // 
            this.label31.AutoSize = true;
            this.label31.Location = new System.Drawing.Point(6, 34);
            this.label31.Name = "label31";
            this.label31.Size = new System.Drawing.Size(74, 13);
            this.label31.TabIndex = 2;
            this.label31.Text = "RewardType :";
            // 
            // label30
            // 
            this.label30.AutoSize = true;
            this.label30.Location = new System.Drawing.Point(6, 7);
            this.label30.Name = "label30";
            this.label30.Size = new System.Drawing.Size(86, 13);
            this.label30.TabIndex = 1;
            this.label30.Text = "RewardMethod :";
            // 
            // listBox2
            // 
            this.listBox2.FormattingEnabled = true;
            this.listBox2.Location = new System.Drawing.Point(0, 71);
            this.listBox2.Name = "listBox2";
            this.listBox2.Size = new System.Drawing.Size(328, 108);
            this.listBox2.TabIndex = 0;
            this.listBox2.SelectedIndexChanged += new System.EventHandler(this.listBox2_SelectedIndexChanged);
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.tp2Amount);
            this.tabPage2.Controls.Add(this.tp2ItemID);
            this.tabPage2.Controls.Add(this.tp2ItemType);
            this.tabPage2.Controls.Add(this.tp2Enable);
            this.tabPage2.Controls.Add(this.label25);
            this.tabPage2.Controls.Add(this.label24);
            this.tabPage2.Controls.Add(this.label23);
            this.tabPage2.Controls.Add(this.label22);
            this.tabPage2.Controls.Add(this.listBox3);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(328, 182);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "tabPage2";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // tp2Amount
            // 
            this.tp2Amount.AutoSize = true;
            this.tp2Amount.Location = new System.Drawing.Point(158, 34);
            this.tp2Amount.Name = "tp2Amount";
            this.tp2Amount.Size = new System.Drawing.Size(0, 13);
            this.tp2Amount.TabIndex = 8;
            // 
            // tp2ItemID
            // 
            this.tp2ItemID.AutoSize = true;
            this.tp2ItemID.Location = new System.Drawing.Point(164, 7);
            this.tp2ItemID.Name = "tp2ItemID";
            this.tp2ItemID.Size = new System.Drawing.Size(0, 13);
            this.tp2ItemID.TabIndex = 7;
            // 
            // tp2ItemType
            // 
            this.tp2ItemType.AutoSize = true;
            this.tp2ItemType.Location = new System.Drawing.Point(65, 34);
            this.tp2ItemType.Name = "tp2ItemType";
            this.tp2ItemType.Size = new System.Drawing.Size(0, 13);
            this.tp2ItemType.TabIndex = 6;
            // 
            // tp2Enable
            // 
            this.tp2Enable.AutoSize = true;
            this.tp2Enable.Location = new System.Drawing.Point(65, 7);
            this.tp2Enable.Name = "tp2Enable";
            this.tp2Enable.Size = new System.Drawing.Size(0, 13);
            this.tp2Enable.TabIndex = 5;
            // 
            // label25
            // 
            this.label25.AutoSize = true;
            this.label25.Location = new System.Drawing.Point(109, 34);
            this.label25.Name = "label25";
            this.label25.Size = new System.Drawing.Size(49, 13);
            this.label25.TabIndex = 4;
            this.label25.Text = "Amount :";
            // 
            // label24
            // 
            this.label24.AutoSize = true;
            this.label24.Location = new System.Drawing.Point(114, 7);
            this.label24.Name = "label24";
            this.label24.Size = new System.Drawing.Size(44, 13);
            this.label24.TabIndex = 3;
            this.label24.Text = "ItemID :";
            // 
            // label23
            // 
            this.label23.AutoSize = true;
            this.label23.Location = new System.Drawing.Point(7, 33);
            this.label23.Name = "label23";
            this.label23.Size = new System.Drawing.Size(57, 13);
            this.label23.TabIndex = 2;
            this.label23.Text = "ItemType :";
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.Location = new System.Drawing.Point(4, 7);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(54, 13);
            this.label22.TabIndex = 1;
            this.label22.Text = "IsEnable :";
            // 
            // listBox3
            // 
            this.listBox3.FormattingEnabled = true;
            this.listBox3.Location = new System.Drawing.Point(0, 61);
            this.listBox3.Name = "listBox3";
            this.listBox3.Size = new System.Drawing.Size(332, 121);
            this.listBox3.TabIndex = 0;
            this.listBox3.SelectedIndexChanged += new System.EventHandler(this.listBox3_SelectedIndexChanged);
            // 
            // tabPage3
            // 
            this.tabPage3.Controls.Add(this.tp3IsEnable);
            this.tabPage3.Controls.Add(this.tp3Amount);
            this.tabPage3.Controls.Add(this.Tp3IsToKill);
            this.tabPage3.Controls.Add(this.tp3IsNPC);
            this.tabPage3.Controls.Add(this.tp3MobID);
            this.tabPage3.Controls.Add(this.label16);
            this.tabPage3.Controls.Add(this.label15);
            this.tabPage3.Controls.Add(this.label14);
            this.tabPage3.Controls.Add(this.label13);
            this.tabPage3.Controls.Add(this.label12);
            this.tabPage3.Controls.Add(this.listBox4);
            this.tabPage3.Location = new System.Drawing.Point(4, 22);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage3.Size = new System.Drawing.Size(328, 182);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "tabPage3";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // tp3IsEnable
            // 
            this.tp3IsEnable.AutoSize = true;
            this.tp3IsEnable.Location = new System.Drawing.Point(65, 65);
            this.tp3IsEnable.Name = "tp3IsEnable";
            this.tp3IsEnable.Size = new System.Drawing.Size(0, 13);
            this.tp3IsEnable.TabIndex = 10;
            // 
            // tp3Amount
            // 
            this.tp3Amount.AutoSize = true;
            this.tp3Amount.Location = new System.Drawing.Point(165, 34);
            this.tp3Amount.Name = "tp3Amount";
            this.tp3Amount.Size = new System.Drawing.Size(0, 13);
            this.tp3Amount.TabIndex = 9;
            // 
            // Tp3IsToKill
            // 
            this.Tp3IsToKill.AutoSize = true;
            this.Tp3IsToKill.Location = new System.Drawing.Point(165, 7);
            this.Tp3IsToKill.Name = "Tp3IsToKill";
            this.Tp3IsToKill.Size = new System.Drawing.Size(0, 13);
            this.Tp3IsToKill.TabIndex = 8;
            // 
            // tp3IsNPC
            // 
            this.tp3IsNPC.AutoSize = true;
            this.tp3IsNPC.Location = new System.Drawing.Point(62, 34);
            this.tp3IsNPC.Name = "tp3IsNPC";
            this.tp3IsNPC.Size = new System.Drawing.Size(0, 13);
            this.tp3IsNPC.TabIndex = 7;
            // 
            // tp3MobID
            // 
            this.tp3MobID.AutoSize = true;
            this.tp3MobID.Location = new System.Drawing.Point(59, 7);
            this.tp3MobID.Name = "tp3MobID";
            this.tp3MobID.Size = new System.Drawing.Size(0, 13);
            this.tp3MobID.TabIndex = 6;
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(111, 34);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(49, 13);
            this.label16.TabIndex = 5;
            this.label16.Text = "Amount :";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(111, 7);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(47, 13);
            this.label15.TabIndex = 4;
            this.label15.Text = "IsToKill :";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(4, 65);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(54, 13);
            this.label14.TabIndex = 3;
            this.label14.Text = "IsEnable :";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(6, 34);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(43, 13);
            this.label13.TabIndex = 2;
            this.label13.Text = "IsNPC :";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(7, 7);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(45, 13);
            this.label12.TabIndex = 1;
            this.label12.Text = "MobID :";
            // 
            // listBox4
            // 
            this.listBox4.FormattingEnabled = true;
            this.listBox4.Location = new System.Drawing.Point(3, 97);
            this.listBox4.Name = "listBox4";
            this.listBox4.Size = new System.Drawing.Size(186, 82);
            this.listBox4.TabIndex = 0;
            this.listBox4.SelectedIndexChanged += new System.EventHandler(this.listBox4_SelectedIndexChanged);
            // 
            // tabControl2
            // 
            this.tabControl2.Controls.Add(this.tabPage4);
            this.tabControl2.Controls.Add(this.tabPage5);
            this.tabControl2.Controls.Add(this.tabPage6);
            this.tabControl2.Location = new System.Drawing.Point(398, 271);
            this.tabControl2.Name = "tabControl2";
            this.tabControl2.SelectedIndex = 0;
            this.tabControl2.Size = new System.Drawing.Size(336, 153);
            this.tabControl2.TabIndex = 26;
            // 
            // tabPage4
            // 
            this.tabPage4.Controls.Add(this.textBox1);
            this.tabPage4.Location = new System.Drawing.Point(4, 22);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage4.Size = new System.Drawing.Size(328, 127);
            this.tabPage4.TabIndex = 0;
            this.tabPage4.Text = "tabPage4";
            this.tabPage4.UseVisualStyleBackColor = true;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(6, 6);
            this.textBox1.Multiline = true;
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(180, 115);
            this.textBox1.TabIndex = 0;
            // 
            // tabPage5
            // 
            this.tabPage5.Controls.Add(this.textBox2);
            this.tabPage5.Location = new System.Drawing.Point(4, 22);
            this.tabPage5.Name = "tabPage5";
            this.tabPage5.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage5.Size = new System.Drawing.Size(328, 127);
            this.tabPage5.TabIndex = 1;
            this.tabPage5.Text = "tabPage5";
            this.tabPage5.UseVisualStyleBackColor = true;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(3, 6);
            this.textBox2.Multiline = true;
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(183, 118);
            this.textBox2.TabIndex = 0;
            // 
            // tabPage6
            // 
            this.tabPage6.Controls.Add(this.textBox3);
            this.tabPage6.Location = new System.Drawing.Point(4, 22);
            this.tabPage6.Name = "tabPage6";
            this.tabPage6.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage6.Size = new System.Drawing.Size(328, 127);
            this.tabPage6.TabIndex = 2;
            this.tabPage6.Text = "tabPage6";
            this.tabPage6.UseVisualStyleBackColor = true;
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(6, 6);
            this.textBox3.Multiline = true;
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(180, 118);
            this.textBox3.TabIndex = 0;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(257, 378);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(98, 23);
            this.button2.TabIndex = 27;
            this.button2.Text = "SaveAllQuest";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(395, 9);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(99, 13);
            this.label17.TabIndex = 28;
            this.label17.Text = "DatabaseConnect :";
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(566, 13);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(85, 13);
            this.label18.TabIndex = 29;
            this.label18.Text = "FullQuestCount :";
            // 
            // lDBConnect
            // 
            this.lDBConnect.AutoSize = true;
            this.lDBConnect.Location = new System.Drawing.Point(505, 12);
            this.lDBConnect.Name = "lDBConnect";
            this.lDBConnect.Size = new System.Drawing.Size(0, 13);
            this.lDBConnect.TabIndex = 30;
            // 
            // lFullCount
            // 
            this.lFullCount.AutoSize = true;
            this.lFullCount.Location = new System.Drawing.Point(657, 13);
            this.lFullCount.Name = "lFullCount";
            this.lFullCount.Size = new System.Drawing.Size(0, 13);
            this.lFullCount.TabIndex = 31;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(398, 28);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(129, 23);
            this.button3.TabIndex = 32;
            this.button3.Text = "EditDatabaseSettings";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Location = new System.Drawing.Point(261, 319);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(48, 13);
            this.label19.TabIndex = 33;
            this.label19.Text = "IsEnable";
            // 
            // lEnable
            // 
            this.lEnable.AutoSize = true;
            this.lEnable.Location = new System.Drawing.Point(318, 319);
            this.lEnable.Name = "lEnable";
            this.lEnable.Size = new System.Drawing.Size(0, 13);
            this.lEnable.TabIndex = 34;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(732, 436);
            this.Controls.Add(this.lEnable);
            this.Controls.Add(this.label19);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.lFullCount);
            this.Controls.Add(this.lDBConnect);
            this.Controls.Add(this.label18);
            this.Controls.Add(this.label17);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.tabControl2);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.lNeedClass);
            this.Controls.Add(this.NeedLevel);
            this.Controls.Add(this.lMultiQuest);
            this.Controls.Add(this.lPreQuest);
            this.Controls.Add(this.lStartingNPC);
            this.Controls.Add(this.lMaxLevel);
            this.Controls.Add(this.lMinLevel);
            this.Controls.Add(this.lNeedLevel);
            this.Controls.Add(this.lReapeat);
            this.Controls.Add(this.lDecryption);
            this.Controls.Add(this.lTitleID);
            this.Controls.Add(this.lQuest);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.listBox1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            this.tabPage3.ResumeLayout(false);
            this.tabPage3.PerformLayout();
            this.tabControl2.ResumeLayout(false);
            this.tabPage4.ResumeLayout(false);
            this.tabPage4.PerformLayout();
            this.tabPage5.ResumeLayout(false);
            this.tabPage5.PerformLayout();
            this.tabPage6.ResumeLayout(false);
            this.tabPage6.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.ListBox listBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label lQuest;
        private System.Windows.Forms.Label lTitleID;
        private System.Windows.Forms.Label lDecryption;
        private System.Windows.Forms.Label lReapeat;
        private System.Windows.Forms.Label lNeedLevel;
        private System.Windows.Forms.Label lMinLevel;
        private System.Windows.Forms.Label lMaxLevel;
        private System.Windows.Forms.Label lStartingNPC;
        private System.Windows.Forms.Label lPreQuest;
        private System.Windows.Forms.Label lMultiQuest;
        private System.Windows.Forms.Label NeedLevel;
        private System.Windows.Forms.Label lNeedClass;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.ListBox listBox2;
        private System.Windows.Forms.ListBox listBox3;
        private System.Windows.Forms.ListBox listBox4;
        private System.Windows.Forms.TabControl tabControl2;
        private System.Windows.Forms.TabPage tabPage4;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TabPage tabPage5;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.TabPage tabPage6;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label tp3IsEnable;
        private System.Windows.Forms.Label tp3Amount;
        private System.Windows.Forms.Label Tp3IsToKill;
        private System.Windows.Forms.Label tp3IsNPC;
        private System.Windows.Forms.Label tp3MobID;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label tp2Amount;
        private System.Windows.Forms.Label tp2ItemID;
        private System.Windows.Forms.Label tp2ItemType;
        private System.Windows.Forms.Label tp2Enable;
        private System.Windows.Forms.Label label25;
        private System.Windows.Forms.Label label24;
        private System.Windows.Forms.Label label23;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.Label label33;
        private System.Windows.Forms.Label label32;
        private System.Windows.Forms.Label label31;
        private System.Windows.Forms.Label label30;
        private System.Windows.Forms.Label tp1ItemID;
        private System.Windows.Forms.Label tp1rewardType;
        private System.Windows.Forms.Label tp1reward;
        private System.Windows.Forms.Label tp1Amount;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label lDBConnect;
        private System.Windows.Forms.Label lFullCount;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.Label lEnable;
    }
}

