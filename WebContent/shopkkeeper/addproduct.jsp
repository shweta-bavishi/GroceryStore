<%-- 
    Document   : deletedata
    Created on : Mar 11, 2016, 2:09:33 PM
    Author     : Shweta
--%>
<%@page import="project.NewClass" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>

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
                
               
                if(objForm.p_code.value.length===0){
                    alert("Please Enter Product Code");
                    objForm.p_code.focus();
                    return false;
                }
                if(objForm.p_price.value.length===0){
                    alert("Please Enter Product Price");
                    objForm.p_price.focus();
                    return false;
                }
                
                return true;
            }
    
          </script>
</head> 
   
 <body class="sticky-header left-side-collapsed"  onload="initMap()">
               <%
      NewClass obj15 = new NewClass();
    obj15.rs= obj15.fetch("select * from price_products");
    
    int x=1;
    while(obj15.rs.next())
       {
        x=x+1;
       }
    out.println(""+x);
            if( request.getParameter("submit") != null) 
            {
            int Price = Integer.parseInt(request.getParameter("p_price"));
            String Pcode = request.getParameter("p_code");
            
            String sname=request.getSession().getAttribute("shopkeeper").toString();
            
            NewClass obj2 = new NewClass();
            String st1 = "select count(*) from price_products where p_code='"+Pcode+"'";
            obj2.rs= obj2.fetch(st1);
             while(obj2.rs.next()){
                int count1 = Integer.parseInt(obj2.rs.getString(1));
                if(count1 == 0){
                    out.println("<html><script language=\"javascript\">alert('Invalid Prouct Code') </script></html>");
                 }
                else if(count1 > 0)  {
                    NewClass obj3 = new NewClass();
                    String st = "select count(*) from price_products where p_code='"+Pcode+"' and shop_name='"+sname+"'";
                    obj3.rs= obj3.fetch(st);
                    while(obj3.rs.next()){
                    int count = Integer.parseInt(obj3.rs.getString(1));
                    if(count>0){
                         String st3 = "update price_products set p_price="+Price+" where p_code='"+Pcode+"' and shop_name = '"+sname+"'";
                         obj3.x = obj3.insert(st3);
                         if(obj3.x==0)  
                        {
                        out.println("<html><script language=\"javascript\">alert('Unsuccesful') </script></html>");
                            }   
                        else
                        {                 
                        out.println("<html><script language=\"javascript\">alert('Succesfully Price Updated') </script></html>");
                        Thread.sleep(5000);              
                        }
                }
                else{
                             NewClass obj5 = new NewClass();
                        obj5.rs= obj5.fetch("select p_id from basic_products where p_code='"+Pcode+"'");
                     if(obj5.rs!= null){
                            while(obj5.rs.next()){
                            int pid= Integer.parseInt(obj5.rs.getString(1));
                            NewClass obj1 = new NewClass();
                            String st5 ="Insert into price_products(px_id,p_price,p_code,shop_name,p_id) values ("+x+","+Price+",'"+Pcode+"','"+sname+"',"+pid+")";
                            obj1.x = obj1.insert(st5);
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
                      
                    }
                         
                 }
                
                    }
                }
            }
            }
             %>
		<!-- left side end-->
                <jsp:include page="sidebar.jsp"></jsp:include>
		<!-- main content start-->
		<div class="main-content">
                <jsp:include page="header.jsp"></jsp:include>
                
                <div id="page-wrapper">
				<div class="graphs">
                <form style="padding-top: 200px" method="post" onsubmit="return validate(this)">
                      
                    <table>
                        <tr>
                        <td style="padding-left:400px; padding-top:20px">
                            <input type="text" placeholder="D-mart"  size="30" name="shop_name" readonly></td>
                        
                        </tr> 
                        <tr>
                        <td style="padding-left:400px; padding-top:20px">
                            <input type="text" placeholder="Product Code" size="30" name="p_code"></td>
                        
                        </tr>    
                        <td style="padding-left:400px; padding-top:20px">
                            <input type="text" placeholder="Product Price" size="30" name="p_price"></td>
                        
                        
                        
                        <tr>
                            <tr>
                        <td style="padding-left:400px;  padding-top:20px">
                            <button type="submit" name="submit" value="submit" class="btn btn-default">Add</button> </td>
                        </tr>
                    </table>
		</form>
                                </div>
                </div>
                <footer>
                <p>&copy 2016 Admin Panel.Made by Shweta Bavishi, Heli Shah & Drashti Mehta</p>
		</footer>
        <!--footer section end-->

      <!-- main content end-->
                </div>
                
  
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>