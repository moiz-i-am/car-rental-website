<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookingForm.aspx.cs" Inherits="car_rental_system_website.BookingForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Booking Form</title>

    <link rel="stylesheet" type="text/css" href="css/BookingFormStyle.css"/>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        <nav class="navbar navbar" style="margin:0px;border-radius:0px">
            <div class="container-fluid">
                <div class="navbar-header">
                  <a class="navbar-brand" href="#">Vehicle Rental System</a>
                </div>
                <ul class="nav navbar-nav">
                  <li class="active"><a href="#">Home</a></li>
                  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="#">Page 1-1</a></li>
                      <li><a href="#">Page 1-2</a></li>
                      <li><a href="#">Page 1-3</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Page 2</a></li>
                  <li><a href="#">Page 3</a></li>
                </ul>
            </div>
        </nav>

        <div class="booking-number">
            <div class="container">
            <p>Booking Id is:
                <asp:Label ID="lblBookId" runat="server" Text="Label"></asp:Label>
            </p>
            </div>
        </div>

        <div class="main-booking-wrap">
            <div class="container">

            <div class="booking-wrap">
                <div class="col-sm-6 col-md-4">
		            <div class="filter-cars">
			            <div class="filter-inner">
				            &nbsp;<div class="filter-widgets">
					            <asp:Image ID="Image1" runat="server" ImageUrl="~/assets/car9.jpg" />
				            </div>
			            </div>
			            <div class="filter-car-details clearfix">
                            <asp:Label ID="lblCarId" runat="server" Text=""></asp:Label>
                            <br />
				            <asp:Label ID="lblVehName" runat="server" Text=""></asp:Label>
				            <br/>
				            <span>Price:  <asp:Label ID="lblPrice" runat="server" Text=""></asp:Label></span>									
			            </div>
			            <ul class="filter-car-more-info clearfix" style="list-style:none;padding-left:0">
				            <li>
					            <i class="fa fa-car" aria-hidden="true" style="float:left;padding-right:10px"></i>
                                <asp:Label ID="lblYear" runat="server" Text="" style="float:left;padding-right:10px;border-right:1px solid black" ></asp:Label>
                                                    
				            </li>
				            <li>
					            <i class="fa fa-tachometer" aria-hidden="true" style="float:left;padding-right:10px;padding-left:10px"></i>
                                <asp:Label ID="lblFuel" runat="server" Text=""></asp:Label>
				            </li>
				            <li>
					            <i class="fa fa-cog" aria-hidden="true" style="float:left;padding-right:10px"></i>
                                <asp:Label ID="lblTransmition" runat="server" Text="" style="float:left;padding-right:16px;border-right:1px solid black"></asp:Label>
                                                    
				            </li>
				            <li>
					            <i class="fa fa-road" aria-hidden="true" style="float:left;padding-right:10px;padding-left:10px"></i>
                                <asp:Label ID="lblKmDriven" runat="server" Text=""></asp:Label>
                                <br />
                                <br />
                                <br />
				            </li>       
			            </ul>
                    </div>
                </div>
            </div>



            <div class="customer-wrap" style="float:left">
                <ul style="list-style:none;padding-left:0">
                     <li>
					    Customer Id:
                        <asp:Label ID="lblCustId" runat="server" Text=""></asp:Label>
                         <asp:TextBox ID="txtCustId" runat="server"></asp:TextBox>
                        <br />
                         <asp:Button ID="btnCustSearch" runat="server" Text="Search" OnClick="btnCustSearch_Click" />
                         <br />
                         <br />
                         <br />
                         <br />
				    </li>
                    <li>
                        <asp:Label ID="lblCustSuccess" runat="server" Text=""></asp:Label>
                        <br />
				    </li>
                    <li>
					    Customer Name:
                        <asp:Label ID="lblCustName" runat="server" Text=""></asp:Label>
                        <br />
				    </li>
                    <li>
                        Customer Cnic:
				        <asp:Label ID="lblCustCnic" runat="server" Text=""></asp:Label>
                        <br />
				    </li>
                    <li>
					    Customer Gender:
                        <asp:Label ID="lblCustGender" runat="server" Text=""></asp:Label>
				        <br />
                    </li>
                </ul>
            </div>


            <div class="calander-wrap" style="float:right">
            
                Choose Return Date Here:
                <br />
                <asp:Calendar ID="Calendar1" runat="server" SelectionMode="DayWeekMonth"  onselectionchanged="Calendar1_SelectionChanged" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px"></DayHeaderStyle>

                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC"></NextPrevStyle>

                    <OtherMonthDayStyle ForeColor="#CC9966"></OtherMonthDayStyle>

                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True"></SelectedDayStyle>

                    <SelectorStyle BackColor="#FFCC66"></SelectorStyle>

                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC"></TitleStyle>

                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White"></TodayDayStyle>
                </asp:Calendar>


                <ul style="list-style:none;padding-left:0">
                    <li>
                        <br />
                        <br />
                        <br />
					    Today Date:
                        <asp:Label ID="lblTodayDate" runat="server" Text=""></asp:Label>
				        <br />
                    </li>
                    <li>
					    Return Date:
                        <asp:Label ID="lblReturnDate" runat="server" Text=""></asp:Label>
				        <br />
                    </li>
                </ul>
            

            </div>
            </div>

            <div class="button-booking">
                <div class="container">
                    <asp:Button ID="btnBooking" class="btnStyle" runat="server" Text="Confirm Booking" Width="200px" ForeColor="White" OnClick="btnBooking_Click"/>
                </div>
            </div>


            <asp:Label ID="successLabel" runat="server" Text=""></asp:Label>


        </div>


    </div>
    
    </form>
</body>
</html>
