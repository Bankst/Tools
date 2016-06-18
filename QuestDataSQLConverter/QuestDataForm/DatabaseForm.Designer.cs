namespace QuestDataForm
{
    partial class DatabaseForm
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.tDB = new System.Windows.Forms.TextBox();
            this.tSQLServer = new System.Windows.Forms.TextBox();
            this.tSQLUser = new System.Windows.Forms.TextBox();
            this.tSQLPassword = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 29);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Database :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 65);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(65, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "SQLServer :";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 125);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(80, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "SQLPassword :";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 93);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(56, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "SQLUser :";
            // 
            // tDB
            // 
            this.tDB.Location = new System.Drawing.Point(122, 26);
            this.tDB.Name = "tDB";
            this.tDB.Size = new System.Drawing.Size(100, 20);
            this.tDB.TabIndex = 4;
            // 
            // tSQLServer
            // 
            this.tSQLServer.Location = new System.Drawing.Point(122, 58);
            this.tSQLServer.Name = "tSQLServer";
            this.tSQLServer.Size = new System.Drawing.Size(100, 20);
            this.tSQLServer.TabIndex = 5;
            // 
            // tSQLUser
            // 
            this.tSQLUser.Location = new System.Drawing.Point(122, 90);
            this.tSQLUser.Name = "tSQLUser";
            this.tSQLUser.Size = new System.Drawing.Size(100, 20);
            this.tSQLUser.TabIndex = 6;
            // 
            // tSQLPassword
            // 
            this.tSQLPassword.Location = new System.Drawing.Point(122, 125);
            this.tSQLPassword.Name = "tSQLPassword";
            this.tSQLPassword.Size = new System.Drawing.Size(100, 20);
            this.tSQLPassword.TabIndex = 7;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(122, 153);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 8;
            this.button1.Text = "Connect";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(207, 157);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(65, 17);
            this.checkBox1.TabIndex = 9;
            this.checkBox1.Text = "Saveing";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // DatabaseForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 188);
            this.Controls.Add(this.checkBox1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.tSQLPassword);
            this.Controls.Add(this.tSQLUser);
            this.Controls.Add(this.tSQLServer);
            this.Controls.Add(this.tDB);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "DatabaseForm";
            this.Text = "DatabaseForm";
            this.Load += new System.EventHandler(this.DatabaseForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox tDB;
        private System.Windows.Forms.TextBox tSQLServer;
        private System.Windows.Forms.TextBox tSQLUser;
        private System.Windows.Forms.TextBox tSQLPassword;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.CheckBox checkBox1;
    }
}