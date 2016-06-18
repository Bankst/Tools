using System;
using System.Windows.Forms;
using System.Text;
using System.Data.SqlClient;
using System.Collections;
using System.Globalization;
using System.Data;


public static class DatabaseManager
{
    private static string Connectionstring;

    public static bool IsInitialed;

    public static bool Initialize(string host,string SQLUser,string Password,string SQLDB)
    {
        try
        {

            Connectionstring = BuildConnectionString(host, SQLUser, Password, SQLDB);//TODO CREATE
                                                       //test
            using (var con = GetConnection()) { con.Close(); }

            IsInitialed = true;
            return true;
        }
        catch (Exception ex)
        {
            MessageBox.Show(ex.ToString());
            return false;
        }

    }
    private static string BuildConnectionString(string host, string SQLUser, string Password, string SQLDB)
    {
        var cb = new SqlConnectionStringBuilder()
        {
            DataSource = host,
            UserID = SQLUser,
            Password = Password,
            InitialCatalog = SQLDB,
            MultipleActiveResultSets = true,
            IntegratedSecurity = false,
            MaxPoolSize = 500000,
        };
        return cb.ToString();
    }










    public static SqlConnection GetConnection()
    {
        var con = new SqlConnection(Connectionstring);

        con.Open();


        return con;
    }
    public static bool RunSQL(string sql, params SqlParameter[] Parameters)
    {
        SqlConnection Connection = null;
        DatabaseManager.CheckConnection(ref Connection);
        StringBuilder sqlString = new StringBuilder();
        // Fix for floating point problems on some languages
        sqlString.AppendFormat(CultureInfo.GetCultureInfo("en-US").NumberFormat, sql, Parameters);

        SqlCommand sqlCommand = null;
        try
        {
            sqlCommand = new SqlCommand(sqlString.ToString(), Connection);
            sqlCommand.Parameters.AddRange(Parameters);
            sqlCommand.ExecuteNonQuery();
            return true;
        }
        catch(Exception ex)
        {
            MessageBox.Show( "Error With Query  "+sqlCommand.CommandText);
            return false;
        }
    }

    public static SQLResult Select(string sql, params SqlParameter[] Parameters)
    {

        SqlConnection Connection = null;
        DatabaseManager.CheckConnection(ref Connection);
        StringBuilder sqlString = new StringBuilder();
        // Fix for floating point problems on some languages
        sqlString.AppendFormat(CultureInfo.GetCultureInfo("en-US").NumberFormat, sql, Parameters);

        SqlCommand sqlCommand = new SqlCommand(sqlString.ToString(), Connection);

        try
        {


            sqlCommand.Parameters.AddRange(Parameters);

            using (var SqlData = sqlCommand.ExecuteReader())
            {
                using (var retData = new SQLResult())
                {
                    retData.Load(SqlData);
                    retData.Count = retData.Rows.Count;

                    return retData;
                }
            }
        }
        catch 
        {

            MessageBox.Show( "Error With Query {0}", sqlCommand.CommandText);
        }

        return null;
    }
    public static void CheckConnection(ref SqlConnection con)
    {
        if (con == null)
        {
            con = GetConnection();
        }
        else if (con.State == ConnectionState.Closed
             || con.State == ConnectionState.Broken)
        {
            con = GetConnection();
        }
    }
}


