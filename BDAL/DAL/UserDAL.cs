using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BDAL.BL;

namespace BDAL.DAL
{
    public class UserDAL
    {
        public static void AddUser(UserBL usr)
        {
            using(dbTwitterEntities db = new dbTwitterEntities())
            {
                User _usr = new User();
                _usr.UserID = usr.UserID;
                _usr.UserName = usr.UserName;
                _usr.Password = usr.Password;
                _usr.Email = usr.Email;                
                db.Users.Add(_usr);
                db.SaveChanges();
            }
        }

        public static List<UserBL> AllUsers()
        {
            List<UserBL> uList = new List<UserBL>();
            using (dbTwitterEntities db = new dbTwitterEntities())
            {
                foreach(var _usr in db.Users)
                {
                    UserBL user = new UserBL();
                    user.UserID = _usr.UserID;
                    user.UserName = _usr.UserName;
                    user.Password = _usr.Password;
                    user.Email = _usr.Email;
                    uList.Add(user);
                }
                return uList;                
            }
        }

        public static bool ValidateUser(UserBL usr)
        {            
            bool result = false;

            using (dbTwitterEntities db = new dbTwitterEntities())
            {
                var Query = from s in db.Users
                            where s.UserID == usr.UserID && s.Password == usr.Password
                            select s;

                if (Query.Count() > 0)
                {                    
                    result = true;
                }                
            }
            return result;
        }
    }
}
