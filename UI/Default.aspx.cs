using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BDAL.BL;

namespace UI
{
    public partial class _Default : Page
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

               

        protected void CurrentRowTextBox_OnTextChanged(object sender, EventArgs e)
        {
            TextBox t = (TextBox)sender;
            DataPager pager = (DataPager)divPager.FindControl("DataPager1");
            pager.SetPageProperties(Convert.ToInt32(t.Text) - 1, pager.PageSize, true);
        }

        protected void DataPager1_PreRender(object sender, EventArgs e)
        {
            BindTweetList();
        }

        private void BindTweetList()
        {
            TweetBL usr = new TweetBL();
            string uid = Session["UID"].ToString();
            usr.UserID = uid;
            usr.AllTweets(uid);
            List<TweetBL> uList = usr.TweetCollection;                      

            ListViewZar.DataSource = uList;
            ListViewZar.DataBind();            
        }
    }
}