using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace MasterServer.Handlers
{
    class DatabaseHandler
    {
        String Server, Username, Password, Database;
        public static SqlConnection Connection { get; set; }

        public DatabaseHandler(String Server, String Username, String Password, String Database)
        {
            this.Server = Server;
            this.Username = Username;
            this.Password = Password;
            this.Database = Database;
        }

        public string Connect()
        {
            try
            {
                Connection = new SqlConnection("Server=" + Server +
                ";Database=" + Database + ";User Id=" + Username +
                ";Password=" + Password + ";");
                Connection.Open();
            }
            catch (Exception) { return "Error"; }
            return "Connected";
        }
    }
}
