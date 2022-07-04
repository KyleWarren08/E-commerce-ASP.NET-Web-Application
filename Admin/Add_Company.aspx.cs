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
    public partial class Add_Company : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //The entries in the database will bind themselves to the table when the page is loaded.
                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string query = "SELECT * FROM [Company]";
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
                                lbNoSearch.Text = "No company found.";
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

        //This button will add companies to the database.
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                connection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "INSERT INTO [Company](COMPANY_NAME, COMPANY_DESCRIPTION) VALUES (@Comp_Name, @Comp_Description)";
                cmd.Parameters.AddWithValue("@Comp_Name", txtCompanyName.Text);
                cmd.Parameters.AddWithValue("@Comp_Description", txtCompanyDescription.Text);
                cmd.Connection = connection;
                int response = cmd.ExecuteNonQuery();
                if (response > 0)
                {
                    GridView1.DataBind();
                    lbResponse.Text = "The Company has been succesfully added.";
                    Page.Response.Redirect(Page.Request.Url.ToString(), true);
                }
            }
            catch (Exception e1)
            {
                Response.Write("<script>alert('" + e1.Message + "')</script>");
            }
        }

        //This button will search for campanies with a spesified name.
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string query = "SELECT * FROM [Company] WHERE COMPANY_NAME=@Comp_Name or @Comp_Name=''";
                SqlCommand cmd = new SqlCommand(query);
                cmd.Parameters.AddWithValue("@Comp_Name", txtSearch.Text);
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
                                lbNoSearch.Text = "No company found.";
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

        //This button refreshes the page to view all.
        protected void Button3_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        //This is the delete method to delete entries
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Company WHERE ID='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}