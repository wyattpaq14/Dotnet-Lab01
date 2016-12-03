using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DotNet_Lab1.App_Code
{
    public class MenuzItem
    {

        #region constructors

        public MenuzItem()
        {

        }

        public MenuzItem(int tblId)
        {
            DataTable dt = getTblById(tblId);

            if (dt.Rows.Count > 0)
            {
                this.item_id = (int)dt.Rows[0]["item_id"];
                this.menu_id = (int)dt.Rows[0]["menu_id"];
                this.item_name = dt.Rows[0]["item_name"].ToString();
                this.item_desc = dt.Rows[0]["item_desc"].ToString();
                this.item_price = (decimal)dt.Rows[0]["item_price"];
                this.item_active = (bool)dt.Rows[0]["item_active"];
            }
        }
        #endregion


        #region properties

        public int item_id { get; set; }
        public int menu_id { get; set; }

        public string item_name { get; set; }

        public string item_desc { get; set; }

        public decimal item_price { get; set; }

        public bool item_active { get; set; }




        #endregion



        #region methods/functions

        private static DataTable getTblById(int tblId)
        {

            DataTable dt = new DataTable();

            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQL Server"].ConnectionString);
            SqlCommand cmd = new SqlCommand("menu_items_getbyID", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@item_id", SqlDbType.Int).Value = tblId;

            try
            {
                cn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }
            catch
            {

            }
            finally
            {
                cn.Close();
            }



            return dt;
        }




        #endregion
    }
}