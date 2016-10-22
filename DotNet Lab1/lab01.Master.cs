using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNet_Lab1
{
    public partial class lab01 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                #region nav

                //Declare list
                List<MenuItem> lmi = Menus.getMenuList();

                //Loop through menu list
                foreach (MenuItem mi in lmi)
                {
                    mnuMain.Items.Add(mi);
                }

                #endregion
            }
        }
    }
}