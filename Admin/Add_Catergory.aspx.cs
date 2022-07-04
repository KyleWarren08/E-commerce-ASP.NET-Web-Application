using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commerce_Web_Application_19001700.Admin
{
    //Note the Add Catergory function has not been implemented due to issues, this might change over the development process.
    public partial class Add_Catergory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            connection.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO [Catergories](CATERGORY_NAME, CATERGORY_DESCRIPTION) VALUES (@Cat_Name, @Cat_Description)";
            cmd.Parameters.AddWithValue("@Cat_Name", txtCatergoryName.Text);
            cmd.Parameters.AddWithValue("@Cat_Description", txtCatergoryDescription.Text);
            cmd.Connection = connection;
            int response = cmd.ExecuteNonQuery();
            if (response > 0)
            {               
                lbResponse.Text = "The catergory has been added succesfully.";
            }
        }
    }
}