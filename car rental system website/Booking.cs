//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace car_rental_system_website
{
    using System;
    using System.Collections.Generic;
    
    public partial class Booking
    {
        public int Id { get; set; }
        public int CUSTOMERID { get; set; }
        public int CARID { get; set; }
        public string RENTDATE { get; set; }
        public string RETURNDATE { get; set; }
    
        public virtual CAR CAR { get; set; }
        public virtual Table Table { get; set; }
    }
}
