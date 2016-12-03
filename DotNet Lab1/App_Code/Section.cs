using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DotNet_Lab1.App_Code
{
    public class Section
    {

        #region constructors

        public Section()
        {

        }

        public Section(int tblId)
        {
            DataTable dt = getTblById(tblId);

            if (dt.Rows.Count > 0)
            {
                this.sect_id = (int)dt.Rows[0]["sect_id"];
                this.sect_name = dt.Rows[0]["sect_name"].ToString();
                this.sect_desc = dt.Rows[0]["sect_desc"].ToString();
                this.sect_active = (bool)dt.Rows[0]["sect_active"];
            }
        }
        #endregion


        #region properties

        public int sect_id { get; set; }

        public string sect_name { get; set; }

        public string sect_desc { get; set; }

        public bool sect_active { get; set; }




        #endregion



        #region methods/functions

        private static DataTable getTblById(int tblId)
        {

            DataTable dt = new DataTable();

            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQL Server"].ConnectionString);
            SqlCommand cmd = new SqlCommand("sections_getById", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@sect_id", SqlDbType.Int).Value = tblId;

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