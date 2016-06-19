using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
namespace OdinRestServer
{
    public class DatabaseManager
    {
        private static SqlConnection Connection;
        private static SqlDataReader TableReader;
        private static SqlDataReader TableReader2;

        MD5CryptoServiceProvider algorithm = new MD5CryptoServiceProvider();
        private static DateTime DBDate;
        private string dTokeDate;
        public DatabaseManager()
        {
            try
            {
                Program.L.log("Database", "Start MSSQL Connect: [" + Program.Settings["DatabaseManager.DataSource.Server"] + "].[" + Program.Settings["DatabaseManager.DataSource.Database"] + "]", true);
                Connection = new SqlConnection("data source=" + Program.Settings["DatabaseManager.DataSource.Server"] + "; initial catalog=" + Program.Settings["DatabaseManager.DataSource.Database"] + ";integrated security=SSPI; persist security info=False;Trusted_Connection=Yes;Connection Timeout=5");
                Connection.Open();
                Connection.Close();
            }
            catch (Exception e)
            {
                Program.L.log("Database", "DATABASE CONNECT FAIL", e);
                Environment.Exit(1);
            }

        }
        public string getInfo(string stoken)
        {
            string User = "", EMID = "";
            try
            {


                try
                {
                    TableReader.Close();
                    TableReader2.Close();
                }
                catch { }

                

                lock (Connection)
                {

                    openConnection();
                    SqlCommand cmdDoLogin = Connection.CreateCommand();
                    cmdDoLogin.CommandText = "SELECT nEMID, dDate FROM " + Program.Settings["DatabaseManager.DataSource.TokenTable"] + " WHERE sToken = @token order by dDate asc;";
                    cmdDoLogin.Parameters.AddWithValue("@token", stoken);

                    TableReader = cmdDoLogin.ExecuteReader();
                    if (TableReader.HasRows)
                    {
                        Program.L.log("BrokenLog", "TableRead.HasRows = true");
                        while (TableReader.Read())
                        {
                            EMID = TableReader["nEMID"].ToString();
                            dTokeDate = TableReader["dDate"].ToString();
                            Program.L.log("BrokenLog", "Row['EMID'] = " + EMID);
                        }

                    }
                    else
                    {
                        //Program.L.log("BrokenLog", "TableRead.HasRows = false");
                        TableReader.Close();
                        return "NoToken: " + stoken;
                    }

                    TableReader.Close();
                    cmdDoLogin.Dispose();

                    if (Program.Settings["OdinServer.TokenManager.EnforceExpireDate"] == "True")
                    {
                        if (!verifyTokenDate(dTokeDate))
                        {
                            return "TokExp";
                        }
                    }
                    //Program.L.log("BrokenLog", "Program.Tokens.Add(" + stoken + ", " + EMID + ");");
                    //Program.Tokens.Add(stoken, EMID);

                }

                SqlCommand cmdDoLogin2 = Connection.CreateCommand();
                cmdDoLogin2.CommandText = "SELECT TOP 1 sUserName FROM " + Program.Settings["DatabaseManager.DataSource.AccountTable"] + " WHERE nEMID = @id;";
                cmdDoLogin2.Parameters.AddWithValue("@id", EMID);
                TableReader2 = cmdDoLogin2.ExecuteReader();
                if (TableReader2.HasRows)
                {
                    while (TableReader2.Read())
                    {
                        User = TableReader2["sUserName"].ToString();
                    }
                }
                else
                {
                    TableReader2.Close();
                    return "";
                }
                TableReader2.Close();
                cmdDoLogin2.Dispose();

                return "{\"token_age\":0,\"user_id\":" + EMID + ",\"login\":\"" + User + "\",\"user_role\":\"user\",\"blocked\":false}";
            }
            catch (Exception e) { Program.L.log("Database", "DatabaseManager::getInfo('" + stoken + "') FAILED", e); return ""; }
        }
        
