<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarsView.aspx.cs" Inherits="car_rental_system_website.CarsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cars</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="css/CarsViewStyle.css"/>
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
                      <asp:LinkButton id="LinkButtonCars" Text="Cars" forecolor="white" OnClick="btnCars_Click" runat="server"/>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Cart</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                  </li>
                  <li class="nav-item" style="color:white;padding-top:8px;padding-right:10px">
                    <asp:LinkButton id="btnLinkFind" Text="Find Booking" forecolor="#9A9DA0" OnClick="btnLinkFind_Click" runat="server"/>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                  </li>
                    <li class="dropdown" style="color:#9A9DA0;padding-top:8px"><a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color:#9A9DA0">USER DETAILS<span class="caret"></span></a>
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


        <section class="all-vehcles-filter">
					<div class="container">
						<div class="filter clearfix">
						<h4> Filter By </h4>
                        &nbsp;<asp:DropDownList ID="drpBodyType" runat="server" >
                            <asp:ListItem>Body Type</asp:ListItem>
                            <asp:ListItem>Non-Roof</asp:ListItem>
                            <asp:ListItem>Roof top</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;<asp:DropDownList ID="drpEngineType" runat="server">
                            <asp:ListItem>Engine Type</asp:ListItem>
                            <asp:ListItem>Simple</asp:ListItem>
                            <asp:ListItem>Turbo</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;<asp:DropDownList ID="drpTransmition" runat="server">
                            <asp:ListItem>Transmition</asp:ListItem>
                            <asp:ListItem>Automatic</asp:ListItem>
                            <asp:ListItem>Manual</asp:ListItem>
                        </asp:DropDownList>		
					</div>
				</div>
		</section>

		<div class="main-vehicles-wrap">
			<div class="container">
					<div class="row po-rel pattern">
						<div class="col-xs-12 col-sm-8 col-md-9">
							<div class="row">
                                <div class="row filter-cars" style="margin-right:0;margin-left:0">
                                    <asp:Repeater ID="repeater_class" OnItemCommand="R1_ItemCommand" runat="server">
                                        <ItemTemplate>
		    							    <div class="col-sm-6 col-md-4">
			    								<div class="filter-inner">
				    								&nbsp;<div class="filter-widgets">
					    								<asp:Image ID="Image1" runat="server" ImageUrl="~/assets/car9.jpg" />
