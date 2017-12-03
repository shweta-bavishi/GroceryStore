<%-- 
    Document   : tabledata
    Created on : Mar 11, 2016, 1:55:18 PM
    Author     : Shweta
--%>
<%@page import="project.NewClass" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        
        <div id="page-wrapper">
          <div class="graphs"><br><br>
            <h3 class="blank1">Basic Tables</h3>
		
                            
                            
                <div class="xs tabls">
                    <div class="panel-body1">
                        <h3 class="blank1">Product Info</h3>
                            <table align="center">
                             <tr>
                                <td>ID:</td>
                                <td>Product ID:</td>
                                <td>Product Name:</td>
                                <td>Product Code:</td>
                                <td>Categories:</td>
                                <td>Product Price:</td>
                             </tr>
                                <%
                            NewClass obj1 = new NewClass();
                            String shop_name =request.getSession().getAttribute("shopkeeper").toString();
            
                            obj1.rs = obj1.fetch("select * from basic_products,price_products where basic_products.p_id=price_products.p_id and price_products.shop_name='"+shop_name+"'");
                            while(obj1.rs.next())
                            {
                            %>      
                           <tr>
                                <td><input  type = "text" name = "px_id" value="<%=obj1.rs.getString(6)%>"/></td>
                               
                                <td><input  type = "text" name = "p_id" value="<%=obj1.rs.getString(1)%>"/></td>
                                <td><input  type = "text" name = "p_name" value="<%=obj1.rs.getString(2)%>"></td>
                                <td><input  type = "text" name = "p_code" value="<%=obj1.rs.getString(3)%>"/></td>
                                 <td><input  type = "text" name = "categ" value="<%=obj1.rs.getString(4)%>"/></td>
                                <td><input  type = "text" name = "p_price" value="<%=obj1.rs.getString(9)%>"/></td>
                               
                            </tr>
                              <%
                            }   
                            %>
                            </table>
                    </div>
                </div>
                            
                <div class="xs tabls">
                  <div class="panel-body1">
                    <h3 class="blank1">Shop Info</h3>
			<table align="center"><tr>
                            <td>SHOP ID:</td>
                            <td>SHOP NAME:</td>
                            <td>USERNAME:</td>
                            <td>PASSWORD:</td>
                            <td>EMAIL ID:</td>
                            </tr>
                                <%
                            NewClass obj2 = new NewClass();
            
                            obj2.rs = obj2.fetch("select * from shop_info where shop_name= '"+shop_name+"' order by s_id");
                            while(obj2.rs.next())
                            {
                    %>      
                            <tr>
                            <td><input  type = "text" name = "s_id" value="<%=obj2.rs.getString(1)%>"/></td>
                            <td><input  type = "text" name = "shop_name" value="<%=obj2.rs.getString(2)%>"/></td>
                            <td><input  type = "text" name = "s_uname" value="<%=obj2.rs.getString(3)%>"></td>
                            <td><input  type = "text" name = "s_pwd" value="<%=obj2.rs.getString(4)%>"></td>
                            <td><input  type = "text" name = "s_mailid" value="<%=obj2.rs.getString(5)%>"></td>
                            </tr>
                              <%
                            }   
                            %>
                            </table>
                   </div>
                </div>			
                
                        
            <div class="xs tabls">
                 <div class="panel-body1">
                   <h3 class="blank1">Orders</h3>
			<table align="center"  class = "scrollit"><tr>
                            <td>Transaction Id</td>
                            <td>Product Id</td>
                            <td>Customer Id:</td>
                            <td>Product Price</td>
                            <td>Quantity:</td>
                            <td>Total Cost:</td>
                            
                            </tr>
                                <%
                            NewClass obj5 = new NewClass();
                            
                            obj5.rs = obj5.fetch("select t_id,px_id,c_id,p_price,quant,t_cost from place_order where shop_name='"+shop_name+"' order by t_id");
                            while(obj5.rs.next())
                            {
                    %>      
                           
                            
                            <tr>
                            <td><input  type = "text" name = "t_id" value="<%=obj5.rs.getString(1)%>"/></td>
                            <td><input  type = "text" name = "p_id" value="<%=obj5.rs.getString(9)%>"/></td>
                            <td><input  type = "text" name = "c_id" value="<%=obj5.rs.getString(2)%>"/></td>
                            <td><input  type = "text" name = "p_price" value="<%=obj5.rs.getString(8)%>"></td>
                            <td><input  type = "text" name = "quant" value="<%=obj5.rs.getString(4)%>"/></td>
                            <td><input  type = "text" name = "t_cost" value="<%=obj5.rs.getString(3)%>"/></td>
                             
                            </tr>
                              <%
                            }   
                            %>
                        </table>
                </div>
              </div> 
 </div>
</div>			
</body>
</html>
