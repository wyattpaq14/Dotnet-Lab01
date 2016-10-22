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

            //Static routes
            routes.MapPageRoute("Home", "Home", "~/Default.aspx");
            routes.MapPageRoute("Lunch-Menu", "Home/Lunch-Menu", "~/Pages/LunchMenu.aspx");
            routes.MapPageRoute("Dinner-Menu", "Home/Dinner-Menu", "~/Pages/DinnerMenu.aspx");
            routes.MapPageRoute("Reservations", "Home/Reservations", "~/Pages/Reservations.aspx");
            routes.MapPageRoute("Directions", "Home/Directions", "~/Pages/Directions.aspx");
            routes.MapPageRoute("About", "Home/About", "~/Pages/About.aspx");
            routes.MapPageRoute("Contact", "Home/Contact", "~/Pages/Contact.aspx");
            routes.MapPageRoute("Sign-In", "Home/Sign-In", "~/Pages/Login.aspx");

        }
    }
}