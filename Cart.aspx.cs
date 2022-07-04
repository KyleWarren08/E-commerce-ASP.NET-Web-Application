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
    public partial class Cart : System.Web.UI.Page
    {
        //Only the logged in users cart will be shown
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
                    totalPrice = totalPrice + Convert.ToDecimal(item.Cells[4].Text);
                }
                lbTotal.Text = "Total: R " + totalPrice.ToString();
                if (totalPrice == 0)
                {
                    lbNoCart.Text = "There are no items in your cart.";
                }
            }
        }
        //This button redirects to checkout
        protected void Button1_Click(object sender, EventArgs e)
        {           
            Response.Redirect("~/Checkout.aspx");
        }


    }
}