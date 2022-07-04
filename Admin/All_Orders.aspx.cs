using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commerce_Web_Application_19001700.Admin
{
    public partial class All_Orders : System.Web.UI.Page
    {
        //When the page loads the table gets populated with orders
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string query = "SELECT * FROM [Orders]";
                SqlCommand cmd = new SqlCommand(query);
                using (SqlConnection con = new SqlConnection(conString))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataSet ds = new DataSet())
                        {
                            sda.Fill(ds);
                            GridView1.DataSource = ds;
                            GridView1.DataBind();

                            GridView data = GridView1;
                            if (data.Rows.Count == 0)
                            {
                                lbNoSearch.Text = "No orders found.";
                            }
                            else
                            {
                                lbNoSearch.Text = "";
                            }
                        }

                    }
                }
            }
            catch (Exception e1)
            {
                Response.Write("<script>alert('" + e1.Message + "')</script>");
            }
        }

        //This button refreshes the orders so that all can be viewed 
        protected void Button1_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        //This method allows filtering by catergory
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string query = "SELECT * FROM [Orders] where PRODUCT_CATERGORY=@Prod_Cat or @Prod_Cat=''";
                SqlCommand cmd = new SqlCommand(query);
                cmd.Parameters.AddWithValue("@Prod_Cat", DropDownList1.SelectedItem.Text.ToString());
                using (SqlConnection con = new SqlConnection(conString))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataSet ds = new DataSet())
                        {
                            sda.Fill(ds);
                            GridView1.DataSource = ds;

                            GridView data = GridView1;
                            GridView1.DataBind();
                            if (data.Rows.Count == 0)
                            {
                                lbNoSearch.Text = "No orders found.";
                            }
                            else
                            {
                                lbNoSearch.Text = "";
                            }
                        }
                    }
                }
            }
            catch (Exception e1)
            {
                Response.Write("<script>alert('" + e1.Message + "')</script>");
            }
        }

        //This method allows orders to be deleted
        protected void Gridview1_RowDelete(object sender, GridViewDeleteEventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conString);      
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Orders WHERE ID='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}