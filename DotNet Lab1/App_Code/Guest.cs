using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DotNet_Lab1.App_Code
{
    public class Guest
    {

        #region constructors

        public Guest()
        {

        }

        public Guest(int tblId)
        {
            DataTable dt = getTblById(tblId);

            if (dt.Rows.Count > 0)
            {
                this.guest_id = (int)dt.Rows[0]["guest_id"];
                this.guest_email = dt.Rows[0]["guest_email"].ToString();
                this.guest_first = dt.Rows[0]["guest_first"].ToString();
                this.guest_last = dt.Rows[0]["guest_last"].ToString();
                this.guest_salt = dt.Rows[0]["guest_salt"].ToString();
                this.guest_pw = dt.Rows[0]["guest_pw"].ToString();
                this.guest_phone = dt.Rows[0]["guest_phone"].ToString();

            }
        }


        #endregion

        #region properties


        public int guest_id { get; set; }
        public string guest_email { get; set; }

        public string guest_first { get; set; }

        public string guest_last { get; set; }

        public string guest_salt { get; set; }

        public string guest_pw { get; set; }

        public string guest_phone { get; set; }

        #endregion

        #region methods

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



        public static bool InsertGuest()
        {
            return true;
        }

        public static bool UpdateGuest()
        {
            return true;
        }
        private static DataTable GetGuestById(int id)
        {
            DataTable dt = new DataTable();

            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQL Server"].ConnectionString);
            SqlCommand cmd = new SqlCommand("guests_getById", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@guest_id", SqlDbType.Int).Value = id;

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

    

        private static DataTable GetGuestByEmail(string email)
        {
            DataTable dt = new DataTable();

            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQL Server"].ConnectionString);
            SqlCommand cmd = new SqlCommand("guest_GetByEmail", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@guest_email", SqlDbType.Int).Value = email;

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