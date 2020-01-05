﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="StockProduct.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bangla Shop - Home</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    
    <link rel="icon" href="img/Fevicon.png" type="image/png"/>
    <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css"/>
    <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css"/>
    <link rel="stylesheet" href="vendors/themify-icons/themify-icons.css"/>
    <link rel="stylesheet" href="vendors/nice-select/nice-select.css"/>
    <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css"/>

    <link rel="stylesheet" href="css/style.css"/>
    <style>
        body {
            background-image: url(img/banner-bg.jpg);
            background-size: cover;
        }
    </style>
</head>
<body>
    <header class="header_area">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #00ff80;">
        <div class="container">
          <a class="navbar-brand logo_h" href="index.html"><i><span style="color:#cc0000">Stock</span><span style="color:#0066cc"> Product</span></i></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
              <li class="nav-item active"><a class="nav-link" href="index.aspx">Home</a></li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Shop</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="Cetagory.aspx">Category Setup</a></li>
                  <li class="nav-item"><a class="nav-link" href="CompanySetup.aspx">Company Setup</a></li>
                  <li class="nav-item"><a class="nav-link" href="ItemSetup.aspx">Item Setup</a></li>
                  <li class="nav-item"><a class="nav-link" href="StockIn.aspx">Stock In</a></li>
                  <li class="nav-item"><a class="nav-link" href="StockOut.aspx">Stock out</a></li>
                  <li class="nav-item"><a class="nav-link" href="#">Search Item</a></li>
                  <li class="nav-item"><a class="nav-link" href="#">View Sale </a></li>

                </ul>
							</li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Blog</a>
      
							</li>
							<li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Pages</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="#">Login</a></li>
                  <li class="nav-item"><a class="nav-link" href="#">Register</a></li>
                 
                </ul>
              </li>
              <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
            </ul>

            <ul class="nav-shop">
              <li class="nav-item"><button><i class="ti-search"></i></button></li>
              <li class="nav-item"><button><i class="ti-shopping-cart"></i><span class="nav-shop__circle">3</span></button> </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  </header>
	<!--================ End Header Menu Area =================-->

  <main class="site-main">
    
    <!--================ Hero banner start =================-->
   
    <!--================ Hero banner start =================-->
<div style="padding: 400px">
	
</div>
    <!--================ Hero Carousel start =================-->
   
    <!--================ Hero Carousel end =================-->

    <!-- ================ trending product section start ================= -->  
   
    <!-- ================ Subscribe section end ================= --> 

    

  </main>


  <!--================ Start footer Area  =================-->	
	<footer class="footer">
		<div class="footer-area">
			<div class="container">
				<div class="row section_gap">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title large_title">Our Mission</h4>
							<p>
								So seed seed green that winged cattle in. Gathering thing made fly you're no 
								divided deep moved us lan Gathering thing us land years living.
							</p>
							<p>
								So seed seed green that winged cattle in. Gathering thing made fly you're no divided deep moved 
							</p>
						</div>
					</div>
					<div class="offset-lg-1 col-lg-2 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title">Quick Links</h4>
							<ul class="list">
								<li><a href="#">Home</a></li>
								<li><a href="#">Shop</a></li>
								<li><a href="#">Blog</a></li>
								<li><a href="#">Product</a></li>
								<li><a href="#">Brand</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-6 col-sm-6">
						<div class="single-footer-widget instafeed">
							<h4 class="footer_title">Gallery</h4>
							<ul class="list instafeed d-flex flex-wrap">
                                <li><img src="img/gallery/r1.jpg" alt=""/></li>
                                <li><img src="img/gallery/r2.jpg" alt=""/></li>
                                <li><img src="img/gallery/r3.jpg" alt=""/></li>
                                <li><img src="img/gallery/r5.jpg" alt=""/></li>
                                <li><img src="img/gallery/r7.jpg" alt=""/></li>
                                <li><img src="img/gallery/r8.jpg" alt=""/></li>
							</ul>
						</div>
					</div>
					<div class="offset-lg-1 col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title">Contact Us</h4>
							<div class="ml-40">
								<p class="sm-head">
									<span class="fa fa-location-arrow"></span>
									Head Office
								</p>
								<p>Dhanmondi 32,Dhaka</p>
	
								<p class="sm-head">
									<span class="fa fa-phone"></span>
									Phone Number
								</p>
								<p>
                                    +880 1627-560336 <br/>
									+123 456 7890
								</p>
	
								<p class="sm-head">
									<span class="fa fa-envelope"></span>
									Email
								</p>
								<p>
                                    tusharahmed16135@gmail.com<br/>
									www.infoexample.com
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="footer-bottom">
			<div class="container">
				<div class="row d-flex">
					<p class="col-lg-12 footer-text text-center">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made by <i class="fa fa-heart" aria-hidden="true"></i> by Tushar Ahmed.
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
				</div>
			</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->

    

  <script src="vendors/jquery/jquery-3.2.1.min.js"></script>
  <script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="vendors/skrollr.min.js"></script>
  <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="vendors/jquery.ajaxchimp.min.js"></script>
  <script src="vendors/mail-script.js"></script>
  <script src="js/main.js"></script>
<script src="scripts/jquery-3.4.1.min.js"></script>
<script src="scripts/jquery.ripples-min.js"></script>
<script>
    $(document).ready(function() {
        $('body').ripples(function() {

        });
    });
</script>
</body>
</html>
