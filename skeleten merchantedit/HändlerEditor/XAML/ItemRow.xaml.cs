using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace HändlerEditor.XAML
{
    /// <summary>
    /// Interaction logic for ItemRow.xaml
    /// </summary>
    public partial class ItemRow : UserControl
    {
        public ItemRow()
        {
            InitializeComponent();

            for (int i = 0; i < 6; i++)
                this[i] = null;
        }

        public Code.Item this[int index]
        {
            get
            {
                switch (index)
                {
                    case 0:
                        return item0.Item;
                    case 1:
                        return item1.Item;
                    case 2:
                        return item2.Item;
                    case 3:
                        return item3.Item;
                    case 4:
                        return item4.Item;
                    case 5:
                        return item5.Item;
                    default:
                        throw new ArgumentException("index");
                }
            }
            set
            {
                switch (index)
                {
                    case 0:
                        item0.Item = value;
                        break;
                    case 1:
                        item1.Item = value;
                        break;
                    case 2:
                        item2.Item = value;
                        break;
                    case 3:
                        item3.Item = value;
                        break;
                    case 4:
                        item4.Item = value;
                        break;
                    case 5:
                        item5.Item = value;
                        break;
                    default:
                        throw new ArgumentException("index");
                }
            }
        }
    }
}
