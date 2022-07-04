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
    public partial class Add_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //When the page is loaded the drop down list is populated.
                if (!Page.IsPostBack)
                {
                    DropDownListCompany();
                }

                //The entries in the database will bind themselves to the table when the page is loaded
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
                            GridView1.DataSource = ds;
                            GridView1.DataBind();

                            GridView data = GridView1;
                            if (data.Rows.Count == 0)
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

        //Populates the drop down list with company names.
        private void DropDownListCompany()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            connection.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM [Company]";
            cmd.Connection = connection;
            SqlDataReader rd = cmd.ExecuteReader();
            ddlCompany.DataSource = rd;
            ddlCompany.DataTextField = "COMPANY_NAME";
            ddlCompany.DataValueField = "ID";
            ddlCompany.DataBind();
            connection.Close();
        }

        //This button adds new products to the database
        protected void Button1_Click(object sender, EventArgs e)
        {
            try{ 
            //Saving the Image file path
            string ImageUpload = string.Empty;
            if (fucProductImage.HasFile)
            {
                fucProductImage.SaveAs(Server.MapPath("~/Saved_Images/" + fucProductImage.FileName));
                ImageUpload = "~/Saved_Images/" + fucProductImage.FileName;
            }

            //Adding the Data to the database
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            connection.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO [Products](PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_PRICE, PRODUCT_IMAGE, PRODUCT_CATERGORY_ID, PRODUCT_COMPANY_ID)" +
                "VALUES(@Product_Name, @Product_Description, @Product_Price, @Product_Image, @Prod_Cat_ID, @Prod_Comp_ID)";
            cmd.Connection = connection;
            cmd.Parameters.AddWithValue("@Product_Name", txtProductName.Text);
            cmd.Parameters.AddWithValue("@Product_Description", txtProductDescription.Text);
            cmd.Parameters.AddWithValue("@Product_Price", txtProductPrice.Text);
            cmd.Parameters.AddWithValue("@Product_Image", ImageUpload);
            cmd.Parameters.AddWithValue("@Prod_Cat_ID", ddlCatergory.SelectedItem.Text.ToString());
            cmd.Parameters.AddWithValue("@Prod_Comp_ID", ddlCompany.SelectedItem.Value);
            int response = cmd.ExecuteNonQuery();

            if (response > 0)
            {
                GridView1.DataBind();
                lbResponse.Text = "Product has been added successfully.";
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
            }
            catch (Exception e1)
            {
                Response.Write("<script>alert('" + e1.Message + "')</script>");
            }

        }

        //This button allows employees to search specific items in the database by using there name.
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
                            GridView1.DataSource = ds;
                            GridView1.DataBind();

                            GridView data = GridView1;
                            if (data.Rows.Count == 0)
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

        //This button refreshes the page so that employees can view all the products in the database
        protected void Button3_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void ddlCatergory0_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string query = "SELECT * FROM [Products] where PRODUCT_CATERGORY_ID=@Prod_Cat or @Prod_Cat=''";
                SqlCommand cmd = new SqlCommand(query);
                cmd.Parameters.AddWithValue("@Prod_Cat", ddlCatergory0.SelectedItem.Text.ToString());
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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Products WHERE ID='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}
