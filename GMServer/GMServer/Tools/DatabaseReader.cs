using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;

namespace GMServer
{
    public class DatabaseManager
    {
        private static DatabaseManager _instance;
        private static volatile object synclock = new object();
        public SqlConnection Connection { get; set; }
        string WorldConnString = "";
        string AccountConnString = "";
        public DBType Type = DBType.ACCOUNT;

        public static DatabaseManager Instance
        {
            #region Signelton
            get
            {
                if (_instance == null)
                {
                    lock (synclock)
                    {
                        if (_instance == null)
                            _instance = new DatabaseManager();
                    }
                }

                return _instance;
            }
            #endregion
        }

        /// <summary>
        /// Constructor with given connection string.
        /// </summary>
        /// <param name="connection"></param>
        private DatabaseManager(string Server, string Port, string User, string Password, string Database)
        {
            Connection = new SqlConnection(string.Format("Server={0};Port={1};User Id={2};Password={3};Database={4}",
                Server,
                Port,
                User,
                Password,
                Database)
                );
        }
        /// <summary>
        /// Constructor with default settings.
        /// </summary>
        private DatabaseManager()
        {
            Connection = new SqlConnection();
       //     Connection.ConnectionString = GenerateConnectionString();
            WorldConnString = GenerateConnectionString(Settings.Instance.GetString("Database.World"));
            AccountConnString = GenerateConnectionString(Settings.Instance.GetString("Database.Account"));
            Connection.ConnectionString = AccountConnString;
        }

        public void SelectDB(DBType type)
        {
            this.Type = type;
            if (type == DBType.ACCOUNT)
                Connection.ConnectionString = AccountConnString;
            else
                Connection.ConnectionString = WorldConnString;
        }

        public SqlCommand CreateCommand()
        {
            Connection.Open();
            return Connection.CreateCommand();
        }
        /// <summary>
        /// Generates a connection string from a database config file.
        /// </summary>
        /// <param name="dbcfg">config file</param>
        /// <returns>connection string</returns>
        public string GenerateConnectionString(string Database)
        {
            string[] conn = new string[] { Settings.Instance.GetString("Database.Server"),Settings.Instance.GetString("Database.Port"),  Settings.Instance.GetString("Database.Username"), Settings.Instance.GetString("Database.Password"), Database };
            string Conn = string.Format("Data Source={0};Initial Catalog={4};Network Library=DBMSSOCN;User ID={2};Password={3};",
                conn[0],
                conn[1],
                conn[2],
                conn[3],
                conn[4]);
            return Conn;
        }

        /// <summary>
        /// Tests the connection to see if alive.
        /// </summary>
        public bool CheckConnection()
        {
            try
            {
                this.Connection.Open();
                Disconnect();
            }
            catch
            {
                return false;
            }
            return true;
        }
        /// <summary>
        /// Gets results for multi row query.
        /// Close the reader will automaticly close the connection.
        /// </summary>
        /// <param name="q">select query</param>
        /// <returns>MySqlDataReader of the given query</returns>
        public SqlDataReader ExecuteReader(string q)
        {
            this.Connection.Open();
            SqlCommand cmd = Connection.CreateCommand();
            cmd.CommandText = q;
            return cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        }

        /// <summary>
        /// Executes a query. (update, alter, insert)
        /// </summary>
        /// <param name="query">query to execute.</param>
        public bool ExecuteQuery(string query)
        {
            bool toRet = true;
            Connection.Open();
            SqlCommand update = Connection.CreateCommand();
            update.CommandText = query;
            update.Prepare();
            try
            {
                update.ExecuteNonQuery();
            }
            catch
            {
                toRet = false;
            }
            finally
            {
                Disconnect();
            }
            return toRet;
        }
        /// <summary>
        /// This executes the query and returns the new row ID
        /// </summary>
        /// <param name="query"></param>
        /// <returns></returns>
        public int InsertAndReturnIdentifier(string query)
        {
            Connection.Open();
            SqlCommand command = Connection.CreateCommand();
            command.CommandText = query;
            try
            {
                command.ExecuteNonQuery();
                command.CommandText = "SELECT LAST_INSERT_ID()";
                command.Parameters.Clear();

                return (int)(long)command.ExecuteScalar();
            }
            finally
            {
                Disconnect();
            }
        }

        public void Disconnect()
        {
            if (Connection.State == System.Data.ConnectionState.Open)
            {
                this.Connection.Close();
            }
        }

        public void Dispose()
        {
            Disconnect();
            Connection.Dispose();
        }
    }

    public enum DBType
    {
        WORLD,
        ACCOUNT
    }
}