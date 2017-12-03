<%-- 
    Document   : contact-us
    Created on : Mar 9, 2016, 5:16:53 PM
    Author     : Shweta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Checkout | Online Grocery Store </title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->


<body>
    <jsp:include page="header.jsp"></jsp:include>
     <div class="breadcrumbs" style="padding-left: 75px">
				<ol class="breadcrumb">
				  <li><a href="index.jsp">Home</a></li>
				  <li>Contact Us</li>
				</ol>
                </div>
    <div id="contact-page" class="container">
    	<div class="bg">
	    	<div class="row">    		
	    					 		
			</div>    	
    		
	    			<div class="contact-form">
	    				<h2 class="title text-center">Get In Touch</h2>
	    				<div class="status alert alert-success" style="display: none"></div>
				    	<form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
				            <div class="form-group col-md-6">
				                <input type="text" name="name" class="form-control" required="required" placeholder="Name">
				            </div>
				            <div class="form-group col-md-6">
				                <input type="email" name="email" class="form-control" required="required" placeholder="Email">
				            </div>
				            <div class="form-group col-md-12">
				                <input type="text" name="subject" class="form-control" required="required" placeholder="Subject">
				            </div>
				            <div class="form-group col-md-12">
				                <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Your Message Here"></textarea>
				            </div>                        
				            <div class="form-group col-md-12">
				                <input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">
				            </div>
				        </form>
	    			</div>
	    		</div>
        <div class="col-sm-4" style="margin-left: 400px">
	    			<div class="contact-info">
	    				<h2 class="title text-center">Contact Info</h2>
	    				<address>
	    					<p>Online Grocery Store</p>
							<p>2nd floor Krushna Complex Opp New RBI Ahmedabad</p>
							<p>Gujarat India</p>
							<p>Mobile: 074055 73375</p>
							<p>Email: info@pcubesoftech.com</p>
	    				</address>
	    				<div class="social-networks">
	    					<h2 class="title text-center">Social Networking</h2>
							<ul>
								<li>
									<a href="www.facebook.com/onlineGroceryStore"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="www.twitter.com/onlineGroceryStore"><i class="fa fa-twitter"></i></a>
								</li>
								
								
							</ul>
	    				</div>
	    			</div>
    			</div>    			
	    		
    </div><!--/#contact-page-->

    
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
