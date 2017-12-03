<%@page import="java.lang.String"%>
<%@page import="project.NewClass" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Cart | Online Grocery Store </title>
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
<!--CSS for the Cart. Customize anything you damn well please.
		Use Firebug or Webkit's Element Inspector to get a more 
		indepth idea of what simpleCart Generates.
	-->

<body>
       
    <jsp:include page="header.jsp"></jsp:include>
   	<!--Add a Div with the class "simpleCart_items" to show your shopping cart area.-->
        <div class="breadcrumbs" style="padding-left: 75px">
				<ol class="breadcrumb">
				  <li><a href="index.jsp">Home</a></li>
				  <li>Shopping Cart</li>
				</ol>
                </div>
	
    <jsp:include page="cart_detail.jsp"></jsp:include>				
				<!--Here's the Links to Checkout and Empty Cart-->
                                <img src="images/cart/images.jpg" class="simpleCart_empty" style="padding-left: 500px">
                                <a id="lkbuybtn" href="resgister.jsp"><img src="images/cart/images.png"></a>                 
                              
                                
    
    
    
    <jsp:include page="footer.jsp"></jsp:include>
     <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
    <script src="js/cartInput.js"></script>
</body>

</html>

