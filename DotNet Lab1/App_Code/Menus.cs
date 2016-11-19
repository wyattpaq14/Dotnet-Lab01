using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using DotNet_Lab1.App_Code;


namespace DotNet_Lab1
{
    public class Menus
    {

        public static List<MenuItem> getMenuList()
        {

            #region list declaration

            //Declare list
            List<MenuItem> lstMenu = new List<MenuItem>();
            lstMenu.Add(new MenuItem("Home", "", "", "~/Home"));
            lstMenu.Add(new MenuItem("Lunch Menu", "", "", "~/Home/Lunch-Menu"));
            lstMenu.Add(new MenuItem("Diner Menu", "", "", "~/Home/Diner-Menu"));
            lstMenu.Add(new MenuItem("Reservations", "", "", "~/Home/Reservations"));
            lstMenu.Add(new MenuItem("Directions", "", "", "~/Home/Directions"));
            lstMenu.Add(new MenuItem("About", "", "", "~/Home/About"));
            lstMenu.Add(new MenuItem("Contact", "", "", "~/Home/Contact"));
            lstMenu.Add(new MenuItem("Forgot Password", "", "", "~/Home/Forgot-Password"));



            return lstMenu;

            #endregion
        }

        public static List<MenuItem> getAdminMenuList()
        {

            #region list declaration

            //Declare list
            List<MenuItem> lstAdminMenu = new List<MenuItem>();
            lstAdminMenu.Add(new MenuItem("Menu Item", "", "", "~/Admin/Menu-Item"));
            lstAdminMenu.Add(new MenuItem("Menu Items", "", "", "~/Admin/Menu-Items"));
            lstAdminMenu.Add(new MenuItem("Res Mgmt", "", "", "~/Admin/Res-Mgmt"));
            lstAdminMenu.Add(new MenuItem("Tables", "", "", "~/Admin/Tables"));
            lstAdminMenu.Add(new MenuItem("Table", "", "", "~/Admin/Table"));
            lstAdminMenu.Add(new MenuItem("Sections", "", "", "~/Admin/Sections"));
            lstAdminMenu.Add(new MenuItem("Section", "", "", "~/Admin/Section"));
            lstAdminMenu.Add(new MenuItem("Users", "", "", "~/Admin/Users"));
            lstAdminMenu.Add(new MenuItem("User", "", "", "~/Admin/User"));

            return lstAdminMenu;

            #endregion
        }

    }
}