using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using HändlerEditor.Code;
using System.Threading;

namespace HändlerEditor.XAML
{
    /// <summary>
    /// Interaction logic for ItemSelector.xaml
    /// </summary>
    public partial class ItemSelector : Window
    {
        public List<Item> SearchResult
        {
            get { return _results; }
            private set { _results = value; }
        }
        private List<Item> _results;
        private bool _updating;
        private bool _needUpdate;
        private bool _running;
        private string _prevString;

        public Item Item
        {
            get;
            set;
        }
        public bool ItemChoosen { get; private set; }
        public ItemSelector()
        {
            Item = null;
            SearchResult = new List<Item>(DataProvider.Items);
            InitializeComponent();
            _updating = false;
            _needUpdate = false;
            _running = true;
            _prevString = "";
            var t = new Thread(UpdateQuery);
            t.Start();
        }
        private void SearchTextChanged(object sender, TextChangedEventArgs e)
        {
            _needUpdate = true;
            e.Handled = true;
        }

        private void UpdateQuery()
        {
            while(_running)
            {

                if(!_updating)
                    if(_needUpdate)
                    {
                        Thread t = new Thread(UpdateItems);
                        _updating = true;
                        t.Start();
                        _needUpdate = false;
                    }

                Thread.Sleep(500);
            }
        }

        private bool SaveCheckContains(string text)
        {
            if(tb.Dispatcher.CheckAccess())
                return tb.Text.Contains(text);
            return (bool) tb.Dispatcher.Invoke(new ChkDlgt(SaveCheckContains), text);
        }

        private string SaveGetString()
        {
            if (tb.Dispatcher.CheckAccess())
                return tb.Text;
            return (string) tb.Dispatcher.Invoke(new GetDlgt(SaveGetString));
        }

        private void SaveRefresh()
        {
            if (Items.Dispatcher.CheckAccess())
                Items.Items.Refresh();
            else
                Items.Dispatcher.Invoke(new ActnDlgt(SaveRefresh));
        }

        private delegate void ActnDlgt();
        private delegate string GetDlgt();
        private delegate bool ChkDlgt(string text);

        private void UpdateItems()
        {
            _updating = true;

            string text = SaveGetString();

            if(SaveCheckContains(_prevString))
            {
                List<Item> toRem = (from i in _results
                              where !(i.Name.Contains(text) || i.InxName.Contains(text))
                              select i).ToList();

                foreach (Item item in toRem)
                    _results.Remove(item);
            }
            else
            {
                SearchResult.Clear();
                var toAdd =
                    DataProvider.Items.Where(i => (i.Name.Contains(text)) || i.InxName.Contains(text)).ToList();
                SearchResult.AddRange(toAdd);
            }
            _prevString = SaveGetString();
            SaveRefresh();
            _updating = false;
        }

        private void ItemsMouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (Items.SelectedItems.Count > 0)
            {
                ItemChoosen = true;
                this.Item = (Item) Items.SelectedItems[0];
                this.Close();
            }
        }

        private void SelfWindowClosing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            _running = false;
        }
    }
}
