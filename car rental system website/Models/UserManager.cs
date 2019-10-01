using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace car_rental_system_website.Models
{
    public class UserManager
    {
        private VehicleRentalWebDbEntities vehicleDBM = new VehicleRentalWebDbEntities();


        public int regIDIncrementer()
        {
            try
            {
                using (var context = new VehicleRentalWebDbEntities())
                {
                    var customers = context.Tables.OrderByDescending(x => x.Id);

                    if (customers.Count() > 0)
                    {
                        var lastId = customers.FirstOrDefault<Table>();

                        return ++lastId.Id;
                    }
                    else
                        return 0;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void AddUsers(string name, string email, string password, string gender, float cnic,int Id)
        {     
                Table user = new Table();

                user.NAME = name;
                user.EMAIL = email;
                user.PASSWORD = password;
                user.GENDER = gender;
                user.CNIC = cnic;
                user.Id = Id;

                vehicleDBM.Tables.Add(user);
                vehicleDBM.SaveChanges();
        }

        public int carIDIncrementer()
        {
            try
            {
                using (var context = new VehicleRentalWebDbEntities())
                {
                    var customers = context.CARs.OrderByDescending(x => x.Id);

                    if (customers.Count() > 0)
                    {
                        var lastId = customers.FirstOrDefault<CAR>();

                        return ++lastId.Id;
                    }
                    else
                        return 0;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void AddCars(int id, string name, float price, int year, string Fuel, string Transmition, float kmDriven)
        {
            CAR car = new CAR();
            car.Id = id;
            car.NAME = name;
            car.Price = price;
            car.YEAR = year;
            car.FUEL = Fuel;
            car.TRANSMITION = Transmition;
            car.KMDRIVEN = kmDriven;
            vehicleDBM.CARs.Add(car);
            vehicleDBM.SaveChanges();
        }



        public int bookingIDIncrementer()
        {
            try
            {
                using (var context = new VehicleRentalWebDbEntities())
                {
                    var customers = context.Bookings.OrderByDescending(x => x.Id);

                    if (customers.Count() > 0)
                    {
                        var lastId = customers.FirstOrDefault<Booking>();

                        return ++lastId.Id;
                    }
                    else
                        return 0;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }


        public void AddBooking(int id, int custId, int carId, string rentDate, string returnDate)
        {
            Booking booking = new Booking();
            booking.Id = id;
            booking.CUSTOMERID = custId;
            booking.CARID = carId;
            booking.RENTDATE = rentDate;
            booking.RETURNDATE = returnDate;

            vehicleDBM.Bookings.Add(booking);
            vehicleDBM.SaveChanges();
        }




        public int adminIDIncrementer()
        {
            try
            {
                using (var context = new VehicleRentalWebDbEntities())
                {
                    var customers = context.Admins.OrderByDescending(x => x.Id);

                    if (customers.Count() > 0)
                    {
                        var lastId = customers.FirstOrDefault<Admin>();

                        return ++lastId.Id;
                    }
                    else
                        return 0;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void AddAdmins(int id, string name, string password, float cnic , string address, string dob ,string gender)
        {
            Admin admin = new Admin();

            admin.Id = id;
            admin.NAME = name;
            admin.PASSWORD = password;
            admin.CNIC = cnic;
            admin.ADDRESS = address;
            admin.DOB = dob;
            admin.GENDER = gender;

            vehicleDBM.Admins.Add(admin);
            vehicleDBM.SaveChanges();
        }


        public int messageIDIncrementer()
        {
            try
            {
                using (var context = new VehicleRentalWebDbEntities())
                {
                    var customers = context.Messages.OrderByDescending(x => x.Id);

                    if (customers.Count() > 0)
                    {
                        var lastId = customers.FirstOrDefault<Message>();

                        return ++lastId.Id;
                    }
                    else
                        return 0;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void AddMessages(string name, string email, string subject, string message, int id)
        {
            Message user = new Message();
            user.Id = id;
            user.NAME = name;
            user.EMAIL = email;
            user.SUBJECT = subject;
            user.MESSAGE1 = message;
           
            
            vehicleDBM.Messages.Add(user);
            vehicleDBM.SaveChanges();
        }


    }
}