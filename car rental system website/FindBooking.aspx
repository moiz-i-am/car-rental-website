<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FindBooking.aspx.cs" Inherits="car_rental_system_website.FindBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Find Booking</title>

    <link rel="stylesheet" type="text/css" href="css/BookingFormStyle.css"/>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark top">
            <div class="container">
              <a class="navbar-brand" href="#"></a>
                <div class="navbar-header">
                  <a class="navbar-brand" href="#">Vehicle Rental System</a>
                </div>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                  <li class="nav-item" style="padding-top:8px;padding-right:10px">
                    <asp:LinkButton id="LinkButtonMain" Text="Home" forecolor="#9A9DA0" OnClick="LinkButtonMain_Click" runat="server"/>
                  </li>
                  <li class="nav-item" style="color:white;padding-top:8px;padding-right:10px">
                      <asp:LinkButton id="LinkButtonCars" Text="Cars" forecolor="#9A9DA0" OnClick="btnCars_Click" runat="server"/>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Cart</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                  </li>
                  <li class="nav-item" style="color:white;padding-top:8px;padding-right:10px;text-decoration:none">
                    <asp:LinkButton id="btnLinkFind" Text="Find Booking" forecolor="white" OnClick="btnLinkFind_Click" runat="server"/>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                  </li>
                    <li class="dropdown" style="color:#9A9DA0;padding-top:8px;padding-left:5px"><a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color:#9A9DA0">USER DETAILS<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li>
                              USER NAME: 
                              <asp:Label ID="lblSessionUser" runat="server" Text=""></asp:Label>
                          </li>
                          <li style="width:100%;text-align:center">
                              <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
                          </li>
                    
                        </ul>
                    </li>
                </ul>
              </div>
            </div>
        </nav>


    </div>
        <div class="search-bar" style="text-align:center;margin-top:30px">
            <asp:Label ID="Label1" runat="server" Text="Enter Booking Id: "></asp:Label>
            <asp:TextBox ID="txtBookingId" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnSearch" runat="server" Text="Button" style="margin-top:10px" OnClick="btnSearch_Click1"/>
        </div>
        <div class ="main-details-wrap" style="text-align:center;margin-top:20px">
            <br />
            Booking ID: 
            <asp:Label ID="lblID" runat="server" Text=""></asp:Label>
            <br />
            Rent Date: 
            <asp:Label ID="lblRentDate" runat="server" Text=""></asp:Label>
            <br />
            Return Date: 
            <asp:Label ID="lblReturnDate" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <br />
             Customer DETAILS: 
            <br />
            <br />
            Customer Name: 
            <asp:Label ID="lblCustName" runat="server" Text=""></asp:Label>
            <br />
            Customer Cinc: 
            <asp:Label ID="lblCustCnic" runat="server" Text=""></asp:Label>
            <br />
            Customer Gender: 
            <asp:Label ID="lblCustGender" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <br />
            CAR DETAILS: 
            <br />
            <br />
            Car Name: 
            <asp:Label ID="lblCarName" runat="server" Text=""></asp:Label>
            <br />
            Car Price: 
            <asp:Label ID="lblCarPrice" runat="server" Text=""></asp:Label>
            <br />
            Car Fuel: 
            <asp:Label ID="lblCarFuel" runat="server" Text=""></asp:Label>
            <br />
            Car Transmition: 
            <asp:Label ID="lblCarTransmition" runat="server" Text=""></asp:Label>
        </div>
    </form>

    <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
