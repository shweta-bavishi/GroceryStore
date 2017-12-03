<%-- 
    Document   : addadmin
    Created on : Mar 11, 2016, 2:14:50 PM
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
<script type="text/javascript">
        function validate(objForm){
                
                if(objForm.pcode.value.length===0){
                    alert("Please Enter Product Code");
                    objForm.pcode.focus();
                    return false;
                }
                if(objForm.price.value.length===0){
                    alert("Please Enter Price");
                    objForm.price.focus();
                    return false;
                }
                
   
                else{
                return true;
            }
        }
        </script>
          <script type="text/javascript">


    
</head> 
   

   
       <body class="sticky-header left-side-collapsed"  onload="initMap()">
                      <% 
            if( request.getParameter("submit") != null) 
            {
            String pcode = request.getParameter("pcode");//5
            String price = request.getParameter("price");//a_id
            String shop_name =request.getSession().getAttribute("shopkeeper").toString();
            
            NewClass obj1 = new NewClass();
            String st2 = "update price_products set p_price = '"+price+"' where p_code ='"+pcode+"'and shop_name ='"+shop_name+"'";
           obj1.x = obj1.insert(st2);
            if(obj1.x==0)  
               {
                
                        
                    out.println("<html><script language=\"javascript\">alert('Unsuccesful') </script></html>");
               }   
            else
               {                 
               out.println("<html><script language=\"javascript\">alert('Succesful') </script></html>");
               
               Thread.sleep(5000);              
                }
            }
            %>

           <jsp:include page="sidebar.jsp"></jsp:include>
    <!-- main content start-->
		<div class="main-content main-content4">
			<!-- header-starts -->
                <jsp:include page="header.jsp"></jsp:include>
                
                <div id="page-wrapper">
		<div class="graphs">
                <form style="padding-top: 40px; padding-left:150px" onsubmit="return validate(this)">
                      
               
                <tr>
		<td style="padding:15px"><input type="text" placeholder="Product code" name="pcode"></td>
                    <td style="padding:15px"><input type="text" placeholder="Modified Price" name="price"></td>
                        <td style="padding:15px"><button type="submit" class="btn btn-default" name="submit" value="submit">Update</button> </td>
                        </tr>
                    </table>
		</form>
                                </div>
                </div>
                

                <jsp:include page="tabledata.jsp"></jsp:include>
                
		<!--footer section start-->
			<footer>
                            <p>&copy 2016 Admin Panel.Made by Shweta Bavishi, Heli Shah & Drashti Mehta</p>
			</footer>
        <!--footer section end-->
	
	
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
           </div>          
</body>

</html>
