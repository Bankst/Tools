using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FiestaAdmin.Data
{
    public static class AccountManipulator
    {
        private static AccountEntities entity = new AccountEntities();

        public static tUser GetUser(string username)
        {
            return entity.tUsers.First(u => u.sUserName == username);
        }

        public static bool IsAdmin(string username)
        {
            tUser user = GetUser(username);
            if (user != null)
            {
                if (user.nAuthID > 0)
                {
                    return true;
                }
            }
            return false;
        }

        public static bool SetBlock(string username, bool value){
            tUser user = GetUser(username);
            if (user != null)
            {
                user.bIsBlock = value;
                Save();
                return true;
            }
            return false;
        }

        public static void Save()
        {
            entity.SaveChanges();
        }
    }
}
