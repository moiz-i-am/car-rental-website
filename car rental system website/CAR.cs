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
    
    public partial class CAR
    {
        public CAR()
        {
            this.Bookings = new HashSet<Booking>();
        }
    
        public string NAME { get; set; }
        public double Price { get; set; }
        public int YEAR { get; set; }
        public string FUEL { get; set; }
        public string TRANSMITION { get; set; }
        public double KMDRIVEN { get; set; }
        public int Id { get; set; }
    
        public virtual ICollection<Booking> Bookings { get; set; }
    }
}
