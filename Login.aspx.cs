using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commerce_Web_Application_19001700
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Hashing the password to see if it maches the password in the database
        String hash = "f4is@hm";
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                String password = txtPassword.Text;
                String hashedPassword;

                byte[] data = Encoding.ASCII.GetBytes(password);
                //  byte[] data = UTF8Encoding.UTF8.GetBytes(txtValue.Text);
                using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())

                {
                    byte[] keys = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
                    using (TripleDESCryptoServiceProvider tripDes = new TripleDESCryptoServiceProvider()
                    { Key = keys, Mode = CipherMode.ECB, Padding = PaddingMode.PKCS7 })

                    {
                        ICryptoTransform transform = tripDes.CreateEncryptor();
                        byte[] results = transform.TransformFinalBlock(data, 0, data.Length);
                        hashedPassword = Convert.ToBase64String(results, 0, results.Length);
                    }
                }

                string role = string.Empty;
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                connection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = connection;
                cmd.CommandText = "Select * from [Register] where EMAIL = @email and PASSWORD = @password";
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@password", hashedPassword);

                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    role = rd["ROLE"].ToString();
                    Session["email"] = rd["Email"].ToString();
                    Session["name"] = rd["Name"].ToString();
                    break;
                }
                if (role == "Admin")
                {
                    Session["Role"] = "Admin";
                    Response.Redirect("~/Admin/AdminPage.aspx");
                }
                else if (role == "User")
                {
                    Session["Role"] = "User";
                    Response.Redirect("~/Home.aspx");
                }
                else if (string.IsNullOrEmpty(role))
                {
                    lbResult.Text = "User could not be validated please ensure that you use valid credentials to login.";
                }
            }
            catch (Exception e1)
            {
                Response.Write("<script>alert('" + e1.Message + "')</script>");
            }
        }
    }
}