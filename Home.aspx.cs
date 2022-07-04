using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace E_commerce_Web_Application_19001700
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //When the page is loaded the gridview will be bound to the data in the database
                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string query = "SELECT * FROM [Products]";
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
                            DataList1.DataSource = ds;
                            DataList1.DataBind();

                            DataList data = DataList1;
                            if (data.Items.Count == 0)
                            {
                                lbNoSearch.Text = "No products found.";
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

        //This is the methode used to control the catergory search feature.
        protected void ddlCatergory_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string query = "SELECT * FROM [Products] where PRODUCT_CATERGORY_ID=@Prod_Cat or @Prod_Cat=''";
                SqlCommand cmd = new SqlCommand(query);
                cmd.Parameters.AddWithValue("@Prod_Cat", ddlCatergory.SelectedItem.Text.ToString());
                using (SqlConnection con = new SqlConnection(conString))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataSet ds = new DataSet())
                        {
                            sda.Fill(ds);
                            DataList1.DataSource = ds;
                            DataList1.DataBind();

                            DataList data = DataList1;
                            if (data.Items.Count == 0)
                            {
                                lbNoSearch.Text = "No products found.";
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


        //This button cuases the page to refresh which reloads the table.
        protected void Button1_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        //This button allows users to search for different products in the database (search by name)
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string query = "SELECT * FROM [Products] WHERE PRODUCT_NAME=@Prod_Name or @Prod_Name=''";
                SqlCommand cmd = new SqlCommand(query);
                cmd.Parameters.AddWithValue("@Prod_Name", txtSearch.Text);
                using (SqlConnection con = new SqlConnection(conString))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataSet ds = new DataSet())
                        {
                            sda.Fill(ds);
                            DataList1.DataSource = ds;
                            DataList1.DataBind();

                            DataList data = DataList1;
                            if (data.Items.Count == 0)
                            {
                                lbNoSearch.Text = "No products found.";
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
    }
}

