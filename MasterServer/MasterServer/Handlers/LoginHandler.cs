using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using MasterServer.Scs;
using MasterServer.Utility;
using System.Data.SqlClient;

namespace MasterServer.Handlers
{
    class LoginHandler
    {
        String Username;
        String Password;

        public LoginHandler(String Username, String Password)
        {
            this.Username = new Regex("[^a-zA-Z0-9 -]").Replace(Username, String.Empty);
            this.Password = new Regex("[^a-zA-Z0-9 -]").Replace(Password, String.Empty);
        }

        public string Login()
        {
            SqlDataReader DataReader = null;
            SqlCommand Command = new SqlCommand("");
            DataReader = Command.ExecuteReader();
            while (DataReader.Read())
            {
                if (this.Username == DataReader["Username"].ToString() && this.Password == DataReader["Password"].ToString())
                {
                    Connections.Add(this.Username, "Authorized");
                    String Token = GenerateToken();
                    UpdateToken(DataReader["UserID"].ToString(),Token);
                    return "Authorized#Token:" + Token;
                }
            }
            Connections.Add(this.Username, "Unauthorized");
            return "Unauthorized";
        }

        public void UpdateToken(String UserID,String Token)
        {
            using (SqlCommand Command = new SqlCommand("UPDATE tTokens SET tToken= @Token where UserID = @UserID"))
            {
                Command.Parameters.Add(new SqlParameter("UserID", UserID));
                Command.Parameters.Add(new SqlParameter("Token", Token));
                Command.ExecuteNonQuery();
            } 
        }

        public string GenerateToken()
        {
            Random random = new Random();
            String input = "abcdefghijklmnopqrstuvwxyz0123456789";
            StringBuilder builder = new StringBuilder();
            char ch;
            for (int i = 0; i < 50; i++)
            {
                ch = input[random.Next(0, input.Length)];
                builder.Append(ch);
            }
            return builder.ToString();
        }
    }
}
