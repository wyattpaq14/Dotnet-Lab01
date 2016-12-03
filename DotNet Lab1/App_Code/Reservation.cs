using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DotNet_Lab1.App_Code
{
    public class Reservation
    {

        #region constructors

        public Reservation()
        {

        }

        public Reservation(int tblId)
        {
            DataTable dt = getTblById(tblId);

            if (dt.Rows.Count > 0)
            {
                this.res_id = (int)dt.Rows[0]["res_id"];
                this.user_id = (int)dt.Rows[0]["user_id"];
                this.res_date = (DateTime)dt.Rows[0]["res_date"];
                this.res_time = (TimeSpan)dt.Rows[0]["res_time"];
                this.res_guest_cnt = (int)dt.Rows[0]["res_guest_cnt"];
                this.res_spec_req = dt.Rows[0]["res_spec_req"].ToString();
            }
        }
        #endregion


        #region properties

        public int res_id { get; set; }
        public int user_id { get; set; }

        public DateTime res_date { get; set; }

        public TimeSpan res_time { get; set; }

        public int res_guest_cnt { get; set; }

        public string res_spec_req { get; set; }




        #endregion



        #region methods/functions

        private static DataTable getTblById(int tblId)
        {

            DataTable dt = new DataTable();

            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQL Server"].ConnectionString);
            SqlCommand cmd = new SqlCommand("res_getById", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@res_id", SqlDbType.Int).Value = tblId;

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