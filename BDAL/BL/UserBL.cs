using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BDAL.DAL;

namespace BDAL.BL
{
    public class UserBL
    {
        private string _ID;
        private string _username;
        private string _password;
        private string _email;
        private List<UserBL> _userCollection;
        public string UserID 
        {
            get { return _ID; }
            set { _ID = value; }
        }

        public string UserName
        {
            get { return _username; }
            set { _username = value; }
        }
        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        public List<UserBL> UserCollection
        {
            get { return _userCollection; }
            set { _userCollection = value; }
        }

        //public List<UserBL> AllUsers()
        //{
        //    return UserDAL.AllUsers();
        //}

        public void AllUsers()
        {
            this.UserCollection = UserDAL.AllUsers();
        }

        public void AddUser()
        {
            UserDAL.AddUser(this);
        }

        public bool ValidateUser()
        {
            return UserDAL.ValidateUser(this);
        }
    }
}
