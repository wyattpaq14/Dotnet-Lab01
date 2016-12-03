using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNet_Lab1.Pages
{
    public partial class Reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int tblId = Convert.ToInt32(RouteData.Values["res_id"]);

            DotNet_Lab1.App_Code.Reservation res = new DotNet_Lab1.App_Code.Reservation(tblId);

            txtReservationID.Text = res.res_id.ToString();
            txtUserID.Text = res.user_id.ToString();
            txtReservationDate.Text = res.res_date.ToString();
            txtReservationTime.Text = res.res_time.ToString();
            txtGuestCount.Text = res.res_guest_cnt.ToString();
            txtReservationSpecReq.Text = res.res_spec_req.ToString();
        }
    }
}