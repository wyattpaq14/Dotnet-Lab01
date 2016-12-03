using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;
using System.Web.Optimization;

namespace DotNet_Lab1
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }
        public static void RegisterRoutes(RouteCollection routes)
        {
            //Ignore WebResource.axd file

            routes.Ignore("{resource}.axd/{*pathInfo}");

            //non-admin routes
            routes.MapPageRoute("Home", "Home", "~/Default.aspx");
            routes.MapPageRoute("Lunch-Menu", "Home/Lunch-Menu", "~/Pages/LunchMenu.aspx");
            routes.MapPageRoute("Diner-Menu", "Home/Diner-Menu", "~/Pages/DinnerMenu.aspx");
            routes.MapPageRoute("Reservations", "Home/Reservations", "~/Pages/Reservations.aspx");
            routes.MapPageRoute("Directions", "Home/Directions", "~/Pages/Directions.aspx");
            routes.MapPageRoute("About", "Home/About", "~/Pages/About.aspx");
            routes.MapPageRoute("Contact", "Home/Contact", "~/Pages/Contact.aspx");
            routes.MapPageRoute("Sign-In", "Home/Sign-In", "~/Pages/Login.aspx");
            routes.MapPageRoute("Forgot Password", "Home/Forgot-Password", "~/Pages/ForgotPassword.aspx");



            //admin routes
            routes.MapPageRoute("Menu-Item", "Admin/Menu-Item", "~/Admin_Pages/MenuItem.aspx");
            routes.MapPageRoute("Menu-Items", "Admin/Menu-Items", "~/Admin_Pages/MenuItems.aspx");
            routes.MapPageRoute("Res-Mgmt", "Admin/Res-Mgmt", "~/Admin_Pages/ResMgmt.aspx");
            routes.MapPageRoute("Tables", "Admin/Tables", "~/Admin_Pages/Tables.aspx");
            //routes.MapPageRoute("Table", "Admin/Table", "~/Admin_Pages/Table.aspx");
            routes.MapPageRoute("Sections", "Admin/Sections", "~/Admin_Pages/Sections.aspx");
            routes.MapPageRoute("Section", "Admin/Section", "~/Admin_Pages/Section.aspx");
            routes.MapPageRoute("Users", "Admin/Users", "~/Admin_Pages/Users.aspx");
            //routes.MapPageRoute("User", "Admin/User", "~/Admin_Pages/User.aspx");



            routes.MapPageRoute("Table", "Admin/Table/{tbl_id}", "~/Admin_Pages/Table.aspx", false, new RouteValueDictionary { { "tbl_id", "0" } });



        }
    }
}