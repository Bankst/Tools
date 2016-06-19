namespace FiestaOpcodeConverter
{
    partial class MainForm
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
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.btnConvertOld = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.nmrHeader = new System.Windows.Forms.NumericUpDown();
            this.nmrType = new System.Windows.Forms.NumericUpDown();
            this.btnConvertNumeric = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.nmrHeader)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nmrType)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Old opcode:";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(83, 6);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(93, 20);
            this.textBox1.TabIndex = 1;
            // 
            // btnConvertOld
            // 
            this.btnConvertOld.Location = new System.Drawing.Point(220, 6);
            this.btnConvertOld.Name = "btnConvertOld";
            this.btnConvertOld.Size = new System.Drawing.Size(80, 20);
            this.btnConvertOld.TabIndex = 2;
            this.btnConvertOld.Text = "Convert";
            this.btnConvertOld.UseVisualStyleBackColor = true;
            this.btnConvertOld.Click += new System.EventHandler(this.btnConvertOld_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 40);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(45, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Header:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(119, 40);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(34, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Type:";
            // 
            // nmrHeader
            // 
            this.nmrHeader.Location = new System.Drawing.Point(61, 37);
            this.nmrHeader.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.nmrHeader.Name = "nmrHeader";
            this.nmrHeader.Size = new System.Drawing.Size(46, 20);
            this.nmrHeader.TabIndex = 5;
            this.nmrHeader.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // nmrType
            // 
            this.nmrType.Location = new System.Drawing.Point(159, 37);
            this.nmrType.Name = "nmrType";
            this.nmrType.Size = new System.Drawing.Size(46, 20);
            this.nmrType.TabIndex = 6;
            // 
            // btnConvertNumeric
            // 
            this.btnConvertNumeric.Location = new System.Drawing.Point(220, 36);
            this.btnConvertNumeric.Name = "btnConvertNumeric";
            this.btnConvertNumeric.Size = new System.Drawing.Size(80, 21);
            this.btnConvertNumeric.TabIndex = 7;
            this.btnConvertNumeric.Text = "Convert";
            this.btnConvertNumeric.UseVisualStyleBackColor = true;
            this.btnConvertNumeric.Click += new System.EventHandler(this.btnConvertNumeric_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(318, 74);
            this.Controls.Add(this.btnConvertNumeric);
            this.Controls.Add(this.nmrType);
            this.Controls.Add(this.nmrHeader);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.btnConvertOld);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "MainForm";
            this.Text = "Fiesta Opcode Converter";
            ((System.ComponentModel.ISupportInitialize)(this.nmrHeader)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nmrType)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button btnConvertOld;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.NumericUpDown nmrHeader;
        private System.Windows.Forms.NumericUpDown nmrType;
        private System.Windows.Forms.Button btnConvertNumeric;
    }
}

