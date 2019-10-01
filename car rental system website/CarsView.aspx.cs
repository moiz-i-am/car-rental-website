using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace car_rental_system_website
{
    public partial class CarsView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (VehicleRentalWebDbEntities vehrentModel = new VehicleRentalWebDbEntities())
            {

                try
                {
                    lblSessionUser.Text = Session["user_name"].ToString();
                }
                catch (Exception ex)
                {
                    Server.Transfer("login.aspx");
                }

                repeater_class.DataSource = vehrentModel.CARs.ToList();
                repeater_class.DataBind();
            }
        }


        public void R1_ItemCommand(Object sender, RepeaterCommandEventArgs e)
        {
            RepeaterItem item = ((Button)e.CommandSource).Parent as RepeaterItem;

            string carId = (item.FindControl("lblCarId") as Label).Text;
            string carName = (item.FindControl("lblVehName") as Label).Text;
            string carPrice = (item.FindControl("lblPrice") as Label).Text;
            string carYear = (item.FindControl("lblYear") as Label).Text;
            string carFuel = (item.FindControl("lblFuel") as Label).Text;
            string carTransmition = (item.FindControl("lblTransmition") as Label).Text;
            string carKmDriven = (item.FindControl("lblKmDriven") as Label).Text;

            Session["carId"] = carId;
            Session["carname"] = carName;
            Session["price"] = carPrice;
            Session["year"] = carYear;
            Session["fuel"] = carFuel;
            Session["transmition"] = carTransmition;
            Session["driven"] = carKmDriven;

            Response.Redirect("BookingForm.aspx");
        }


        protected void LinkButtonMain_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexMain.aspx");
        }


        protected void btnCars_Click(object sender, EventArgs e)
        {
            Response.Redirect("CarsView.aspx");
        }

        protected void btnLinkFind_Click(object sender, EventArgs e)
        {
            Response.Redirect("FindBooking.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }



    }
}