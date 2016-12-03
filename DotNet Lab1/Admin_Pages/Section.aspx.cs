using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNet_Lab1.Admin_Pages
{
    public partial class Section : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int tblId = Convert.ToInt32(RouteData.Values["sect_id"]);

            DotNet_Lab1.App_Code.Section sect = new DotNet_Lab1.App_Code.Section(tblId);

            txtName.Text = sect.sect_name.ToString();
            txtDesc.Text = sect.sect_desc.ToString();
            cbDescIsActive.Text = sect.sect_active.ToString();
        }
    }
}