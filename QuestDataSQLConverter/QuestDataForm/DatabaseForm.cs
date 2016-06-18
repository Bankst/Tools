using System;
using System.IO;
using QuestDataSQLConverter.Settings;
using System.Windows.Forms;

namespace QuestDataForm
{
    public partial class DatabaseForm : Form
    {
        public DatabaseForm()
        {
            InitializeComponent();
        }

        private void DatabaseForm_Load(object sender, EventArgs e)
        {
            if(DatabaseSetting.Instance != null)
            {
                tDB.Text = DatabaseSetting.Instance.SQLDB;
                tSQLUser.Text = DatabaseSetting.Instance.SQLUser;
                tSQLPassword.Text = DatabaseSetting.Instance.SQLPassword;
                tSQLServer.Text = DatabaseSetting.Instance.SQLHost;
                checkBox1.Checked = true;
            }
        }
        private void Connect()
        {
            if (!DatabaseManager.Initialize(DatabaseSetting.Instance.SQLHost,
                                        DatabaseSetting.Instance.SQLUser,
                                        DatabaseSetting.Instance.SQLPassword,
                                        DatabaseSetting.Instance.SQLDB))
            {
                MessageBox.Show("Failed To Connect SQL Server");
                return;
            }
     
        }
        private void DeleteFile()
        {
            if(File.Exists(@"DatabaseSettings.xml"))
            {
                File.Delete(@"DatabaseSettings.xml");
            }
        }
        private void button1_Click(object sender, EventArgs e)
        {
            if (DatabaseSetting.Instance != null)
            {
                DatabaseSetting.Instance.SQLUser = tSQLUser.Text;
                DatabaseSetting.Instance.SQLPassword = tSQLPassword.Text;
                DatabaseSetting.Instance.SQLHost = tSQLServer.Text;
                DatabaseSetting.Instance.SQLDB = tDB.Text;
                if (checkBox1.Checked)
                {
                   
                    DatabaseSetting.Instance.Write("DatabaseSettings.xml");
                }
                else
                {

                    DeleteFile();
                }
                Connect();
            }
            else
            {

                DatabaseSetting.Instance = new DatabaseSetting
                {
                    SQLDB = tDB.Text,
                    SQLHost = tSQLServer.Text,
                    SQLPassword = tSQLPassword.Text,
                    SQLUser = tSQLUser.Text,
                };
                if (checkBox1.Checked)
                {
                    DatabaseSetting.Instance.Write("DatabaseSettings.xml");
                }
                else
                {
                    DeleteFile();
                }
                Connect();
            }
            
            this.Close();
        }
    }
}
