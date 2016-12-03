using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DotNet_Lab1.App_Code
{
    public class table
    {

        #region constructors

        public table()
        {

        }

        public table(int tblId)
        {
            DataTable dt = getTblById(tblId);

            if (dt.Rows.Count > 0)
            {
                this.tbl_id = (int)dt.Rows[0]["tbl_id"];
                this.sect_id = (int)dt.Rows[0]["sect_id"];
                this.tbl_name = dt.Rows[0]["tbl_name"].ToString();
                this.tbl_desc = dt.Rows[0]["tbl_desc"].ToString();
                this.tbl_seat_cnt = (int)dt.Rows[0]["tbl_seat_cnt"];
                this.is_active = (bool)dt.Rows[0]["tbl_active"];
            }
        }
        #endregion


        #region properties

        public int tbl_id { get; set; }
        public int sect_id { get; set; }

        public string tbl_name { get; set; }

        public string tbl_desc { get; set; }

        public int tbl_seat_cnt { get; set; }

        public bool is_active { get; set; }




        #endregion



        #region methods/functions

        private static DataTable getTblById(int tblId)
        {

            DataTable dt = new DataTable();

            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SE256_Paquin"].ConnectionString);
            SqlCommand cmd = new SqlCommand("tables_getbyid", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@tbl_id", SqlDbType.Int).Value = tblId;

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