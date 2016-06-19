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
    /// Interaction logic for ItemPage.xaml
    /// </summary>
    public partial class ItemPage : UserControl
    {
        public ItemPage()
        {
            InitializeComponent();
        }

        private void btAdd_Click(object sender, RoutedEventArgs e)
        {
            ItemRow r = new ItemRow();
            spItems.Children.Add(r);
        }

        private void btRem_Click(object sender, RoutedEventArgs e)
        {
            if(spItems.Children.Count > 0)
                spItems.Children.RemoveAt(spItems.Children.Count - 1);
        }
    }
}
