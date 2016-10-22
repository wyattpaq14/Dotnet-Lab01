using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


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
            lstMenu.Add(new MenuItem("Sign In", "", "", "~/Home/Sign-In"));




            return lstMenu;

            #endregion
        }

    }
}