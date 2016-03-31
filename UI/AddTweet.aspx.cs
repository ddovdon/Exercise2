using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BDAL.BL;

namespace UI
{
    public partial class AddTweet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UID"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                TweetBL usr = new TweetBL();
                usr.Message = txtDesc.Text;
                usr.UserID = Session["UID"].ToString();
                usr.AttachmentURL = "";
                usr.AddTweet();

                lblMessage.Text = "Your tweet saved.";
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
    }
}