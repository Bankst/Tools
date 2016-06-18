namespace QuestDataAnalyser
{
    partial class NewScriptForm
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
            this.components = new System.ComponentModel.Container();
            this.ScriptNameBox = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.mScriptEditor = new Alsing.Windows.Forms.SyntaxBoxControl();
            this.SuspendLayout();
            // 
            // ScriptNameBox
            // 
            this.ScriptNameBox.Location = new System.Drawing.Point(92, 27);
            this.ScriptNameBox.Name = "ScriptNameBox";
            this.ScriptNameBox.Size = new System.Drawing.Size(255, 20);
            this.ScriptNameBox.TabIndex = 0;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(70, 317);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(255, 23);
            this.button1.TabIndex = 2;
            this.button1.Text = "Create";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 27);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(62, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "ScriptName";
            // 
            // mScriptEditor
            // 
            this.mScriptEditor.AccessibleRole = System.Windows.Forms.AccessibleRole.None;
            this.mScriptEditor.ActiveView = Alsing.Windows.Forms.ActiveView.BottomRight;
            this.mScriptEditor.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.mScriptEditor.AutoListPosition = null;
            this.mScriptEditor.AutoListSelectedText = "a123";
            this.mScriptEditor.AutoListVisible = false;
            this.mScriptEditor.BackColor = System.Drawing.Color.White;
            this.mScriptEditor.BorderStyle = Alsing.Windows.Forms.BorderStyle.None;
            this.mScriptEditor.CopyAsRTF = false;
            this.mScriptEditor.FontName = "Courier new";
            this.mScriptEditor.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.mScriptEditor.InfoTipCount = 1;
            this.mScriptEditor.InfoTipPosition = null;
            this.mScriptEditor.InfoTipSelectedIndex = 1;
            this.mScriptEditor.InfoTipVisible = false;
            this.mScriptEditor.Location = new System.Drawing.Point(1, 50);
            this.mScriptEditor.LockCursorUpdate = false;
            this.mScriptEditor.Name = "mScriptEditor";
            this.mScriptEditor.ShowScopeIndicator = false;
            this.mScriptEditor.Size = new System.Drawing.Size(356, 241);
            this.mScriptEditor.SmoothScroll = false;
            this.mScriptEditor.SplitviewH = -4;
            this.mScriptEditor.SplitviewV = -4;
            this.mScriptEditor.TabGuideColor = System.Drawing.Color.FromArgb(((int)(((byte)(233)))), ((int)(((byte)(233)))), ((int)(((byte)(233)))));
            this.mScriptEditor.TabIndex = 1;
            this.mScriptEditor.Text = "mScriptSyntax";
            this.mScriptEditor.WhitespaceColor = System.Drawing.SystemColors.ControlDark;
            // 
            // NewScriptForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(371, 361);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.mScriptEditor);
            this.Controls.Add(this.ScriptNameBox);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "NewScriptForm";
            this.ShowIcon = false;
            this.Text = "Adding New Script";
            this.Load += new System.EventHandler(this.NewScriptForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox ScriptNameBox;
        private Alsing.Windows.Forms.SyntaxBoxControl mScriptEditor;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label1;
    }
}