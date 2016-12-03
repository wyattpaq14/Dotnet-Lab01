using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNet_Lab1.Admin_Pages
{
    public partial class Table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int tblId = Convert.ToInt32(RouteData.Values["tbl_id"]);

            DotNet_Lab1.App_Code.table tbl = new DotNet_Lab1.App_Code.table(tblId);


            ddlSection.Text = tbl.sect_id.ToString();
            txtName.Text = tbl.tbl_name;
            txtDesc.Text = tbl.tbl_desc;
            ddlSeatCount.Text = tbl.tbl_seat_cnt.ToString();
            cbDescIsActive.Text = tbl.is_active.ToString();
        }
    }
}