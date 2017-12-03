<%-- 
    Document   : tables
    Created on : Mar 11, 2016, 12:20:41 AM
    Author     : Shweta
--%>

<%@page import="project.NewClass" %>
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
   

   
       <body class="sticky-header left-side-collapsed"  onload="initMap()">
           <jsp:include page="sidebar.jsp"></jsp:include>
    <!-- main content start-->
		<div class="main-content main-content4">
			<!-- header-starts -->
                <jsp:include page="header.jsp"></jsp:include>
                <body>
        
        <div id="page-wrapper">
          <div class="graphs"><br><br>
            <h3 class="blank1">Basic Tables</h3>
		
                            
                            
                <div class="xs tabls">
                    <div class="panel-body1">
                        <h3 class="blank1">Order Info</h3>
                            <table align="center">
                             <tr>
                                <td>Product ID:</td>
                                <td>Product Code:</td>
                                <td>Product Price:</td>
                             </tr>
                                <%
                            NewClass obj1 = new NewClass();
                            String shop_name =request.getSession().getAttribute("shopkeeper").toString();
            
                            obj1.rs = obj1.fetch("select * from place_order,price_products where place_order.px_id=price_products.px_id and place_order.shop_name='"+shop_name+"'");
                            while(obj1.rs.next())
                            {
                            %>      
                           <tr>
                                <td><input  type = "text" name = "px_id" value="<%=obj1.rs.getString(1)%>"/></td>
                                <td><input  type = "text" name = "p_code" value="<%=obj1.rs.getString(13)%>"/></td>
                                <td><input  type = "text" name = "p_price" value="<%=obj1.rs.getString(4)%>"/></td>
                               
                            </tr>
                              <%
                            }   
                            %>
                            
                            <tr>
                                <td style="padding:5px;">
                                     <%
                                                                        int sum =0;
                           
                                                                       NewClass obj21 = new NewClass();
                                                                        String sho_name =request.getSession().getAttribute("shopkeeper").toString();
            
                                                                        obj21.rs = obj21.fetch("select sum(p_price) from place_order where shop_name='"+sho_name+"'");
                                                                        while(obj21.rs.next()){
                                                                            sum = Integer.parseInt(obj21.rs.getString(1));
                                                                    %>  
                                                                    <h2> Total : <%=sum%></h2>
                                                                        <% } %>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                
                           
                </div>
              </div> 
 </div>
		
</body>
		
		<!--footer section start-->
			<footer>
                            <p>&copy 2016 Admin Panel.Made by Shweta Bavishi, Heli Shah & Drashti Mehta</p>
			</footer>
        <!--footer section end-->
	
	
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>

</html>
