using System;
using System.Windows.Forms;

namespace Quest_Editor_Form
{
    public class QuestTextBox : TextBox
    {
        public QuestTextBox()
        {
            base.TextChanged += Base_TextChanged;

            Type = DataType.String;
            isIgnoreEvent = false;
            isUserWriting = true;
        }

        private void Base_TextChanged(object sender, EventArgs e)
        {
            SetCorrectValue(base.Text);

            if (isUserWriting && TextWritten != null && !isIgnoreEvent)
                TextWritten(this, Text);

            if (TextChanged != null && !isIgnoreEvent)
                TextChanged(this, Text);

            isIgnoreEvent = false;
        }

        public void SetText(string text)
        {
            isUserWriting = false;
            SetCorrectValue(text);
            isUserWriting = true;
        }

        public void SetText(decimal data)
        {
            SetText(data.ToString());
        }

        private void SetCorrectValue(string text)
        {
            decimal value;
            bool result;

            result = decimal.TryParse(text, out value);

            if (type == DataType.String)
            {
                this.value = 0;
                base.Text = text;
            }
            else if (!result)
            {
                isIgnoreEvent = true;
                this.value = minimum;
                base.Text = minimum.ToString();
            }
            else if (value < minimum)
            {
                isIgnoreEvent = true;
                this.value = minimum;
                base.Text = minimum.ToString();
            }
            else if (value > maximum)
            {
                isIgnoreEvent = true;
                this.value = maximum;
                base.Text = maximum.ToString();
            }
            else
            {
                this.value = value;
                base.Text = value.ToString();
            }
        }

        public new string Text
        {
            get
            {
                return base.Text;
            }
        }

        public DataType Type
        {
            get
            {
                return type;
            }

            set
            {
                type = value;

                switch (type)
                {
                    case DataType.String:
                        minimum = -1;
                        maximum = -1;
                        break;

                    case DataType.Byte:
                        minimum = 0;
                        maximum = 255;
                        break;

                    case DataType.UInt16:
                        minimum = 0;
                        maximum = 65535;
                        break;

                    case DataType.UInt32:
                        minimum = 0;
                        maximum = 4294967295;
                        break;

                    case DataType.UInt64:
                        minimum = 0;
                        maximum = 18446744073709551615;
                        break;
                }
            }
        }

        private DataType type;
        private decimal value;
        private decimal minimum;
        private decimal maximum;

        private bool isUserWriting;
        private bool isIgnoreEvent;

        public new event TextBoxTextChanged TextChanged;
        public delegate void TextBoxTextChanged(object sender, string text);

        public event TextBoxTextWritten TextWritten;
        public delegate void TextBoxTextWritten(object sender, string text);
    }

    public enum DataType
    {
        String = 0,
        Byte = 1,
        UInt16 = 2,
        UInt32 = 3,
        UInt64 = 4,
    }
}
