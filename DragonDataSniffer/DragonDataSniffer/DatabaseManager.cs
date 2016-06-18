using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Collections;
using System.Globalization;
using System.Data;

[TunnelModule(InitializationStage.Metadata)]
public static class DatabaseManager
{
    private static string Connectionstring;

    [InitializerMethod]
    public static bool Initialize()
    {
        try
        {
            Log.WriteLine(LogLevel.Info, "Initializing database connections...");
            Connectionstring = BuildConnectionString();//TODO CREATE
                                                       //test
            using (var con = GetConnection()) { con.Close(); }

            Log.WriteLine(LogLevel.Info, "Database connections initialized successfully.{0}", Environment.NewLine);
            return true;
        }
        catch (Exception ex)
        {
            Log.WriteLine(LogLevel.Exception, "DatabaseManager exception: {0}", ex.ToString());
            return false;
        }

    }
    private static string BuildConnectionString()
    {
        var cb = new SqlConnectionStringBuilder()
        {
            DataSource = Config.Instance.SQLHost,
            UserID = Config.Instance.SQLUser,
            Password = Config.Instance.SQLPassword,
            InitialCatalog = Config.Instance.SQLDatabase,
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
        catch (SqlException ex)
        {
            Log.WriteLine(LogLevel.Error, "Error With Query {0}", sqlCommand.CommandText);
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
        catch (SqlException ex)
        {

            Log.WriteLine(LogLevel.Error, "Error With Query {0}", sqlCommand.CommandText);
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


