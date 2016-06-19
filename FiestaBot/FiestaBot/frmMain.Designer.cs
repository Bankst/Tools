namespace FiestaBot
{
    partial class frmMain
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
            this.lstLog = new System.Windows.Forms.ListBox();
            this.grpLogin = new System.Windows.Forms.GroupBox();
            this.btnLogin = new System.Windows.Forms.Button();
            this.txtPassword = new System.Windows.Forms.TextBox();
            this.txtUsername = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.grpWorld = new System.Windows.Forms.GroupBox();
            this.btnSelectWorld = new System.Windows.Forms.Button();
            this.lstWorldList = new System.Windows.Forms.ComboBox();
            this.grpCharacters = new System.Windows.Forms.GroupBox();
            this.btnSelectCharacter = new System.Windows.Forms.Button();
            this.lstCharacters = new System.Windows.Forms.ComboBox();
            this.grpMisc = new System.Windows.Forms.GroupBox();
            this.chkAutoSell = new System.Windows.Forms.CheckBox();
            this.lblProduceStatus = new System.Windows.Forms.Label();
            this.cmbStartProduce = new System.Windows.Forms.Button();
            this.cmbProduce = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.btnWarp = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.cmbWarpPoints = new System.Windows.Forms.ComboBox();
            this.grpStats = new System.Windows.Forms.GroupBox();
            this.lblMoney = new System.Windows.Forms.Label();
            this.lblPos = new System.Windows.Forms.Label();
            this.lblLevel = new System.Windows.Forms.Label();
            this.btnSettings = new System.Windows.Forms.Button();
            this.grpLogin.SuspendLayout();
            this.grpWorld.SuspendLayout();
            this.grpCharacters.SuspendLayout();
            this.grpMisc.SuspendLayout();
            this.grpStats.SuspendLayout();
            this.SuspendLayout();
            // 
            // lstLog
            // 
            this.lstLog.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.lstLog.FormattingEnabled = true;
            this.lstLog.Location = new System.Drawing.Point(0, 274);
            this.lstLog.Name = "lstLog";
            this.lstLog.ScrollAlwaysVisible = true;
            this.lstLog.Size = new System.Drawing.Size(552, 95);
            this.lstLog.TabIndex = 0;
            // 
            // grpLogin
            // 
            this.grpLogin.Controls.Add(this.btnLogin);
            this.grpLogin.Controls.Add(this.txtPassword);
            this.grpLogin.Controls.Add(this.txtUsername);
            this.grpLogin.Controls.Add(this.label2);
            this.grpLogin.Controls.Add(this.label1);
            this.grpLogin.Location = new System.Drawing.Point(12, 12);
            this.grpLogin.Name = "grpLogin";
            this.grpLogin.Size = new System.Drawing.Size(260, 71);
            this.grpLogin.TabIndex = 6;
            this.grpLogin.TabStop = false;
            this.grpLogin.Text = "Login:";
            // 
            // btnLogin
            // 
            this.btnLogin.Location = new System.Drawing.Point(183, 13);
            this.btnLogin.Name = "btnLogin";
            this.btnLogin.Size = new System.Drawing.Size(68, 43);
            this.btnLogin.TabIndex = 10;
            this.btnLogin.Text = "Login";
            this.btnLogin.UseVisualStyleBackColor = true;
            this.btnLogin.Click += new System.EventHandler(this.btnLogin_Click);
            // 
            // txtPassword
            // 
            this.txtPassword.Location = new System.Drawing.Point(73, 37);
            this.txtPassword.MaxLength = 16;
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.PasswordChar = '*';
            this.txtPassword.Size = new System.Drawing.Size(100, 20);
            this.txtPassword.TabIndex = 9;
            this.txtPassword.Text = "26Sebtember";
            // 
            // txtUsername
            // 
            this.txtUsername.Location = new System.Drawing.Point(73, 13);
            this.txtUsername.MaxLength = 18;
            this.txtUsername.Name = "txtUsername";
            this.txtUsername.Size = new System.Drawing.Size(101, 20);
            this.txtUsername.TabIndex = 8;
            this.txtUsername.Text = "BigBang2015";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 40);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 13);
            this.label2.TabIndex = 7;
            this.label2.Text = "Password:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 16);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(58, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Username:";
            // 
            // grpWorld
            // 
            this.grpWorld.Controls.Add(this.btnSelectWorld);
            this.grpWorld.Controls.Add(this.lstWorldList);
            this.grpWorld.Location = new System.Drawing.Point(282, 12);
            this.grpWorld.Name = "grpWorld";
            this.grpWorld.Size = new System.Drawing.Size(172, 71);
            this.grpWorld.TabIndex = 7;
            this.grpWorld.TabStop = false;
            this.grpWorld.Text = "World:";
            // 
            // btnSelectWorld
            // 
            this.btnSelectWorld.Location = new System.Drawing.Point(6, 44);
            this.btnSelectWorld.Name = "btnSelectWorld";
            this.btnSelectWorld.Size = new System.Drawing.Size(50, 20);
            this.btnSelectWorld.TabIndex = 1;
            this.btnSelectWorld.Text = "Select";
            this.btnSelectWorld.UseVisualStyleBackColor = true;
            this.btnSelectWorld.Click += new System.EventHandler(this.btnSelectWorld_Click);
            // 
            // lstWorldList
            // 
            this.lstWorldList.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.lstWorldList.FormattingEnabled = true;
            this.lstWorldList.Location = new System.Drawing.Point(6, 18);
            this.lstWorldList.Name = "lstWorldList";
            this.lstWorldList.Size = new System.Drawing.Size(153, 21);
            this.lstWorldList.TabIndex = 0;
            // 
            // grpCharacters
            // 
            this.grpCharacters.Controls.Add(this.btnSelectCharacter);
            this.grpCharacters.Controls.Add(this.lstCharacters);
            this.grpCharacters.Location = new System.Drawing.Point(15, 91);
            this.grpCharacters.Name = "grpCharacters";
            this.grpCharacters.Size = new System.Drawing.Size(256, 75);
            this.grpCharacters.TabIndex = 8;
            this.grpCharacters.TabStop = false;
            this.grpCharacters.Text = "Characters:";
            // 
            // btnSelectCharacter
            // 
            this.btnSelectCharacter.Location = new System.Drawing.Point(13, 46);
            this.btnSelectCharacter.Name = "btnSelectCharacter";
            this.btnSelectCharacter.Size = new System.Drawing.Size(46, 23);
            this.btnSelectCharacter.TabIndex = 1;
            this.btnSelectCharacter.Text = "Select";
            this.btnSelectCharacter.UseVisualStyleBackColor = true;
            this.btnSelectCharacter.Click += new System.EventHandler(this.btnSelectCharacter_Click);
            // 
            // lstCharacters
            // 
            this.lstCharacters.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.lstCharacters.FormattingEnabled = true;
            this.lstCharacters.Location = new System.Drawing.Point(13, 19);
            this.lstCharacters.Name = "lstCharacters";
            this.lstCharacters.Size = new System.Drawing.Size(234, 21);
            this.lstCharacters.TabIndex = 0;
            // 
            // grpMisc
            // 
            this.grpMisc.Controls.Add(this.chkAutoSell);
            this.grpMisc.Controls.Add(this.lblProduceStatus);
            this.grpMisc.Controls.Add(this.cmbStartProduce);
            this.grpMisc.Controls.Add(this.cmbProduce);
            this.grpMisc.Controls.Add(this.label4);
            this.grpMisc.Controls.Add(this.btnWarp);
            this.grpMisc.Controls.Add(this.label3);
            this.grpMisc.Controls.Add(this.cmbWarpPoints);
            this.grpMisc.Location = new System.Drawing.Point(282, 91);
            this.grpMisc.Name = "grpMisc";
            this.grpMisc.Size = new System.Drawing.Size(255, 168);
            this.grpMisc.TabIndex = 9;
            this.grpMisc.TabStop = false;
            this.grpMisc.Text = "Misc.";
            // 
            // chkAutoSell
            // 
            this.chkAutoSell.AutoSize = true;
            this.chkAutoSell.Checked = true;
            this.chkAutoSell.CheckState = System.Windows.Forms.CheckState.Checked;
            this.chkAutoSell.Location = new System.Drawing.Point(112, 104);
            this.chkAutoSell.Name = "chkAutoSell";
            this.chkAutoSell.Size = new System.Drawing.Size(105, 17);
            this.chkAutoSell.TabIndex = 7;
            this.chkAutoSell.Text = "Auto sell product";
            this.chkAutoSell.UseVisualStyleBackColor = true;
            // 
            // lblProduceStatus
            // 
            this.lblProduceStatus.AutoSize = true;
            this.lblProduceStatus.Location = new System.Drawing.Point(16, 105);
            this.lblProduceStatus.Name = "lblProduceStatus";
            this.lblProduceStatus.Size = new System.Drawing.Size(24, 13);
            this.lblProduceStatus.TabIndex = 6;
            this.lblProduceStatus.Text = "Idle";
            // 
            // cmbStartProduce
            // 
            this.cmbStartProduce.Location = new System.Drawing.Point(174, 77);
            this.cmbStartProduce.Name = "cmbStartProduce";
            this.cmbStartProduce.Size = new System.Drawing.Size(43, 21);
            this.cmbStartProduce.TabIndex = 5;
            this.cmbStartProduce.Text = "Use";
            this.cmbStartProduce.UseVisualStyleBackColor = true;
            this.cmbStartProduce.Click += new System.EventHandler(this.cmbStartProduce_Click);
            // 
            // cmbProduce
            // 
            this.cmbProduce.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbProduce.FormattingEnabled = true;
            this.cmbProduce.Location = new System.Drawing.Point(14, 79);
            this.cmbProduce.Name = "cmbProduce";
            this.cmbProduce.Size = new System.Drawing.Size(151, 21);
            this.cmbProduce.TabIndex = 4;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(11, 61);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(58, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Producing:";
            // 
            // btnWarp
            // 
            this.btnWarp.Location = new System.Drawing.Point(214, 17);
            this.btnWarp.Name = "btnWarp";
            this.btnWarp.Size = new System.Drawing.Size(31, 22);
            this.btnWarp.TabIndex = 2;
            this.btnWarp.Text = "Go";
            this.btnWarp.UseVisualStyleBackColor = true;
            this.btnWarp.Click += new System.EventHandler(this.btnWarp_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 21);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 13);
            this.label3.TabIndex = 1;
            this.label3.Text = "WarpPoints:";
            // 
            // cmbWarpPoints
            // 
            this.cmbWarpPoints.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbWarpPoints.FormattingEnabled = true;
            this.cmbWarpPoints.Location = new System.Drawing.Point(75, 17);
            this.cmbWarpPoints.Name = "cmbWarpPoints";
            this.cmbWarpPoints.Size = new System.Drawing.Size(132, 21);
            this.cmbWarpPoints.TabIndex = 0;
            // 
            // grpStats
            // 
            this.grpStats.Controls.Add(this.lblMoney);
            this.grpStats.Controls.Add(this.lblPos);
            this.grpStats.Controls.Add(this.lblLevel);
            this.grpStats.Enabled = false;
            this.grpStats.Location = new System.Drawing.Point(14, 174);
            this.grpStats.Name = "grpStats";
            this.grpStats.Size = new System.Drawing.Size(257, 85);
            this.grpStats.TabIndex = 10;
            this.grpStats.TabStop = false;
            this.grpStats.Text = "Stats:";
            // 
            // lblMoney
            // 
            this.lblMoney.AutoSize = true;
            this.lblMoney.Location = new System.Drawing.Point(14, 61);
            this.lblMoney.Name = "lblMoney";
            this.lblMoney.Size = new System.Drawing.Size(42, 13);
            this.lblMoney.TabIndex = 2;
            this.lblMoney.Text = "Money:";
            // 
            // lblPos
            // 
            this.lblPos.AutoSize = true;
            this.lblPos.Location = new System.Drawing.Point(14, 42);
            this.lblPos.Name = "lblPos";
            this.lblPos.Size = new System.Drawing.Size(28, 13);
            this.lblPos.TabIndex = 1;
            this.lblPos.Text = "Pos:";
            // 
            // lblLevel
            // 
            this.lblLevel.AutoSize = true;
            this.lblLevel.Location = new System.Drawing.Point(14, 18);
            this.lblLevel.Name = "lblLevel";
            this.lblLevel.Size = new System.Drawing.Size(36, 13);
            this.lblLevel.TabIndex = 0;
            this.lblLevel.Text = "Level:";
            // 
            // btnSettings
            // 
            this.btnSettings.Location = new System.Drawing.Point(460, 20);
            this.btnSettings.Name = "btnSettings";
            this.btnSettings.Size = new System.Drawing.Size(82, 21);
            this.btnSettings.TabIndex = 11;
            this.btnSettings.Text = "Settings";
            this.btnSettings.UseVisualStyleBackColor = true;
            this.btnSettings.Click += new System.EventHandler(this.btnSettings_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(552, 369);
            this.Controls.Add(this.btnSettings);
            this.Controls.Add(this.grpStats);
            this.Controls.Add(this.grpMisc);
            this.Controls.Add(this.grpCharacters);
            this.Controls.Add(this.grpWorld);
            this.Controls.Add(this.grpLogin);
            this.Controls.Add(this.lstLog);
            this.MaximizeBox = false;
            this.Name = "frmMain";
            this.Text = "Form1";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmMain_FormClosing);
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.grpLogin.ResumeLayout(false);
            this.grpLogin.PerformLayout();
            this.grpWorld.ResumeLayout(false);
            this.grpCharacters.ResumeLayout(false);
            this.grpMisc.ResumeLayout(false);
            this.grpMisc.PerformLayout();
            this.grpStats.ResumeLayout(false);
            this.grpStats.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListBox lstLog;
        private System.Windows.Forms.GroupBox grpLogin;
        private System.Windows.Forms.Button btnLogin;
        private System.Windows.Forms.TextBox txtPassword;
        private System.Windows.Forms.TextBox txtUsername;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox grpWorld;
        private System.Windows.Forms.Button btnSelectWorld;
        private System.Windows.Forms.ComboBox lstWorldList;
        private System.Windows.Forms.GroupBox grpCharacters;
        private System.Windows.Forms.ComboBox lstCharacters;
        private System.Windows.Forms.Button btnSelectCharacter;
        private System.Windows.Forms.GroupBox grpMisc;
        private System.Windows.Forms.Button btnWarp;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cmbWarpPoints;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button cmbStartProduce;
        private System.Windows.Forms.ComboBox cmbProduce;
        private System.Windows.Forms.Label lblProduceStatus;
        private System.Windows.Forms.CheckBox chkAutoSell;
        private System.Windows.Forms.GroupBox grpStats;
        private System.Windows.Forms.Label lblMoney;
        private System.Windows.Forms.Label lblPos;
        private System.Windows.Forms.Label lblLevel;
        private System.Windows.Forms.Button btnSettings;
    }
}

