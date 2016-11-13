﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DotNet_Lab1.App_Code;


namespace DotNet_Lab1.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            app_user au = new app_user();
            app_user.Login(txtUsername.Text.Trim(), txtPwd.Text.Trim());
            txtSalt.Text = au.Salt;
            txtPwd.Text = txtPassword.Text.Trim();
            txtHashedPw.Text = au.HashedPwd;
            

        }

    }
}