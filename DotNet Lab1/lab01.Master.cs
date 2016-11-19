using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace DotNet_Lab1
{
    public partial class lab01 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                #region nav

                //Declare list
                List<MenuItem> lmi = Menus.getMenuList();

                //Loop through menu list
                foreach (MenuItem mi in lmi)
                {
                    mnuMain.Items.Add(mi);
                }


                //Draw login/logout buttons based on IsAuthenticated
                if (Request.IsAuthenticated)
                {
                    lbLoginState.Text = "Logout";
                    

                    lblGreeting.Text = "Welcome " + Session["FullName"] + "!";
                }
                else if (!Request.IsAuthenticated)
                {
                    lbLoginState.Text = "Login";


                    lblGreeting.Text = "Welcome " + Session["FullName"] + "!";
                }

                #endregion
            }
        }

        protected void lbLoginState_Click(object sender, EventArgs e)
        {
            if (Request.IsAuthenticated)
            {

                FormsAuthentication.SignOut();
                Session["FullName"] = "Guest";

                Response.Redirect("~/Home");

            }
            else if (!Request.IsAuthenticated)
            {

                //nonexistant page might add in future?
                Response.Redirect("~/Home/Sign-In");

            }
        }
    }
}