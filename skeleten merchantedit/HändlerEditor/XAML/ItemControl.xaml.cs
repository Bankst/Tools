using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;

namespace HändlerEditor.XAML
{
    /// <summary>
    /// Interaction logic for ItemControl.xaml
    /// </summary>
    public partial class ItemControl : UserControl
    {
        public ItemControl()
        {
            InitializeComponent();
        }

        public static DependencyProperty ItemProperty = DependencyProperty.Register("Item", typeof(Code.Item), typeof(ItemControl));
        public static DependencyProperty IconProperty = DependencyProperty.Register("Icon", typeof(BitmapImage), typeof(ItemControl));

        public Code.Item Item
        {
            get
            {
                return (Code.Item)GetValue(ItemProperty);
            }
            set
            {
                SetValue(ItemProperty, value);
                SetValue(IconProperty, value == null ? Code.IconBuffer.Icons["haircolor"][63] : value.Icon);
            }
        }
        public BitmapImage Icon
        {
            get
            {
                return (BitmapImage)GetValue(IconProperty);
            }
        }

        private void MenuClearClick(object sender, RoutedEventArgs e)
        {
            this.Item = null;
        }
        private void MenuChooseClick(object sender, RoutedEventArgs e)
        {
            var diag = new ItemSelector();
            diag.ShowDialog();
            if (diag.ItemChoosen)
                this.Item = diag.Item;
        }
    }
}
