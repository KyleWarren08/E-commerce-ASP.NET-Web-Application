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
    public partial class Product_Description : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ID"] == null)
            {
                Response.Redirect("~/Home.aspx");
            }
        }

        
        //Adds items to cart
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["email"] != null)
                {
                    string prodName = string.Empty;
                    string prodCat = string.Empty;
                    decimal lbPrice = 0;
                    decimal Quantity = Convert.ToDecimal(txtQuantity.Text);
                    foreach (DataListItem item in DataList1.Items)
                    {
                        Label NameLbl = item.FindControl("PRODUCT_NAMELabel") as Label;
                        prodName = NameLbl.Text;
                        Label price = item.FindControl("PRODUCT_PRICELabel") as Label;
                        lbPrice = (Quantity * Convert.ToDecimal(price.Text));
                        Label ProdCat = item.FindControl("PRODUCT_CATERGORY_IDLabel") as Label;
                        prodCat = ProdCat.Text;
                    }
                    SqlConnection connection = new SqlConnection();
                    connection.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                    //Checks if there is already an one item in the cart and will not allow any more than 1 item.
                    SqlDataAdapter da = new SqlDataAdapter("Select EMAIL from Cart where EMAIL ='" + Session["email".ToString()] + "'", connection);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count >= 1)
                    {
                        lbResponse.Text = "*Your Cart is full";
                    }
                    else
                    {
                        connection.Open();
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = "INSERT INTO [Cart](PRODUCT_NAME, PRODUCT_CATERGORY, EMAIL, QUANTITY, PRODUCT_PRICE, PRODUCT_ID)" +
                            "VALUES(@Prod_Name, @Prod_Cat, @Email, @Quantity, @Prod_Price_Total, @Prod_id)";
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@Prod_Name", prodName);
                        cmd.Parameters.AddWithValue("@Prod_Cat", prodCat);
                        cmd.Parameters.AddWithValue("@Email", Session["email"].ToString());
                        cmd.Parameters.AddWithValue("@Quantity", Quantity);
                        cmd.Parameters.AddWithValue("@Prod_Price_Total", lbPrice);
                        cmd.Parameters.AddWithValue("@Prod_id", Request.QueryString["ID"]);

                        int result = cmd.ExecuteNonQuery();
                        if (result > 0)
                        {
                            lbResponse.Text = "Product has been added to your cart.";
                            Response.Redirect("~/Cart.aspx");
                        }
                    }
                }
                else
                {
                    Response.Redirect("~/Login.aspx");
                }
            }
            catch (Exception e1)
            {
                Response.Write("<script>alert('" + e1.Message + "')</script>");
            }
        }

    
        
    }
}