using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace car_rental_system_website
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            using (VehicleRentalWebDbEntities context = new VehicleRentalWebDbEntities())
            {
                var user = context.Admins.FirstOrDefault(u => u.NAME == txtEmail.Text);
                if (user != null)
                {
                    if (user.PASSWORD == txtPassword.Text)
                    {
                        Session["user_name"] = txtEmail.Text;
                        Response.Redirect("AdminMainPage.aspx");
                    }
                    else
                        lblMessageLogin.Text = "User name or password incorrect!";
                }
                else
                {
                    lblMessageLogin.Text = "no user found";

                }
            }

        }


    }
}