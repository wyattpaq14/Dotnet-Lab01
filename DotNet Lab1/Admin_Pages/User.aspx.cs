using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNet_Lab1.Pages
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int tblId = Convert.ToInt32(RouteData.Values["user_id"]);

            DotNet_Lab1.App_Code.User usr = new DotNet_Lab1.App_Code.User(tblId);

            txtEmail.Text = usr.user_email.ToString();
            txtFirstName.Text = usr.user_first.ToString();
            txtLastName.Text = usr.user_last.ToString();
            cbIsActive.Text = usr.user_active.ToString();
        }
    }
}
