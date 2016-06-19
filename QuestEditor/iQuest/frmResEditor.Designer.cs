namespace iQuest
{
    partial class frmResEditor
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
            this.txtResID = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnshow = new System.Windows.Forms.Button();
            this.txtText = new System.Windows.Forms.TextBox();
            this.btnSaveResource = new System.Windows.Forms.Button();
            this.txtSaveAs = new System.Windows.Forms.TextBox();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.statusLabel = new System.Windows.Forms.ToolStripStatusLabel();
            this.lblFreeID = new System.Windows.Forms.Label();
            this.statusStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtResID
            // 
            this.txtResID.Location = new System.Drawing.Point(39, 9);
            this.txtResID.Name = "txtResID";
            this.txtResID.Size = new System.Drawing.Size(90, 20);
            this.txtResID.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 12);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(21, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "ID:";
            // 
            // btnshow
            // 
            this.btnshow.Location = new System.Drawing.Point(143, 9);
            this.btnshow.Name = "btnshow";
            this.btnshow.Size = new System.Drawing.Size(77, 20);
            this.btnshow.TabIndex = 2;
            this.btnshow.Text = "Show";
            this.btnshow.UseVisualStyleBackColor = true;
            this.btnshow.Click += new System.EventHandler(this.btnshow_Click);
            // 
            // txtText
            // 
            this.txtText.BackColor = System.Drawing.Color.Black;
            this.txtText.ForeColor = System.Drawing.Color.White;
            this.txtText.Location = new System.Drawing.Point(14, 40);
            this.txtText.Multiline = true;
            this.txtText.Name = "txtText";
            this.txtText.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.txtText.Size = new System.Drawing.Size(325, 220);
            this.txtText.TabIndex = 3;
            // 
            // btnSaveResource
            // 
            this.btnSaveResource.Location = new System.Drawing.Point(15, 266);
            this.btnSaveResource.Name = "btnSaveResource";
            this.btnSaveResource.Size = new System.Drawing.Size(86, 24);
            this.btnSaveResource.TabIndex = 4;
            this.btnSaveResource.Text = "Save As ID:";
            this.btnSaveResource.UseVisualStyleBackColor = true;
            this.btnSaveResource.Click += new System.EventHandler(this.btnSaveResource_Click);
            // 
            // txtSaveAs
            // 
            this.txtSaveAs.Location = new System.Drawing.Point(107, 270);
            this.txtSaveAs.Name = "txtSaveAs";
            this.txtSaveAs.Size = new System.Drawing.Size(112, 20);
            this.txtSaveAs.TabIndex = 5;
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.statusLabel});
            this.statusStrip1.Location = new System.Drawing.Point(0, 304);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(348, 22);
            this.statusStrip1.TabIndex = 6;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // statusLabel
            // 
            this.statusLabel.Name = "statusLabel";
            this.statusLabel.Size = new System.Drawing.Size(42, 17);
            this.statusLabel.Text = "Ready.";
            // 
            // lblFreeID
            // 
            this.lblFreeID.AutoSize = true;
            this.lblFreeID.Location = new System.Drawing.Point(225, 273);
            this.lblFreeID.Name = "lblFreeID";
            this.lblFreeID.Size = new System.Drawing.Size(45, 13);
            this.lblFreeID.TabIndex = 7;
            this.lblFreeID.Text = "Free ID:";
            this.lblFreeID.Click += new System.EventHandler(this.lblFreeID_Click);
            // 
            // frmResEditor
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(348, 326);
            this.Controls.Add(this.lblFreeID);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.txtSaveAs);
            this.Controls.Add(this.btnSaveResource);
            this.Controls.Add(this.txtText);
            this.Controls.Add(this.btnshow);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtResID);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.Name = "frmResEditor";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Resources";
            this.Load += new System.EventHandler(this.frmResEditor_Load);
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmResEditor_FormClosing);
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtResID;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnshow;
        private System.Windows.Forms.TextBox txtText;
        private System.Windows.Forms.Button btnSaveResource;
        private System.Windows.Forms.TextBox txtSaveAs;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripStatusLabel statusLabel;
        private System.Windows.Forms.Label lblFreeID;
    }
}