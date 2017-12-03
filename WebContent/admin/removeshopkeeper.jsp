<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="project.NewClass" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            function validate(objForm){
                
                if(objForm.shopame.value.length===0){
                    alert("Please Enter Shop Name");
                    objForm.shopname.focus();
                    return false;
                }
                
   
                else{
                return true;
            }
        }
            </script>
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
            if( request.getParameter("submit") != null) 
            {
           
            String shopname = request.getParameter("shopname");
             
             
            NewClass obj1 = new NewClass();
            String st2 ="delete from shop_info where (shop_name = '"+shopname+"')";
            obj1.x = obj1.insert(st2);
            NewClass obj2 = new NewClass();
            String st3 ="ALTER TABLE products DROP COLUMN "+shopname+"_price";
            obj2.x = obj2.insert(st3);
            if(obj1.x==0)
               {
                    
                    out.println("<html><script language=\"javascript\">alert('Unsuccesfull') </script></html>");
               }   
            else
               {                 
               out.println("<html><script language=\"javascript\">alert('Successfull') </script></html>");
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
                <form style="padding-top: 200px" onsubmit="return validate(this)">
                      
                    <table>
                        <tr>
                            
                        <td style="padding-left:400px; padding-top:20px">
                            <input type="text" placeholder="Shop name" size="30" name="shopname" ></td>
                        
                        </tr>
                        
                        <tr>
                        <td style="padding-left:400px;  padding-top:20px">
                            <button type="submit" class="btn btn-default" name="submit" value="submit">Delete</button> </td>
                        </tr>
                    </table>
		</form>
                                </div>
                </div>
                

                
               <footer>
                            <p>&copy 2016 Admin Panel.Made by Shweta Bavishi, Heli Shah & Drashti Mehta</p>
			</footer>
    </body>
</html>

