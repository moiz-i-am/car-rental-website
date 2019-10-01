using car_rental_system_website.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace car_rental_system_website
{
    public partial class AdminCarsAdder : System.Web.UI.Page
    {
        UserManager car = new UserManager();

        private void InsertCarInfo(int id, string name, float price, int year, string Fuel, string Transmition, float kmDriven)
        {
            UserManager userMgr = new UserManager();
            userMgr.AddCars(id, name, price, year, Fuel, Transmition, kmDriven);
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            lblId.Text = car.carIDIncrementer().ToString();
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
            InsertCarInfo(
                        int.Parse(lblId.Text),
                        txtName.Text,
                        float.Parse(txtPrice.Text),
                        int.Parse(txtYear.Text),
                        drpFuel.Text,
                        drpTransmition.Text,
                        float.Parse(txtKmDriven.Text)
                );
            lblMessage.Text = "Data Inserted!";

            Response.Redirect("AdminCarsAdder.aspx");

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int carName = int.Parse(txtName.Text);

            using (var context = new VehicleRentalWebDbEntities())
            {
                var itemToRemove = context.CARs.SingleOrDefault(x => x.Id == carName); //returns a single item.

                if (itemToRemove != null)
                {
                    context.CARs.Remove(itemToRemove);
                    context.SaveChanges();
                }
            }

            lblMessage.Text = "Data deleted!";
        }

        
    }
}