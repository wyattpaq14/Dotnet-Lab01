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



        public static bool InsertGuest(DataTable guest)
        {
            int id = 0;
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQL Server"].ConnectionString);
            SqlCommand cmd = new SqlCommand("guests_Insert", cn);

            cmd.Parameters.Add("@guest_email", SqlDbType.VarChar).Value = guest.Rows[0]["guest_email"];
            cmd.Parameters.Add("@guest_first", SqlDbType.VarChar).Value = guest.Rows[0]["guest_first"];
            cmd.Parameters.Add("@guest_last", SqlDbType.VarChar).Value = guest.Rows[0]["guest_last"];
            cmd.Parameters.Add("@guest_salt", SqlDbType.VarChar).Value = guest.Rows[0]["guest_salt"];
            cmd.Parameters.Add("@guest_pwd", SqlDbType.VarChar).Value = guest.Rows[0]["guest_pwd"];
            cmd.Parameters.Add("@guest_phone", SqlDbType.VarChar).Value = guest.Rows[0]["guest_phone"];

            // Open the database connection and execute the command
            try
            {
                //opens connection to database, most failures happen here
                //check connection string for proper settings
                cn.Open();
                //data adapter object is trasport link between data source and 
                //execute the non-query stored procedure
                cmd.ExecuteNonQuery();
                id = Convert.ToInt32(cmd.Parameters["@guest_id"].Value);
            }
            catch (Exception exc)
            {
                //just put here to make debugging easier, can look at error directly
                exc.ToString();
            }
            finally
            {
                //must always close connections
                cn.Close();
            }





            bool isInserted = false;
            return isInserted;
        }

        public static bool UpdateGuest()
        {
            bool isUpdated = false;
            return isUpdated;
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