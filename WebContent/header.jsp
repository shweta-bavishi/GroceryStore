<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>

    <body>
        	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +91-9428792266</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> info@onlinegrocery.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="www.facebook.com/onlinegrocerystore"><i class="fa fa-facebook"></i></a></li>
								<li><a href="www.twitter.com/onlinegrocerystore"><i class="fa fa-twitter"></i></a></li>
								<li><a href="www.instagram.com/onlinegrocerystore"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
                		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.jsp"><img src="images/home/logo.png" alt="" /></a>
						</div>
						
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
                                                            <li><a href="resgister.jsp"><i class="fa fa-times"></i> Checkout </a></li>
                                                                <li class="total"><a href="cart.jsp"><i class="fa fa-shopping-cart">&nbsp;&nbsp;  </i><span class="simpleCart_total"></span>(<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</a>
                                                                            <a href="javascript:;" class="simpleCart_empty">Empty Cart</a></li>
                                                                
                                                                <li><a href="login.jsp"><i class="fa fa-lock"></i> Login</a></li>
                                                              <div class="col-sm-3">
						
							</ul>
                                                    <div class="search_box pull-right">
                                                        <form action="searchresult.jsp">
							<input type="text" placeholder="Search"  name="record" />
                                                        </form>
						</div>
                                                    <%
                                                        String record=request.getParameter("record");
                                                        session.setAttribute("record",record);%>
					</div>  
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
                
                
                		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index.jsp" class="active">Home</a></li>
								<li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                                                                <li><a href="shop.jsp">Products</a></li>
										<li><a href="resgister.jsp">Checkout</a></li> 
										<li><a href="cart.jsp">Cart</a></li> 
										<li><a href="login.jsp">Login</a></li> 
                                    </ul>
                               
								
								<li><a href="contact-us.jsp">Contact</a></li>
							</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
     <script src="js/simpleCart.min.js"></script>	
    <script>
simpleCart({
    checkout: {
      type: "PayPal",
      email: "you@yours.com"
    },
    cartColumns: [
        { attr: "id" , label: "ID", id:"px_id"},
        { attr: "name" , label: "Name", id:"p_name" } ,
        { attr: "price" , label: "Price", view: 'currency', id:"p_price" } ,
        { view: "decrement" , label: false,  text: "-" } ,
        { attr: "quantity" , label: "Qty", id:"quant" } ,
        { view: "increment" , label: false,  text: "+"  } ,
        { attr: "total" , label: "SubTotal", view: 'currency',id:"total" } ,
        { view: "remove" , text: "Remove" , label: false }
    ],
    cartStyle: "table"
    
    
  });
	</script>

    </body>
</html>
