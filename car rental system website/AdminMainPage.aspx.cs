using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace car_rental_system_website
{
    public partial class AdminMainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                lblAdminName.Text = Session["user_name"].ToString();
            }
            catch (Exception ex)
            {
                Server.Transfer("LoginAdmin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LoginAdmin.aspx");
        }

        protected void btnCars_Click(object sender, EventArgs e)
        {
            Session["user_name"] = lblAdminName.Text;
            Response.Redirect("AdminCarsAdder.aspx");
        }


        protected void btnAdmins_Click(object sender, EventArgs e)
        {
            Session["user_name"] = lblAdminName.Text;
            Response.Redirect("AdminAdminAdder.aspx");
        }

        protected void btnCustomers_Click(object sender, EventArgs e)
        {
            Session["user_name"] = lblAdminName.Text;
            Response.Redirect("AdminCustomerManager.aspx");
        }

        protected void btnMessages_Click(object sender, EventArgs e)
        {
            Session["user_name"] = lblAdminName.Text;
            Response.Redirect("AdminShowMessages.aspx");
        }
    }
}