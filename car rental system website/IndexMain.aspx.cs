using car_rental_system_website.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace car_rental_system_website
{
    public partial class IndexMain : System.Web.UI.Page
    {

        UserManager car = new UserManager();

        private void InsertMessageInfo(string name , string email , string subject, string message, int id)
        {
            UserManager userMgr = new UserManager();
            userMgr.AddMessages(name, email, subject, message, id);
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessageId.Text = car.messageIDIncrementer().ToString();
            try
            {
                lblSessionUser.Text = Session["user_name"].ToString();
            }
            catch (Exception ex)
            {
                Server.Transfer("login.aspx");
            }
        }

        protected void LinkButtonMain_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexMain.aspx");
        }

        protected void btnCars_Click(object sender, EventArgs e)
        {
            Session["user_name"] = lblSessionUser.Text;
            Response.Redirect("CarsView.aspx");
        }

        protected void btnLinkFind_Click(object sender, EventArgs e)
        {
            Session["user_name"] = lblSessionUser.Text;
            Response.Redirect("FindBooking.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {


            InsertMessageInfo(         
                        txtName.Text,
                        txtEmail.Text,
                        txtSubject.Text,
                        txtMessage.Text,
                        int.Parse(lblMessageId.Text)
                );
            

           

        }

    }
}