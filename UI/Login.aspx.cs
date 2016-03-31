using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BDAL.BL;

namespace UI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["UID"] = null;                
            }
        }

        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                UserBL usr = new UserBL();
                usr.UserName = TextBox1.Text;
                usr.UserID = TextBox4.Text;
                usr.Password = TextBox3.Text;
                usr.Email = TextBox2.Text;
                usr.AddUser();

                lblMessage.Text = "You are registered successfully.";
            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            UserBL usr = new UserBL();
            usr.UserID = TextBoxUser.Text;
            usr.Password = TextBoxPass.Text;
            if (usr.ValidateUser())
            {
                Session["UID"] = TextBoxUser.Text;                
                Response.Redirect("Default.aspx");
            }
            else
            {
                lblMessage.Text = "Username or password is wrong!";
            }   
        }
        
    }
}