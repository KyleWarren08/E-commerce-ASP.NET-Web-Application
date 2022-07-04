using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commerce_Web_Application_19001700
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] !=null)
            {
                btnSignUp.Visible = false;
                btnLogin.Visible = false;
                btnLogOut.Visible = true;
                btnCart.Visible = true;
                btnOrders.Visible = true;
            }
            else
            {
                btnSignUp.Visible = true;
                btnLogin.Visible = true;
                btnLogOut.Visible = false;
                btnCart.Visible = false;
                btnOrders.Visible = false;
            }
            if (Session["Role"] != "Admin")
            {
                btnAdminHome.Visible = false;
            }
            else
            {
                btnAdminHome.Visible = true;
            }
        }

        protected void btnAdminHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/AdminPage.aspx");
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Home.aspx");
        }

        protected void btnCart_Click(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Response.Redirect("~/Cart.aspx");
            }  
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void btnOrders_Click(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Response.Redirect("~/Orders.aspx");
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}