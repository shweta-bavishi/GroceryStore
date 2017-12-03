<%-- 
    Document   : resgister
    Created on : Mar 21, 2016, 2:39:53 PM
    Author     : Shweta
--%>
<%@page import="project.NewClass" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Customer | Online Grocery Store </title>
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
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>

    
    </head>
    <style>
		
                th{
                    font-family: serif;
                    font-size: 15px;
                    width: 20px;
                }
                
                tbody{
                    width:80%;
                }
                
                td{
                    font-size: 15px;
                    width: 20px;
                }
                tr{
                    font-family: serif;
                    font-size: 10px;
                    border: black solid 1px;
                    width: 20px;
                }
                tr.headerRow{
                        background-color: rgb(254, 152, 15);
                    
                }
                
	</style>

    <body>
    <jsp:include page="header.jsp"></jsp:include>
    
    <section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Account Details</li>
                                  </ol>
			</div><!--/breadcrums-->   
      <jsp:include page ="cdetail.jsp"></jsp:include>
                        <div class="checkout-options">
				
			        <ul class="nav">
					<li>
                                            <a href="#">View Orders</a>
					</li>
					<li>
						<a href="billgen.jsp">Checkout Options</a>
					</li>
					<li>
						<a href="index.jsp"><i class="fa fa-times"></i>Cancel</a>
					</li>
				</ul>
                </div>
			</div><!--/checkout-options-->

			<div class="xs tabls" style="padding-left:55px">
                    <div class="panel-body1" style="padding-left:35px ">
                        <h3 class="blank1">Order Info</h3>
                            <table align="center" style="width:50px">
                             <tr>
                                
                                <th>Product ID:</th>
                                <th>Product Code:</th>
                                <th>Product Price:</th>
                                <th>Quantity:</th>
                                <th>Total Cost:</th>
                                
                             </tr>
                                <%
                            NewClass obj1 = new NewClass();
                            String cuname = session.getAttribute("usrn").toString();
                            obj1.rs = obj1.fetch("select * from cust_info where c_uname='"+cuname+"'");
                            while(obj1.rs.next())
                            {
                                String c_id = obj1.rs.getString(1);
                                NewClass obj12 = new NewClass();
                                obj12.rs = obj12.fetch("select * from place_order where c_id='"+c_id+"'");
                                
                                while(obj12.rs.next())
                            {    
                                String px_id = obj12.rs.getString(10);
                                String p_price = obj12.rs.getString(4);
                                String quant = obj12.rs.getString(5);
                                String t_cost = obj12.rs.getString(6);
                                
                                NewClass obj34 = new NewClass();
                                obj34.rs = obj34.fetch("select p_code from price_products where px_id = '"+px_id+"'");
                                while(obj34.rs.next()){                              
                              
                            %>      
                           <tr>
                                <td><input  type = "text" name = "px_id" value="<%=px_id%>"/></td>
                                <td><input  type = "text" name = "p_code" value="<%=obj34.rs.getString(1)%>"/></td>
                                <td><input  type = "text" name = "p_price" value="<%=p_price%>"/></td>
                                <td><input  type = "text" name = "quant" value="<%=quant%>"/></td>
                                <td><input  type = "text" name = "tcost" value="<%=t_cost%>"/></td>
                               
                            </tr>
                              <%
                            }  
}}

                            %>
                            
                            
                        </table>
                    </div>
                                </div>
    </section>    
    <jsp:include page="footer.jsp"></jsp:include>

	
    </body>
</html>
