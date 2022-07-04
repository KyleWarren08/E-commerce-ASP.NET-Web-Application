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
    public partial class User_Select : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //The entries in the database will bind themselves to the table when the page is loaded
                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string query = "SELECT * FROM [Register]";
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
                                lbNoSearch.Text = "No users found.";
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



        //This button allows for users to be searched by email
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string query = "SELECT * FROM [Register] WHERE Email=@email1 or @email1=''";
                SqlCommand cmd = new SqlCommand(query);
                cmd.Parameters.AddWithValue("@email1", txtSearch.Text);
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
                                lbNoSearch.Text = "No users found.";
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

        //This method allows different user roles to be filtered
        protected void ddlCatergory_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string query = "SELECT * FROM [Register] WHERE ROLE=@role or @role=''";
                SqlCommand cmd = new SqlCommand(query);
                cmd.Parameters.AddWithValue("@role", ddlCatergory.SelectedItem.Text.ToString());
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
                                lbNoSearch.Text = "No users found.";
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

        //This button refreshes the page so that all items can be viewed
        protected void Button3_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        //This method is responsible for the delete function
        protected void Gridview1_RowDelete(object sender, GridViewDeleteEventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Register WHERE ID='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}