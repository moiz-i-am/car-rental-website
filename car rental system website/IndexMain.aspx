<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexMain.aspx.cs" Inherits="car_rental_system_website.IndexMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Main</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="css/IndexMainStyle.css"/>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
    <div>
    


        <nav class="navbar navbar-inverse" style="margin:0px;border-radius:0px">
            <div class="container-fluid">
                <div class="navbar-header">
                  <a class="navbar-brand" href="#">Vehicle Rental System</a>
                </div>
                <ul class="nav navbar-nav">
                  <li class="nav-item" style="padding-right:10px">
                    <asp:LinkButton id="LinkButtonMain" Text="Home" forecolor="white" OnClick="LinkButtonMain_Click" runat="server"/>
                  </li>
                  <li class="nav-item" style="color:white;padding-right:10px">
                      <asp:LinkButton id="LinkButtonCars" Text="Cars" forecolor="#9A9DA0" OnClick="btnCars_Click" runat="server"/>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Cart</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                  </li>
                  <li class="nav-item" style="color:white;padding-right:10px">
                    <asp:LinkButton id="btnLinkFind" Text="Find Booking" forecolor="#9A9DA0" OnClick="btnLinkFind_Click" runat="server"/>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                  </li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color:#9A9DA0">USER DETAILS<span class="caret"></span></a>
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
        </nav>


        <div class="image-top">
            <asp:Image ID="Image" runat="server" Height="800px" ImageUrl="~/assets/Land-Rover-Range-Rover-Car-HD-Wallpapers.jpg" Width ="100%"/>
        </div>

        <!-- get our best offer section start-->
				<section class="get-bestoffer">

					<div class="container">
						<div class="row">
							<h2>Get our <span>best offers</span></h2>
							<div class="get-left col-xs-12 col-sm-4">
								<ul style="list-style:none">
									<li>
										<div class="clearfix">
											<span class="offer-icon"><i class="fa fa-car" aria-hidden="true"></i></span>
											<div class="offer-details">
												<h3>Featured Luxury Cars</h3>
												<div class="divider-dotted">

												</div>
												<p>
													Lorem ipsum dolor sit amet, onsectetuer adipiscing elitcommodo ligula eget dolor. Aenean massa. Cum sociis natoque tibus et magnis dis parturient montes.
												</p>
											</div>
										</div>
									</li>

									<li>
										<div class="clearfix">
											<span class="offer-icon"> <i class="fa fa-briefcase" aria-hidden="true"></i></span>
											<div class="offer-details">
												<h3>Insurance Included</h3>
												<div class="divider-dotted">

												</div>
												<p>
													Lorem ipsum dolor sit amet, onsectetuer adipiscing elitcommodo ligula eget dolor. Aenean massa. Cum sociis natoque tibus et magnis dis parturient montes.
												</p>
											</div>
										</div>
									</li>
									<li>
										<div class="clearfix">
											<span class="offer-icon"><i class="fa fa-binoculars" aria-hidden="true"></i></span>
											<div class="offer-details">
												<h3>Available 12 640 Cars</h3>
												<div class="divider-dotted">

												</div>
												<p>
													Lorem ipsum dolor sit amet, onsectetuer adipiscing elitcommodo ligula eget dolor. Aenean massa. Cum sociis natoque tibus et magnis dis parturient montes.
												</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="col-xs-12 col-sm-4 text-center car-center-pic">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/assets/2016-Volvo-XC90-top-view1.jpg" />
							</div>
							<div class="get-left get-right text-right col-xs-12  col-sm-4">
								<ul style="list-style:none">
									<li>
										<div class="clearfix">
											<span class="offer-icon"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
											<div class="offer-details">
												<h3>Any Locations Rent</h3>
												<div class="divider-dotted">

												</div>
												<p>
													Lorem ipsum dolor sit amet, onsectetuer adipiscing elitcommodo ligula eget dolor. Aenean massa. Cum sociis natoque tibus et magnis dis parturient montes.
												</p>
											</div>
										</div>
									</li>
									<li>
										<div class="clearfix">
											<span class="offer-icon"><i class="fa fa-tint" aria-hidden="true"></i></span>
											<div class="offer-details">
												<h3>Cleaning Included</h3>
												<div class="divider-dotted">

												</div>
												<p>
													Lorem ipsum dolor sit amet, onsectetuer adipiscing elitcommodo ligula eget dolor. Aenean massa. Cum sociis natoque tibus et magnis dis parturient montes.
												</p>
											</div>
										</div>
									</li>
									<li>
										<div class="clearfix">
											<span class="offer-icon"><i class="fa fa-life-saver" aria-hidden="true"></i></span>
											<div class="offer-details">
												<h3>Online 24 / 7 Support</h3>
												<div class="divider-dotted">

												</div>
												<p>
													Lorem ipsum dolor sit amet, onsectetuer adipiscing elitcommodo ligula eget dolor. Aenean massa. Cum sociis natoque tibus et magnis dis parturient montes.
												</p>
											</div>
										</div>
									</li>
								</ul>
							</div>

						</div>
					</div>
				</section>


        <!-- rental vehicles section start here -->
				<section class="rental-vehicles">
					<div class="container">
						<div class="row">
							<h2>Rental <span>Vehicles</span></h2>
							<p>
								Lorem ipsum dolor sit amet, onsectetuer adipiscing elitcommodo ligula eget dolor .
							</p>
							<p>
								Aenean massa. Cum sociis natoque tibus et magnis dis parturient montes.
							</p>
							<div class="type-of-vehicle clearfix">
								<div class="row">
									<div class="col-sm-2 col-sm-offset-1">
										<div class="vehicle-item">

											<figure>
												<div class="vehicle">&nbsp;<asp:Image ID="Image6" runat="server" height="61px" ImageUrl="~/assets/vehicle.png" />
												</div>
												<figcaption>
													Scooters &amp; Bikes
												</figcaption>
											</figure>
										</div>
									</div>
									<div class="col-sm-2 ">
										<div class="vehicle-item">

											<figure>
												<div class="vehicle">&nbsp;<asp:Image ID="Image2" runat="server" height="60px" ImageUrl="~/assets/vehicles2.png" />
												</div>
												<figcaption>
													Personal Cars
												</figcaption>
											</figure>
										</div>
									</div>
									<div class="col-sm-2 ">
										<div class="vehicle-item">

											<figure>
												<div class="vehicle">&nbsp;<asp:Image ID="Image3" runat="server" height="60px" ImageUrl="~/assets/vehicles3.png" />
												</div>
												<figcaption>
													SUVS &amp; Pickups
												</figcaption>
											</figure>
										</div>
									</div>
									<div class="col-sm-2 ">
										<div class="vehicle-item">

											<figure>
												<div class="vehicle">&nbsp;<asp:Image ID="Image4" runat="server" height="61px" ImageUrl="~/assets/vehicles4.png" />
												</div>
												<figcaption>
													Family Cars
												</figcaption>
											</figure>
										</div>
									</div>
									<div class="col-sm-2 ">
										<div class="vehicle-item">

											<figure>
												<div class="vehicle">&nbsp;<asp:Image ID="Image5" runat="server" height="61px" ImageUrl="~/assets/vehicles5.png" />
												</div>
												<figcaption>
													Vans &amp; Trucks
												</figcaption>
											</figure>
										</div>
									</div>
								</div>
							</div>
                        </div>
                        <hr />
                    </div>
                </section>

                
                
                <section class="contact-us-wrapper">
					<div class="container">
						<h2>Contact <span>Us</span></h2>
                        <hr />
						<div class="contact-us">
							<div id="contact-form" class="contact-form" data-ng-controller='themeonCtrl'>
								<div class="row">

									<div class="col-sm-4">
										<div class="input-text-wrap">
                                            <asp:Label ID="lblMessageId" runat="server" Text="Label"></asp:Label>
											&nbsp;<asp:TextBox ID="txtName" runat="server" height="50px" Width="350px" BackColor="#6C493F" Text="Name"></asp:TextBox>
											<i class="fa fa-user" aria-hidden="true"></i>
										</div>
										<div class="input-text-wrap">
											&nbsp;<asp:TextBox ID="txtEmail" runat="server" height="50px" Width="350px" BackColor="#6C493F" Text="Email"></asp:TextBox>
											<i class="fa fa-envelope" aria-hidden="true"></i>
										</div>
										<div class="input-text-wrap">
											&nbsp;<asp:TextBox ID="txtSubject" runat="server" height="50px" Width="350px" BackColor="#6C493F" Text="Subject"></asp:TextBox>
											<i class="fa fa-dot-circle-o" aria-hidden="true"></i>
										</div>

									</div>
									<div class="col-sm-8">
										<div class="textarea-wrap">
											&nbsp;<asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" height="200px" Width="70%" Text="Message" BackColor="#6C493F"></asp:TextBox>
											<i class="fa fa-pencil" aria-hidden="true"></i>
										</div>

									</div>

								</div>
								<div class="row">
									<div class="col-sm-4">
										<p>
											Lorem ipsum dolor sit amet, onsectetuer adipiscing elitcommodo ligula eget dolor. Aenean massa.
										</p>
									</div>
									<div class="col-sm-8">
										<asp:Button ID="btnSendMessage" runat="server" height="50px" Width="150px" BackColor="#ECAC4A" Text="Send Message" Font-Bold="true" OnClick="btnSendMessage_Click" />
									</div>
								</div>
							</div>
						<div id="contactSuccess" style="display: none;">
								<span>Hey! Thanks for reaching out. I will get back to you soon</span>
							</div>
						</div>
                        <hr />
                        <div class="help-label">
						<strong class="some-help">Need Some Help?</strong>
                        </div>
					</div>
		        </section>

                <section class="need-help-wrapper">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div class="need-help">
                                    <asp:Image ID="Image9" runat="server" height="200px" Width="200px" ImageUrl="~/assets/headphones.png" />
									<h2>Need a Help or have a question? <strong> Call Us</strong></h2>
									<a href="callto:88001234567">8 800 12 34 567</a>
								</div>
							</div>
						</div>
                    </div>
                </section>





        <footer class="foot">
            <div class="container">
	            <div class="row">

		            <div class="copy-logo">
			            &nbsp;<p>
                            <asp:Image ID="Image7" runat="server" />
&nbsp;shopy &copy; 2019 your copy right here</p>
		            </div>

		            <div class="lists">
		            <div class="help">
			            <ul>
				            <li><a href="#">about us</a></li>
				            <li><a href="#">contact us</a></li>
				            <li><a href="#">support</a></li>
			            </ul>
		            </div>
		            <div class="help">
			            <ul>
				            <li><a href="#">our feed</a></li>
				            <li><a href="#">terms and condition</a></li>
				            <li><a href="#">our privacy</a></li>
			            </ul>
		            </div>
		            <div class="help">
			            <ul>
				            <li><a href="#">join us</a></li>
				            <li><a href="#">live support</a></li>
			            </ul>
		            </div>
		            </div>


		            <div class="payment">
			            <h3>Payment Methods</h3>
			            <div class="cards">
				            &nbsp;<asp:Image ID="Image8" runat="server" ImageUrl="~/assets/Payment-Images.png" />
			            </div>
		            </div>

	            </div>
            </div>
        </footer>


    </div>
    </form>

</body>
</html>
