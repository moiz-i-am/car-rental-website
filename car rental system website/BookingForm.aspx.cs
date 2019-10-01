using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using car_rental_system_website.Models;

namespace car_rental_system_website
{
    public partial class BookingForm : System.Web.UI.Page
    {
        VehicleRentalWebDbEntities vehdb = new VehicleRentalWebDbEntities(); 
        UserManager user = new UserManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblBookId.Text = user.bookingIDIncrementer().ToString();

            if (Session["carId"] != null)
            {
                lblCarId.Text = Session["carId"].ToString();
            }
            if (Session["carname"] != null)
            {
                lblVehName.Text = Session["carname"].ToString();
            }
            if (Session["price"] != null)
            {
                lblPrice.Text = Session["price"].ToString();
            }
            if (Session["year"] != null)
            {
                lblYear.Text = Session["year"].ToString();
            }
            if (Session["fuel"] != null)
            {
                lblFuel.Text = Session["fuel"].ToString();
            }
            if (Session["transmition"] != null)
            {
                lblTransmition.Text = Session["transmition"].ToString();
            }
            if (Session["driven"] != null)
            {
                lblKmDriven.Text = Session["driven"].ToString();
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {     
            DateTime returnn = Calendar1.SelectedDate;
            lblTodayDate.Text = DateTime.Today.Date.Day + "-" + DateTime.Today.Date.Month + "-" + DateTime.Today.Date.Year;
            lblReturnDate.Text = returnn.Date.Day + "-" + returnn.Date.Month + "-" +returnn.Date.Year; 
        }

        protected void btnCustSearch_Click(object sender, EventArgs e)
        {
             int orderId;
             string customerName;
             float cnic;
             string gender;
            
            if (int.TryParse(txtCustId.Text, out orderId))
            {
                 using (var myEntities = new VehicleRentalWebDbEntities())
                 {
                     var orderInfo = (
                         from Tables in myEntities.Tables
                         where Tables.Id == orderId
                         select new { CustomerName = Tables.NAME, CustomerCnic = Tables.CNIC, CustomerGender = Tables.GENDER }
                         ).SingleOrDefault();
                     if (orderInfo == null) // error handling if orderId is bad
                      throw new Exception("no record found");
                     customerName = orderInfo.CustomerName;
                     cnic = (float)orderInfo.CustomerCnic;
                     gender = orderInfo.CustomerGender;
                 }

                 // update controls
                 lblCustName.Text = customerName;
                 lblCustCnic.Text = cnic.ToString();
                 lblCustGender.Text = gender;
            }

            else{
                lblCustSuccess.Text = "Please enter your id and try again!!!";
            }
           
        }

        private void InsertBookingInfo(int id, int custId, int carId, string rentDate, string returnDate)
        {
            UserManager userMgr = new UserManager();
            userMgr.AddBooking(id, custId, carId, rentDate, returnDate);
        }

        protected void btnBooking_Click(object sender, EventArgs e)
        {
            InsertBookingInfo(
                        int.Parse(lblBookId.Text),
                        int.Parse(txtCustId.Text),
                        int.Parse(lblCarId.Text),
                        lblTodayDate.Text,
                        lblReturnDate.Text
                );
            successLabel.Text = "Data Inserted!";
        }

        
    }
}