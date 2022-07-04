using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commerce_Web_Application_19001700
{
    public partial class Orders : System.Web.UI.Page
    {
        //Finds the orders for the customer
        protected void Page_Load(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;           
            SqlCommand cmd = new SqlCommand();            
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
        
                        GridView data = GridView1;
                        if (data.Rows.Count == 0)
                        {
                            lbNoOrders.Text = "No orders were found.";
                        }
                        else
                        {
                            lbNoOrders.Text = "";
                        }
                    }
                }
            }
        }
    }
}