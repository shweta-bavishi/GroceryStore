<%-- 
    Document   : featured-items
    Created on : Mar 9, 2016, 8:22:09 PM
    Author     : Shweta
--%>

<%@page import="project.NewClass" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | Online Grocery Store</title>
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

    </head>
    <body>
        <div class="col-sm-9 padding-right">
            <div class="features_items" style="width: 100%; clear: both "><!--features_items-->
						<h2 class="title text-center">Features Items</h2>
						
														<div class="panel-body1">
 
                               <%! static int hit=5; %>
                                                <%
                                                  if (hit == 0) 
                                                      {
                                                 
                                                 
                                                             hit++;
                                                        }
                                                       else
                                                               {
                                                    
                                                      hit++;
                                                           }
                                                      %>
                                                      <%
                                                          NewClass obj1 = new NewClass();
                            obj1.rs = obj1.fetch("select * from basic_products,price_products where basic_products.p_id=price_products.p_id and price_products.px_id= "+hit+"");
                            while(obj1.rs.next())
                            {
                            %>      
                           <div class="simpleCart_shelfItem">
                                    <div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=obj1.rs.getString(5)%>" alt="" />
										<h2><span class="item_price"> &#8377; <%=obj1.rs.getString(9)%>.00</span></h2>
										<p><div class="item_name"><%=obj1.rs.getString(2)%></div>
										<a class="item_add" href="javascript:;" class="btn btn-default add-to-cart"> Add to Cart </a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2><span class="item_price"> &#8377; <%=obj1.rs.getString(9)%>.00</span></h2>
											<p><div class="item_name"><%=obj1.rs.getString(2)%></div>
											<a class="item_add" href="javascript:;" class="btn btn-default add-to-cart"> Add to Cart </a>
										</div>
									</div>
								</div>
								
							</div>
						</div>
                                                                                          <%
                            }   
                            %>
                           </div>	
                            <%
                            hit = hit + 4;
                            obj1.rs = obj1.fetch("select * from basic_products,price_products where basic_products.p_id=price_products.p_id and price_products.px_id= "+hit+"");
                            while(obj1.rs.next())
                            {
                                %>
                            <div class="simpleCart_shelfItem">
                                    <div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=obj1.rs.getString(5)%>" alt="" />
										<h2><span class="item_price"> &#8377; <%=obj1.rs.getString(9)%>.00</span></h2>
										<p><div class="item_name"><%=obj1.rs.getString(2)%></div>
										<a class="item_add" href="javascript:;" class="btn btn-default add-to-cart"> Add to Cart </a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2><span class="item_price"> &#8377; <%=obj1.rs.getString(9)%>.00</span></h2>
											<p><div class="item_name"><%=obj1.rs.getString(2)%></div>
											<a class="item_add" href="javascript:;" class="btn btn-default add-to-cart"> Add to Cart </a>
										</div>
									</div>
								</div>
								
							</div>
						</div>
                                                                                          <%
                            }   
                            %>
                           </div>	
                            <%
                            hit = hit + 3;
                            obj1.rs = obj1.fetch("select * from basic_products,price_products where basic_products.p_id=price_products.p_id and price_products.p_id= "+hit+" ");
                            while(obj1.rs.next())
                            {
                                %>
                                <div class="simpleCart_shelfItem">
                                    <div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=obj1.rs.getString(5)%>" alt="" />
										<h2><span class="item_price"> &#8377; <%=obj1.rs.getString(9)%>.00</span></h2>
										<p><div class="item_name"><%=obj1.rs.getString(2)%></div>
										<a class="item_add" href="javascript:;" class="btn btn-default add-to-cart"> Add to Cart </a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2><span class="item_price"> &#8377; <%=obj1.rs.getString(9)%>.00</span></h2>
											<p><div class="item_name"><%=obj1.rs.getString(2)%></div>
											<a class="item_add" href="javascript:;" class="btn btn-default add-to-cart"> Add to Cart </a>
										</div>
									</div>
								</div>
								
							</div>
						</div>
                                                                                          <%
                            }   
                            %>
                           </div>	
                            <%
                            hit = hit + 4;
                            obj1.rs = obj1.fetch("select * from basic_products,price_products where basic_products.p_id=price_products.p_id and price_products.p_id= "+hit+"");
                            while(obj1.rs.next())
                            {
                                %>
                           <div class="simpleCart_shelfItem">
                                    <div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=obj1.rs.getString(5)%>" alt="" />
										<h2><span class="item_price"> &#8377; <%=obj1.rs.getString(9)%>.00</span></h2>
										<p><div class="item_name"><%=obj1.rs.getString(2)%></div>
										<a class="item_add" href="javascript:;" class="btn btn-default add-to-cart"> Add to Cart </a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2><span class="item_price"> &#8377; <%=obj1.rs.getString(9)%>.00</span></h2>
											<p><div class="item_name"><%=obj1.rs.getString(2)%></div>
											<a class="item_add" href="javascript:;" class="btn btn-default add-to-cart"> Add to Cart </a>
										</div>
									</div>
								</div>
								
							</div>
						</div>
                                                                                          <%
                            }   
                            %>
                           </div>	
                            <%
                            hit = hit + 9;
                            obj1.rs = obj1.fetch("select * from basic_products,price_products where basic_products.p_id=price_products.p_id and price_products.px_id= "+hit+"");
                            while(obj1.rs.next())
                            {
                                %>
                                
                           <div class="simpleCart_shelfItem">
                                    <div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=obj1.rs.getString(5)%>" alt="" />
										<h2><span class="item_price"> &#8377; <%=obj1.rs.getString(9)%>.00</span></h2>
										<p><div class="item_name"><%=obj1.rs.getString(2)%></div>
										<a class="item_add" href="javascript:;" class="btn btn-default add-to-cart"> Add to Cart </a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2><span class="item_price"> &#8377; <%=obj1.rs.getString(9)%>.00</span></h2>
											<p><div class="item_name"><%=obj1.rs.getString(2)%></div>
											<a class="item_add" href="javascript:;" class="btn btn-default add-to-cart"> Add to Cart </a>
										</div>
									</div>
								</div>
								
							</div>
						</div>
                                                                                          <%
                            }   
                            %>
                           </div>	
                                                                                                                </div>
                                        </div>
    </body>
</html>