        public bool verifyTokenDate(string d)
        {

            try
            {
                DBDate = Convert.ToDateTime(d);
            }
            catch
            {
                return false;
            }
            try
            {
                TimeSpan SecDiff = DateTime.Now - DBDate;
                if (SecDiff.Seconds > 59 || SecDiff.Seconds <= -1)
                {
                    return false;
                }
                if (SecDiff.Minutes != 0 || SecDiff.Minutes <= -1)
                {
                    return false;
                }
                if (SecDiff.Hours != 0 || SecDiff.Hours <= -1)
                {
                    return false;
                }
                if (SecDiff.Days != 0 || SecDiff.Days <= -1)
                {
                    return false;
                }
            }
            catch
            {
                return false;
            }
            return true;
        }
        private double Timestamp(string date)
        {
            DateTime value = Convert.ToDateTime(date);
            TimeSpan span = (value - new DateTime(1970, 1, 1, 0, 0, 0, 0).ToLocalTime());
            return (double)span.TotalSeconds;
        }
        private string Boolean(string i)
        {
            if (i == "0")
            {
                return "false";
            }
            else
            {
                return "true";
            }
        }
        public string getPurchasedItems(string agid)
        {
            try
            {
                try
                {
                    TableReader.Close();
                    TableReader2.Close();
                }
                catch { }


                lock (Connection)
                {
                    string ret = "";
                    openConnection();
                    SqlCommand cmdDoLogin = Connection.CreateCommand();
                    cmdDoLogin.CommandText = "SELECT * FROM " + Program.Settings["DatabaseManager.DataSource.PurchaseTable"] + " WHERE nAGID = @id and nUsed = 0 order by dDate desc;";
                    cmdDoLogin.Parameters.AddWithValue("@id", agid);

                    TableReader = cmdDoLogin.ExecuteReader();
                    if (TableReader.HasRows)
                    {
                        while (TableReader.Read())
                        {
                            ret += "{\"orderItemID\":" + TableReader["nID"].ToString() + ",\"gameItemID\":" + TableReader["nGoodsNo"].ToString() + ",\"orderTime\":" + Timestamp(TableReader["dDate"].ToString()) + ",\"quantity\":" + TableReader["nQuantity"].ToString() + ",\"isUsed\":" + Boolean(TableReader["nUsed"].ToString()) + "},";
                        }
                    }
                    else
                    {
                        TableReader.Close();
                        return "";
                    }

                    TableReader.Close();
                    cmdDoLogin.Dispose();
                    return ret.TrimEnd(new char[] {','});
                }
            }
            catch (Exception e) { Program.L.log("Database", "DatabaseManager::getPurchaseInfo('" + agid + "') FAILED", e); return ""; }
        }
        public string setItemUsed(string agid, string charid, string orderid)
        {
            try
            {
                lock (Connection)
                {
                    openConnection();

                    try
                    {
                        TableReader.Close();
                    }
                    catch { }


                    SqlCommand cmdInTok0 = Connection.CreateCommand();
                    cmdInTok0.CommandText = "SELECT * FROM " + Program.Settings["DatabaseManager.DataSource.PurchaseTable"] + " WHERE nID = @oid and nAGID = @agid and nUsed = 0";
                    cmdInTok0.Parameters.AddWithValue("@oid", orderid);
                    cmdInTok0.Parameters.AddWithValue("@agid", agid);
                    TableReader = cmdInTok0.ExecuteReader();

                    if (TableReader.HasRows == false)
                    {
                        TableReader.Close();
                        cmdInTok0.Dispose();
                        Program.L.log("setItemUsedError", String.Format("nOrderID={0}\tnAGID={1}\tnCharNo={2}", orderid, agid, charid),true);
                        return "exit";
                    }


                    TableReader.Close();
                    cmdInTok0.Dispose();




                    SqlCommand cmdInTok = Connection.CreateCommand();
                    cmdInTok.CommandText = "UPDATE " + Program.Settings["DatabaseManager.DataSource.PurchaseTable"] + " set nUsed = '1' WHERE nID = @oid";
                    cmdInTok.Parameters.AddWithValue("@oid", orderid);
                    cmdInTok.ExecuteNonQuery();
                    cmdInTok.Dispose();

                    SqlCommand cmdInTok2 = Connection.CreateCommand();
                    cmdInTok2.CommandText = "INSERT INTO " + Program.Settings["DatabaseManager.DataSource.ItemUsesTable"] + " (nOrderID, nAGID, nCharNo) VALUES (@oid, @agid, @char)";
                    cmdInTok2.Parameters.AddWithValue("@oid", orderid);
                    cmdInTok2.Parameters.AddWithValue("@agid", agid);
                    cmdInTok2.Parameters.AddWithValue("@char", charid);
                    cmdInTok2.ExecuteNonQuery();
                    cmdInTok2.Dispose();
                    return "{\"result\":true}";
                }
            }
            catch (Exception e) { Program.L.log("Database", "DatabaseManager::setItemUsed('" + agid + "', '" + charid + "', '" + orderid + "') FAILED", e); return "exit"; }

        }







        public void openConnection()
        {
            if (Connection.State != ConnectionState.Open)
            {
                Connection.Open();
            }
        }
        
    }
}
