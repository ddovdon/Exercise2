﻿using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblLoginUser.Text = Session["UID"].ToString();
                lblLoginTitle.ForeColor = Color.White;
                lblLoginUser.ForeColor = Color.White;                
            }
        }
    }
}