<%--						    							<strong> <a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-refresh" aria-hidden="true"></i></a> <a class="fancybox-button" data-fancybox-group="fancybox-button" href="assets/images/car1.jpg" title=""><i class="fa fa-search-plus" aria-hidden="true"></i></a> </strong>--%>
							    					</div>
								    			</div>
									    		<div class="filter-car-details clearfix">
                                                    <asp:Label ID="lblCarId" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                                                    <br />
										    		<asp:Label ID="lblVehName" runat="server" Text='<%#Eval("NAME") %>'></asp:Label>
											    	<ul class="filter-car-rating clearfix" style="list-style:none;padding-left:0">
													    <li style="float:left">
														    <i class="fa fa-star" aria-hidden="true"></i>
													    </li>
													    <li style="float:left">
														    <i class="fa fa-star" aria-hidden="true"></i>
													    </li>
													    <li style="float:left">
														    <i class="fa fa-star" aria-hidden="true"></i>
													    </li>
													    <li class="grey-star" style="float:left">
														    <i class="fa fa-star-half-o" aria-hidden="true"></i>
													    </li>
													    <li class="grey-star" >
														    <i class="fa fa-star-o" aria-hidden="true"></i>
													    </li>
												    </ul>
												    <span>Start from <asp:Label ID="lblPrice" runat="server" Text='<%#Eval("Price") %>'></asp:Label> <strong>/ Per day</strong></span>									
											    </div>
											    <ul class="filter-car-more-info clearfix" style="list-style:none;padding-left:0">
												    <li>
													    <i class="fa fa-car" aria-hidden="true" style="float:left;padding-right:10px"></i>
                                                        <asp:Label ID="lblYear" runat="server" Text='<%#Eval("YEAR") %>' style="float:left;padding-right:10px;border-right:1px solid black" ></asp:Label>
                                                    
												    </li>
												    <li>
													    <i class="fa fa-tachometer" aria-hidden="true" style="float:left;padding-right:10px;padding-left:10px"></i>
                                                        <asp:Label ID="lblFuel" runat="server" Text='<%#Eval("FUEL") %>'></asp:Label>
												    </li>
												    <li>
													    <i class="fa fa-cog" aria-hidden="true" style="float:left;padding-right:10px"></i>
                                                        <asp:Label ID="lblTransmition" runat="server" Text='<%#Eval("TRANSMITION") %>' style="float:left;padding-right:16px;border-right:1px solid black"></asp:Label>
                                                    
												    </li>
												    <li>
													    <i class="fa fa-road" aria-hidden="true" style="float:left;padding-right:10px;padding-left:10px"></i>
                                                        <asp:Label ID="lblKmDriven" runat="server" Text='<%#Eval("KMDRIVEN") %>'></asp:Label>
												    </li>
												    <li class="orange-btn">
                                                        <asp:Button ID="btnRent" class="btnRent" runat="server" Text="rent now" Width="200px" ForeColor="White" UseSubmitBehavior="false" />
													
												    </li>
											    </ul>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
								</div>
						    </div>    
						
							<div class="row">
								<div class="col-xs-12 col-sm-12">
									<nav class="services-pagination">
										<ul class="pagination">
											<li>
												<a href="#" aria-label="Previous"><i class="fa fa-long-arrow-left" aria-hidden="true"></i><span aria-hidden="true">prev</span></a>
											</li>
											<li>
												<a href="#">1</a>
											</li>
											<li class="active">
												<a href="#">2 <span class="sr-only">(current)</span></a>
											</li>
											<li>
												<a href="#">3</a>
											</li>
											<li>
												<a href="#">4</a>
											</li>
											<li>
												<a href="#" aria-label="Next"><span aria-hidden="true">next</span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
											</li>
										</ul>
									</nav>
								</div>
							</div>

						</div>

							
                        <div class="col-xs-12 col-sm-4 col-md-3">
							<div class="filter-car-aside" style="margin-top:20px">
								<div class="filter-car-selection">
									<h4 style="color:white;padding-top:40px;padding-bottom:20px">Filter Cars</h4>
              				        <asp:DropDownList ID="drpBodyType0" runat="server" Width="80%" Height="40px" >
                                        <asp:ListItem>Body Type</asp:ListItem>
                                        <asp:ListItem>Non-Roof</asp:ListItem>
                                        <asp:ListItem>Roof top</asp:ListItem>
                                    </asp:DropDownList>
                                                <br />
                                    <asp:DropDownList ID="drpYear" runat="server" Width="80%" Height="40px">
                                        <asp:ListItem>Year</asp:ListItem>
                                        <asp:ListItem>2017</asp:ListItem>
                                        <asp:ListItem>2018</asp:ListItem>
                                        <asp:ListItem>2019</asp:ListItem>
                                    </asp:DropDownList>
                                                <br />
                                    <asp:DropDownList ID="drpEngineType0" runat="server" Width="80%" Height="40px">
                                        <asp:ListItem>Engine Type</asp:ListItem>
                                        <asp:ListItem>Simple</asp:ListItem>
                                        <asp:ListItem>Turbo</asp:ListItem>
                                    </asp:DropDownList>
								</div>
								<div class="price-per-day">
									<div class="offer-overlay">
										&nbsp;
									</div>
									<div class="range-wrap">
										<h6 style="color:white;padding-top:10px;padding-bottom:10px">Price Per Day</h6>
										<div id="slider"></div>
				    						<div class="amout-values clearfix">
												<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
											</div>
										</div>
									</div>
									<div class="filter-vehicles-btn"style="padding-top:10px;padding-bottom:10px;border:2px solid #ECAC4A;background-color:#ECAC4A;margin-top:30px">
										<a href="#" class="orange-btn"> <i class="fa fa-filter" aria-hidden="true"></i> Filter Vehicles</a>
									</div>
								</div>

								<div class="vehicles-type">
									<h5 class="view-title-style">Vehicles type</h5>

									<ul class="vehicle-type-list" style="list-style:none">
										<li>
											&nbsp;<asp:CheckBox ID="CheckBox1" runat="server" Text="Scooter &amp; Bikes" />
										</li>
										<li>
											&nbsp;<asp:CheckBox ID="CheckBox2" runat="server" Text="Cars" />
										</li>
										<li>
											&nbsp;<asp:CheckBox ID="CheckBox3" runat="server" Text="SUVS &amp; Pickups" />
										</li>
										<li>
											&nbsp;<asp:CheckBox ID="CheckBox4" runat="server" Text="Family Cars" />
										</li>
										<li>
											&nbsp;<asp:CheckBox ID="CheckBox5" runat="server" Text="Vans &amp; Trucks" />
										</li>
									</ul>
								</div>
								<div class="vehicles-type">
									<h5 class="view-title-style">Engine's type</h5>

									<ul class="vehicle-type-list" style="list-style:none">
										<li>
											&nbsp;<asp:CheckBox ID="CheckBox6" runat="server" Text="Petrol " />
										</li>
										<li>
											&nbsp;<asp:CheckBox ID="CheckBox7" runat="server" Text="Diesel" />
										</li>
										<li>
											&nbsp;<asp:CheckBox ID="CheckBox8" runat="server" Text="Hybrid" />
										</li>
										<li>
											&nbsp;<asp:CheckBox ID="CheckBox9" runat="server" Text="Electrics" />
										</li>

									</ul>
								</div>

								<div class="inner-info-section all-vehicles-contact">
									<div class="contact-info">
										<h5 class="view-title-style">Contact Us</h5>
										<address>
											PO Box: 16122 Collins Victoria 8007 <span class="line-break"></span>
											Address: 121 King Street, Melbourne<span class="line-break"></span>
											Victoria <span class="line-break"></span>
											3000 Australia <span class="line-break"></span>
											Email:<a href="/cdn-cgi/l/email-protection#1578747c79557970616671677c63703b767a78"> <span class="__cf_email__" data-cfemail="fc919d9590bc9099888f988e958a99d29f9391">[email&#160;protected]</span></a><span class="line-break"></span>
											Phone: <a href="tel:88001234567">8 800 12 34 567</a><span class="line-break"></span>
											Fax: <a href="fax:80009876543 ">+8 000 98 76 543 </a><span class="line-break"></span>
										</address>
									</div>
								</div>

							</div>

							<div class="border-line">
								&nbsp;
							</div>

				    </div>
			</div>
		</div>

			
			<!--Content Section End-->


        </div>  
    </form>


    <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
