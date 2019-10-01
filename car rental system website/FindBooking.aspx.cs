using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace car_rental_system_website
{
    public partial class FindBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                lblSessionUser.Text = Session["user_name"].ToString();
            }
            catch (Exception ex)
            {
                Server.Transfer("login.aspx");
            }
        }

        protected void btnCars_Click(object sender, EventArgs e)
        {
            Response.Redirect("CarsView.aspx");
        }

        protected void LinkButtonMain_Click(object sender, EventArgs e)
        {
            Server.Transfer("IndexMain.aspx");
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





        // linq to joing tables

        protected void btnSearch_Click1(object sender, EventArgs e)
        {
            int orderId = int.Parse(txtBookingId.Text);

            int bookingId;
            string rentDate;
            string returnDate;
            string customerName;
            float cnic;
            string gender;
            string carName;
            float carPrice;
            string carFuel;
            string carTransmition;

            VehicleRentalWebDbEntities vehRent = new VehicleRentalWebDbEntities();
            {
                var books = (from book in vehRent.Bookings
                             //join table in vehRent.Tables on book.Id equals table.Id
                             //join car in vehRent.CARs on book.Id equals car.Id
                             where book.Id == orderId
                             select new
                             {
                                 BookingId = book.Id,
                                 RentDate = book.RENTDATE,
                                 ReturnDate = book.RETURNDATE,
                                 CustName = book.Table.NAME,
                                 CustCnic = book.Table.CNIC,
                                 CustGender = book.Table.GENDER,
                                 CarName = book.CAR.NAME,
                                 CarPrice = book.CAR.Price,
                                 CarFuel = book.CAR.FUEL,
                                 CarTransmition = book.CAR.TRANSMITION
                             }).FirstOrDefault();

                if (books == null) // error handling if orderId is bad
                    throw new Exception("No such order found."); ;

                bookingId = books.BookingId;
                rentDate = books.RentDate;
                returnDate = books.ReturnDate;
                customerName = books.CustName;
                cnic = (Int32)books.CustCnic;
                gender = books.CustGender;
                carName = books.CarName;
                carPrice = (Int32)books.CarPrice;
                carFuel = books.CarFuel;
                carTransmition = books.CarTransmition;

            }

            lblID.Text = bookingId.ToString();
            lblRentDate.Text = rentDate;
            lblReturnDate.Text = returnDate;
            lblCustName.Text = customerName;
            lblCustCnic.Text = cnic.ToString();
            lblCustGender.Text = gender;
            lblCarName.Text = carName;
            lblCarPrice.Text = carPrice.ToString();
            lblCarFuel.Text = carFuel;
            lblCarTransmition.Text = carTransmition;



        }




    }
}