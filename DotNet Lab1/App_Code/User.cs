using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DotNet_Lab1.App_Code
{
    public class User
    {

        #region constructors

        public User()
        {

        }

        public User(int tblId)
        {
            DataTable dt = getTblById(tblId);

            if (dt.Rows.Count > 0)
            {
                this.user_email = dt.Rows[0]["user_email"].ToString();
                this.user_first = dt.Rows[0]["user_first"].ToString();
                this.user_last = dt.Rows[0]["user_last"].ToString();
                this.user_phone = dt.Rows[0]["user_phone"].ToString();
                this.user_active = (bool)dt.Rows[0]["user_active"];
            }
        }
        #endregion


        #region properties

        public string user_email { get; set; }
        public string user_first { get; set; }

        public string user_last { get; set; }

        public string user_phone { get; set; }

        public bool user_active { get; set; }




        #endregion



        #region methods/functions

        private static DataTable getTblById(int tblId)
        {

            DataTable dt = new DataTable();

            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQL Server"].ConnectionString);
            SqlCommand cmd = new SqlCommand("users_getbyid", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@user_id", SqlDbType.Int).Value = tblId;

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