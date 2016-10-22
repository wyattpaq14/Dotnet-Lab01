using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNet_Lab1
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            #region nav

            //Declare list
            List<MenuItem> lmi = Menus.getMenuList();

            //Loop through menu list
            foreach (MenuItem mi in lmi)
            {
                mnAdminMenu.Items.Add(mi);
            }

            #endregion



            #region admin nav

            //Declare list
            List<MenuItem> lmai = Menus.getAdminMenuList();

            //Loop through menu list
            foreach (MenuItem mi in lmai)
            {
                mnAdminMenu.Items.Add(mi);
            }

            #endregion
        }
    }
}