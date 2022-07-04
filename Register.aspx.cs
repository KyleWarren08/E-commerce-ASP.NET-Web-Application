using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

namespace E_commerce_Web_Application_19001700
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Password is hashed so that it cannot be seen in the database.
        String hash = "f4is@hm"; 
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String Password = txtPassword.Text;
                String hashedPassword;

                byte[] data = Encoding.ASCII.GetBytes(Password);
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

                string email = string.Empty;
                //Connecting to the database.
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                connection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = connection;
                cmd.CommandText = "Select * from [Register] where EMAIL = @email";
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);

                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    email = rd["Email"].ToString();
                    break;
                }
                if (email == txtEmail.Text)
                {
                    lbResult.Text = "This email has already been used.";
                    lbResult.ForeColor = Color.Red;
                }
                else
                {
                    connection.Close();
                    connection.Open();
                    cmd.CommandText = "Insert into [Register](NAME, EMAIL, PASSWORD, ROLE)" +
                                      "Values(@valName, @valEmail, @valPassword, @valRole)";

                    //Parameters help defend against SQLinjection attacks.
                    cmd.Parameters.AddWithValue("@valName", txtName.Text);
                    cmd.Parameters.AddWithValue("@valEmail", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@valPassword", hashedPassword);
                    if (txtName.Text.StartsWith("admin "))
                    {
                        //Admins will need to add the word admin infront of there name to get the admin role.
                        cmd.Parameters.AddWithValue("@valRole", "Admin");
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@valRole", "User");
                    }

                    int result = cmd.ExecuteNonQuery();
                    //If the data was successfully saved display this message.
                    if (result > 0)
                    {
                        lbResult.Text = "You Have Been Registered";
                        lbResult.ForeColor = Color.Green;
                    }
                }
            }
            catch (Exception e1)
            {
                Response.Write("<script>alert('" + e1.Message + "')</script>");
            }
        }
    }
}