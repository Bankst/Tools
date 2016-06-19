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
using System.Data;
using HändlerEditor.Code;
using HändlerEditor.XAML;
using Microsoft.Win32;

namespace HändlerEditor
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            Settings.Load();
            DataProvider.Initialize();
            IconBuffer.Initialize(Settings.IconPath);

            InitializeComponent();
        }

        private void btAdd_Click(object sender, RoutedEventArgs e)
        {
            TabItem ti = new TabItem();
            ti.Header = string.Format("tab{0:00}", tcTabs.Items.Count);
            ti.Content = (new ItemPage());
            tcTabs.Items.Add(ti);
        }

        private void btRemove_Click(object sender, RoutedEventArgs e)
        {
            if(tcTabs.Items.Count > 0)
                tcTabs.Items.RemoveAt(tcTabs.Items.Count - 1);
        }

        private void MenuOpen_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog diag = new OpenFileDialog()
            {
                Filter = "Merchant TXT-Files (*.txt)|*.txt",
                Multiselect = false
            };

            if(diag.ShowDialog() != true)
                return;

            tcTabs.Items.Clear();

            ShineTable tab = new ShineTable();
            tab.Open(diag.FileName);
            foreach (ShineTable.Table t in tab.Tables)
            {
                TabItem i = new TabItem()
                {
                    Header = t.Name,
                };
                ItemPage p = new ItemPage();
                i.Content = p;

                foreach (DataRow row in t.Content.Rows)
                {
                    ItemRow r = new ItemRow();

                    for (int it = 0; it < 6; it++)
                        try
                        {
                            r[it] = DataProvider.Items.Single(item => item.InxName == (string)row[it + 1]);
                        }
                        catch (Exception)
                        {
                            // Throw message?
                            continue;
                        }

                    p.spItems.Children.Add(r);
                }

                tcTabs.Items.Add(i);
            }

            // TODO: Open and Load File
        }

        private void MenuSave_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog diag = new SaveFileDialog()
            {
                Filter = "Merchant TXTs (*.txt) | *.txt"
            };

            if(diag.ShowDialog() != true)
                return;

            ShineTable st = new ShineTable();
            StaticValues.AddFileHeader(st);

            for (int i = 0; i < tcTabs.Items.Count; i++)
            {
                ShineTable.Table tab = new ShineTable.Table();
                
                tab.CollumnNameLine = StaticValues.ColumnLine;
                tab.NameLine = StaticValues.GetNameLine(i);
                tab.TypeLine = StaticValues.TypeLine;
                tab.Content = StaticValues.DataTableTemplate;

                TabItem t = (TabItem)tcTabs.Items[i];
                ItemPage p = (ItemPage)t.Content;
                for (int it = 0; it < p.spItems.Children.Count; it++)
                {
                    ItemRow r = (ItemRow)p.spItems.Children[it];
                    DataRow row = tab.Content.NewRow();

                    row["Rec"] = it.ToString();

                    for (int a = 0; a < 6; a++)
                    {
                        if (r[a] == null)
                            row[a + 1] = "-";
                        else
                            row[a + 1] = r[a].InxName;
                    }

                    tab.Content.Rows.Add(row);
                }
                st.AddTable(tab);
            }
            st.Save(diag.FileName);
        }

        private void MenuClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
