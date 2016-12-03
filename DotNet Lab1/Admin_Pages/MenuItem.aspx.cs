using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNet_Lab1.Admin_Pages
{
    public partial class MenuItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int tblId = Convert.ToInt32(RouteData.Values["item_id"]);

            DotNet_Lab1.App_Code.MenuzItem item = new DotNet_Lab1.App_Code.MenuzItem(tblId);

            txtName.Text = item.item_name.ToString();
            txtDesc.Text = item.item_desc.ToString();
            txtPrice.Text = item.item_price.ToString();
            cbCatIsActive.Text = item.item_active.ToString();
        }
    }
}