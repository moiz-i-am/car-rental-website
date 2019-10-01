using car_rental_system_website.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace car_rental_system_website
{
    public partial class login : System.Web.UI.Page
    {
        UserManager user = new UserManager();
        

        private void InsertUserInfo(string name, string email, string password, string gender, float cnic,int Id)
        {
            UserManager userMgr = new UserManager();
            userMgr.AddUsers(name, email, password, gender, cnic, Id);
        }

       
        protected void Page_Load(object sender, EventArgs e)
        {
            lblId.Text = user.regIDIncrementer().ToString();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            InsertUserInfo(
                          txtRegName.Text,
                          txtRegEmail.Text,
                          txtRegPassword.Text,
                          txtGender.Text,
                          float.Parse(txtCnic.Text),
                          int.Parse(lblId.Text)
                          );

            lblMessage.Text = "Data Inserted!";

            txtRegName.Text = "";
            txtRegEmail.Text = "";
            txtRegPassword.Text="";
            txtGender.Text="";
            txtCnic.Text = "";
            lblId.Text="";

            Response.Redirect("login.aspx");

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            using (VehicleRentalWebDbEntities context = new VehicleRentalWebDbEntities())
            {
                var user = context.Tables.FirstOrDefault(u => u.NAME == txtEmail.Text);
                if (user != null)
                {
                    if (user.PASSWORD == txtPassword.Text){
                        Session["user_name"] = txtEmail.Text;
                        Response.Redirect("IndexMain.aspx");
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