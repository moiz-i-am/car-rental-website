using car_rental_system_website.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace car_rental_system_website
{
    public partial class AdminAdminAdder : System.Web.UI.Page
    {

        UserManager admin = new UserManager();

        private void InsertAdminInfo(int id, string name, string password, float cnic, string address, string dob, string gender)
        {
            UserManager userMgr = new UserManager();
            userMgr.AddAdmins(id, name, password, cnic, address, dob, gender);
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            lblId.Text = admin.adminIDIncrementer().ToString();
            try
            {
                lblAdminName.Text = Session["user_name"].ToString();
            }
            catch (Exception ex)
            {
                Server.Transfer("LoginAdmin.aspx");
            }
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            InsertAdminInfo(
                        int.Parse(lblId.Text),
                        txtName.Text,
                        txtPassword.Text,
                        float.Parse(txtCnic.Text),
                        txtAddress.Text,
                        txtDOB.Text,
                        txtGender.Text
                );
            lblMessage.Text = "Data Inserted!";

            Response.Redirect("AdminAdminAdder.aspx");

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            string adminName = txtName.Text;

            using (var context = new VehicleRentalWebDbEntities())
            {
                var itemToRemove = context.Admins.SingleOrDefault(x => x.NAME == adminName); //returns a single item.

                if (itemToRemove != null)
                {
                    context.Admins.Remove(itemToRemove);
                    context.SaveChanges();
                }
            }

            lblMessage.Text = "Data deleted!";
        }



    }
}