using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace car_rental_system_website
{
    public partial class AdminShowMessages : System.Web.UI.Page
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

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            int orderId = int.Parse(txtMessageId.Text);

            
            string custName;
            string custEmail;
            string custSubject;
            string custMessage;
         

            VehicleRentalWebDbEntities vehRent = new VehicleRentalWebDbEntities();
            {
                var message = (from mess in vehRent.Messages
                             //join table in vehRent.Tables on book.Id equals table.Id
                             //join car in vehRent.CARs on book.Id equals car.Id
                               where mess.Id == orderId
                             select new
                             {
                                 MessageId = mess.Id,
                                 CustName = mess.NAME,
                                 CustEmail = mess.EMAIL,
                                 CustSubject = mess.SUBJECT,
                                 CustMessage = mess.MESSAGE1
                                
                             }).FirstOrDefault();

                if (message == null) // error handling if orderId is bad
                    throw new Exception("No such order found."); ;

               
                custName = message.CustName;
                custEmail = message.CustEmail;
                custSubject = message.CustSubject;
                custMessage = message.CustMessage;
            }

           
            lblName.Text = custName;
            lblEmail.Text = custEmail;
            lblSubject.Text = custSubject;
            lblMessage.Text = custMessage;
            
            
        }

    }
}