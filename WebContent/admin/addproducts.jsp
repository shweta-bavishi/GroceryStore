<%-- 
    Document   : addproducts
    Created on : Mar 29, 2016, 7:48:38 PM
    Author     : Shweta
--%>

<%@page import="project.NewClass" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
   function validate(objForm){
                
               
                if(objForm.p_name.value.length===0){
                    alert("Please Enter Product name");
                    objForm.p_name.focus();
                    return false;
                }
                if(objForm.p_url.value.length===0){
                    alert("Please Enter Product URL");
                    objForm.p_url.focus();
                    return false;
                }
                if(objForm.categories.value.length===0){
                    alert("Please Enter Categories");
                    objForm.categories.focus();
                    return false;
                }
                 return true;
            }
        
    
          </script>

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
   <%
    NewClass obj2 = new NewClass();
    obj2.rs= obj2.fetch("select * from basic_products");
    int x=1;
    while(obj2.rs.next())
       {
        x=x+1;
       }
    out.println(""+x);
    %>

     <% 
            if( request.getParameter("submit") != null) 
            {
                int p_id = Integer.parseInt(request.getParameter("p_id"));
            String Pname = request.getParameter("p_name");
            String Pcode = request.getParameter("p_code");
            String Categ = request.getParameter("categories");
            String s=request.getParameter("file1");
            String r ="images/products/" +s;
            
            NewClass obj1 = new NewClass();
            String st2 ="Insert into basic_products(p_id,p_name,categ,p_photo,p_code) values ("+p_id+", '"+Pname+"','"+Categ+"','"+r+"','"+Pcode+"')";
            obj1.x = obj1.insert(st2);
            if(obj1.x==0)
               {
                    
                    out.println("<html><script language=\"javascript\">alert('Not Inserted') </script></html>");
               }   
           else
               {                 
               out.println("<html><script language=\"javascript\">alert('Successfully Inserted') </script></html>");
               Thread.sleep(5000);              
                }
            }
            %>
            
            
            
            
            
            
            
            
        
		<!-- left side end-->
                <jsp:include page="sidebar.jsp"></jsp:include>
		<!-- main content start-->
		<div class="main-content">
                <jsp:include page="header.jsp"></jsp:include>
		<!-- //header-ends -->
                
                <div id="page-wrapper">
				<div class="graphs">
                <form style="padding-top: 200px" method="post" onsubmit="return validate(this)">
                      
                    <table>
                        <tr>
                        <td style="padding-left:400px; padding-top:20px">
                            <input type="text" placeholder="<%=x%>" size="30" name="p_id"></td>
                        
                        </tr>
                        <tr>
                        <td style="padding-left:400px; padding-top:20px">
                            <input type="text" placeholder="Product Code" size="30" name="p_code"></td>
                        
                        </tr>    
                        <tr>
                        <td style="padding-left:400px; padding-top:20px">
                            <input type="text" placeholder="Product Name" size="30" name="p_name"></td>
                        
                        </tr>
                        <tr>
                        <td style="padding-left:400px; padding-top:20px">
                            <input type="file"  size="30" name="file1" id="p_url"></td>
                        </tr>
                        
                        <tr>
                            
                        <td style="padding-left:400px; padding-top:20px">
                            <select name="categories" id="categories" value="categories">
                                

                                <option>Aryuvedic Food</option>
                                <option>Baby Care</option>
                                <option>Cosmetics</option>
                                <option>Deos & Perfumes</option>
                                <option>Haircare</option>
                                <option>Fruit Drink</option>
                                <option>Energy Health Drinks</option>
                                <option>Organic Beverages</option>
                                <option>Soft Drinks</option>
                                <option>Tea & Coffee</option>
                                <option>Biscuts</option>
                                <option>Baking & Desert Items</option>
                                <option>Noodles</option>
                                <option>Pasta</option>
                                <option>Pickle</option>
                                <option>Chocolates</option>
                                <option>Cheese</option>
                                <option>Jams, Honey & spreads</option>
                                <option>Sauce Dips</option>
                                <option>Dals $ pulses</option>
                                <option>Rice & Rice products</option>
                                <option>Masala & Spices</option>
                                <option>Salt & sugar </option>
                                
                                 				
                                    
                            </select>
                        </tr>
                        
                        
                        <tr>
                        <td style="padding-left:400px;  padding-top:20px">
                            <button type="submit" name="submit" value="submit" class="btn btn-default">Add</button> </td>
                        </tr>
                    </table>
		</form>
                                </div>
                </div>
                
                </div>
                
               <footer>
                            <p>&copy 2016 Admin Panel.Made by Shweta Bavishi, Heli Shah & Drashti Mehta</p>
			</footer>
    </body>
</html>


         
