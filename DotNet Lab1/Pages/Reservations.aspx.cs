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
            if (!IsPostBack)
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
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Declare new guest object
            App_Code.Guest gst = new App_Code.Guest();

            gst.guest_email = txtEmail.Text;
            gst.guest_first = txtFirstName.Text;
            gst.guest_last = txtLastName.Text;
            gst.guest_phone = txtPhone.Text;



            //save new reservation in a data table
            App_Code.Reservation res = new App_Code.Reservation();

            TimeSpan reservationTime = new TimeSpan();

            res.guest_email = txtEmail.Text;
            res.res_date = Calendar1.SelectedDate;
            res.res_time = reservationTime; //do some shit with timespan to merge hours and mins 
            res.res_guest_cnt = Convert.ToInt32(ddlNumGuest.SelectedValue);
            res.saveReservation();

            
        }
    }
}