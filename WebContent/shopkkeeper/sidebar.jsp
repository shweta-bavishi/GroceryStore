<%-- 
    Document   : sidebar
    Created on : Mar 10, 2016, 10:57:19 PM
    Author     : Shweta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Easy Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!----webfonts--->
<link href='//fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
<!---//webfonts---> 
 <!-- Meters graphs -->
<script src="js/jquery-1.10.2.min.js"></script>
<!-- Placed js at the end of the document so the pages load faster -->

    </head>
    <body>
         <section>
    <!-- left side start-->
		<div class="left-side sticky-left-side">

			<!--logo and iconic logo start-->
			<div class="logo">
				<h1><a href="shopindex.jsp"> Shopkeeper</a></h1>
			</div>
			<div class="logo-icon text-center">
				<a href="shopindex.jsp"><i class="lnr lnr-home"></i> </a>
			</div>

			<!--logo and iconic logo end-->
			<div class="left-side-inner">

				<!--sidebar nav start-->
					<ul class="nav nav-pills nav-stacked custom-nav">
						<li class="menu-list"><a href="#"><i class="lnr lnr-database"></i> <span>Database</span></a>  
							<ul class="sub-menu-list">
								<li><a href="tables.jsp">Tables</a> </li>
							</ul>
						</li>
                                                <li class="menu-list"><a href="#"><i class="lnr lnr-book"></i> <span>Menu Levels</span></a>  
							<ul class="sub-menu-list">
								<li><a href="addproduct.jsp">Add Products</a> </li>
							</ul>
						</li>
                                                <li class="menu-list"><a href="#"><i class="lnr lnr-pencil"></i> <span>Modify Data</span></a>
							<ul class="sub-menu-list">
								<li><a href="deletedata.jsp">Delete Records</a> </li>
								<li><a href="modifytable.jsp">Update Table</a></li>
							</ul>
						</li> 
						<li class="menu-list"><a href="#"><i class="lnr lnr-chart-bars"></i> <span>Menu Levels</span></a>  
							<ul class="sub-menu-list">
								<li><a href="profit.jsp">Profit</a> </li>
							</ul>
						</li> 
                                                
                                                <li class="menu-list"><a href="#"><i class="lnr lnr-power-switch"></i> <span>Sign Out</span></a>  
                                                    <ul class="sub-menu-list">
								<li><a href="signout.jsp">Signout</a> </li>
							</ul>
						</li>
					</ul>
				<!--sidebar nav end-->
			</div>
		</div>
         </section>
    </body>
</html>
