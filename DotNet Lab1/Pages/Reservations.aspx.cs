using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace DotNet_Lab1.Pages
{
    public partial class Reservations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            #region define hour drop down items


            for (int i = 0; i <= 12; i++)
            {
                ddlHour.Items.Add(i.ToString());
            }
            

            #endregion

            #region define minnutes drop down items

            ddlMin.Items.Add(00.ToString());
            ddlMin.Items.Add(15.ToString());
            ddlMin.Items.Add(30.ToString());
            ddlMin.Items.Add(45.ToString());


            #endregion

            #region define am/pm drop down items

            ddlAmPm.Items.Add("AM");
            ddlAmPm.Items.Add("PM");

            #endregion

            #region define numguest drop down items


            for (int i = 0; i <= 10; i++)
            {
                ddlNumGuest.Items.Add(i.ToString());
            }
            
            #endregion
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DataTable guest = new DataTable();
            guest.Columns.Add("guest_email");
            guest.Columns.Add("guest_first");
            guest.Columns.Add("guest_last");
            guest.Columns.Add("guest_phone");
            DataRow row = guest.NewRow();
            row["guest_email"] = txtEmail.Text;
            row["guest_first"] = txtFirstName.Text;
            row["guest_last"] = txtLastName.Text;
            row["guest_phone"] = txtPhone.Text;



            guest.Rows.Add(row);


            App_Code.Guest gst = new App_Code.Guest(guest);
        }
    }
}