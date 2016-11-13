using System;
using System.Collections.Generic;
using System.Web;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Security.Cryptography;



namespace DotNet_Lab1.App_Code
{
    public class app_user
    {


        #region constructors

        //Default constructor
        public app_user()
        {
            this.Salt = CreateSalt();
        }

        //Overloaded constructor

        public app_user(string email)
        {
            
        }

        #endregion

        #region methods/functions

        private static string CreateSalt()
        {
            // Generate a cryptographic random number using the cryptographic 
            // service provider
            byte[] saltBytes = new byte[16];
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            rng.GetBytes(saltBytes);
            // Return a Base64 string representation of the random number
            return Convert.ToBase64String(saltBytes);
        }


        private static string CreatePasswordHash(string salt, string pwd)
        {
            string saltAndPwd = string.Concat(salt, pwd);
            // Create a new instance of the hash crypto service provider.
            HashAlgorithm hashAlg = new SHA256CryptoServiceProvider();
            // Convert the data to hash to an array of Bytes.
            byte[] bytValue = System.Text.Encoding.UTF8.GetBytes(saltAndPwd);
            // Compute the Hash. This returns an array of Bytes.
            byte[] bytHash = hashAlg.ComputeHash(bytValue);
            // Optionally, represent the hash value as a base64-encoded string, 
            // For example, if you need to display the value or transmit it over a network.
            return Convert.ToBase64String(bytHash);
        }


        public static app_user Login(string email, string freeTxtPwd)
        {
            app_user au = new app_user(email);
            au.UserId = 0;
            au.FirstName = "new";
            au.LastName = "password";
            au.HashedPwd = CreatePasswordHash(au.Salt, freeTxtPwd);
            

            //create sql connection object
            //gets con string from web.config
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SE256_PaquinConnectionString2"].ConnectionString);
            //create sql command
            //type as stored procedure
            //give stored proc name 
            SqlCommand cmd = new SqlCommand("users_getuser", cn);
            // Mark the Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;
            // Add Parameters to Stored Procedure
            SqlParameter pUserName = new SqlParameter("@user_email", SqlDbType.VarChar, 100);
            pUserName.Value = email;
            cmd.Parameters.Add(pUserName);


            //instantiate return type
            DataTable dt = new DataTable();

            // Open the database connection and execute the command
            try
            {
                cn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                //process errors here
                Console.Write(ex);
            }
            finally
            {
                cn.Close();
            }

            // Return the dataset
            au.ValidLogin = true;
            return au;




        }

        private static DataTable GetUser(string email)
        {
            //create sql connection object
            //gets con string from web.config
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SE256_PaquinConnectionString2"].ConnectionString);
            
            //create sql command
            //type as stored procedure
            //give stored proc name 
            SqlCommand cmd = new SqlCommand("users_getuser", cn);
            // Mark the Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;
            // Add Parameters to Stored Procedure
            SqlParameter pUserName = new SqlParameter("@user_email", SqlDbType.VarChar, 50);
            pUserName.Value = email;
            //cmd.Parameters.Add(pUserName);


            //instantiate return type
            DataTable dt = new DataTable();

            // Open the database connection and execute the command
            try
            {
                cn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                //process errors here
                Console.Write(ex);
                
            }
            finally
            {
                cn.Close();
            }

            // Return the dataset
            return dt;
        }



        #endregion

        #region properties

        public int UserId { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string Salt { get; set; }

        public string HashedPwd { get; set; }

        public bool ValidLogin { get; set; }

        #endregion
    }
}