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
    public partial class Checkout : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            decimal totalPrice = 0;
            if (Session["email"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                foreach (GridViewRow item in GridView1.Rows)
                {
                    totalPrice = totalPrice + Convert.ToDecimal(item.Cells[2].Text);
                }
                lbTotal.Text = "Total: R " + totalPrice.ToString();
            }
        }

        public Checkout()
        {
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        }
        //Orders inserting method
        private void InsertIntoOrders(DataTable dataTable)
        {
            connection.Close();
            connection.Open();
            cmd.CommandText = "INSERT INTO [Orders](PRODUCT_NAME, PRODUCT_CATERGORY, EMAIL, QUANTITY, PRODUCT_PRICE, PRODUCT_ID, ORDER_DATE) " +
                "VALUES(@Prod_Name, @Prod_Cat, @Email0, @Quantity, @Prod_Price, @Prod_ID, @Order_Date)";
            cmd.Connection = connection;
            foreach (DataRow dr in dataTable.Rows)
            {
                cmd.Parameters.AddWithValue("@Prod_Name", dr["PRODUCT_NAME"]);
                cmd.Parameters.AddWithValue("@Prod_Cat", dr["PRODUCT_CATERGORY"]);
                cmd.Parameters.AddWithValue("@Email0", dr["EMAIL"]);
                cmd.Parameters.AddWithValue("@Quantity", dr["QUANTITY"]);
                cmd.Parameters.AddWithValue("@Prod_Price", dr["PRODUCT_PRICE"]);
                cmd.Parameters.AddWithValue("@Prod_ID", dr["PRODUCT_ID"]);
                cmd.Parameters.AddWithValue("@Order_Date", DateTime.Now.ToString());
                cmd.ExecuteNonQuery();
            }
            connection.Close();
        }

        //disposing of items in cart once order has taken place
        private void CartDispose()
        {
            connection.Open();
            cmd.CommandText = "DELETE  FROM [Cart] WHERE EMAIL=@email1";
            cmd.Connection = connection;
            cmd.Parameters.AddWithValue("@email1", Session["Email"].ToString());
            cmd.ExecuteNonQuery();
        }

        //redirects to succesful payment
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                cmd.CommandText = "SELECT * FROM [CART] WHERE EMAIL=@email";
                cmd.Connection = connection;
                cmd.Parameters.AddWithValue("@email", Session["Email"].ToString());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                InsertIntoOrders(ds.Tables[0]);
                CartDispose();

                Response.Redirect("~/Payment_Succesful.aspx");
            }
            catch (Exception e1)
            {
                Response.Write("<script>alert('" + e1.Message + "')</script>");
            }
        }
    }
}