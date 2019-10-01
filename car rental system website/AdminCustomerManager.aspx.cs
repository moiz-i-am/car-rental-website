using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace car_rental_system_website
{
    public partial class AdminCustomerManager : System.Web.UI.Page
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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string custName = txtCustName.Text;

            using (var context = new VehicleRentalWebDbEntities())
            {
                var itemToRemove = context.Tables.SingleOrDefault(x => x.NAME == custName); //returns a single item.

                if (itemToRemove != null)
                {
                    context.Tables.Remove(itemToRemove);
                    context.SaveChanges();
                }
            }

            lblMessage.Text = "Data deleted!";
        }
    }
}