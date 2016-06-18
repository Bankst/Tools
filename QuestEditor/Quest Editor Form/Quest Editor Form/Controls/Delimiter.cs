using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Quest_Editor_Form
{
    public class Delimiter : PictureBox
    {
        public Delimiter()
        {
            this.Paint += Delimiter_Paint;
            this.SizeChanged += Delimiter_SizeChanged;
            this.MarginChanged += Delimiter_MarginChanged;

            this.align = AlignType.Horizontal;
            this.Margin = new Padding(0, 0, 0, 0);
        }

        private void Delimiter_MarginChanged(object sender, EventArgs e)
        {
            this.Invalidate();
        }

        private void Delimiter_SizeChanged(object sender, EventArgs e)
        {
            this.Invalidate();
        }

        private void Delimiter_Paint(object sender, PaintEventArgs e)
        {
            int startX, startY;
            int endX, endY;
            Pen pen;

            if (align == AlignType.Horizontal)
            {
                startX = Margin.Left;
                startY = this.Height / 2;

                endX = this.Width - Margin.Right;
                endY = startY;
            }
            else
            {
                startX = this.Width / 2;
                startY = Margin.Top;

                endX = startX;
                endY = this.Height - Margin.Bottom;
            }

            pen = new Pen(Color.Gray, 1);

            e.Graphics.DrawLine(pen, startX, startY, endX, endY);
        }

        [Description("Set the alignment of the delimiter"), Category("Data")]
        public AlignType Alignment
        {
            get { return align; }
            set { align = value; }
        }

        private AlignType align;
    }

    public enum AlignType
    {
        Horizontal = 1,
        Vertical = 2,
    }
}
