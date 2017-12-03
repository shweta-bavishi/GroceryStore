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
   <script type="text/javascript">
   function validate(objForm){
                
               
                if(objForm.a_name.value.length===0){
                    alert("Please Enter Admin name");
                    objForm.a_name.focus();
                    return false;
                }
                
                return true;
            }
    function check_pass(){
    if (document.getElementById('a_pwd').value===document.getElementById('a_con_pwd').value){
 
        document.getElementById('submit').disabled = false;
        }
    else {
        alert("Not Matched");
        document.getElementById('submit').disabled = true;
        }
    }
          </script>

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
<!--<script src="js/Chart.js"></script>
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
obj2.rs= obj2.fetch("select * from a_info");
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
            String Aname = request.getParameter("a_name"); 
            String password = request.getParameter("a_pwd"); 
            NewClass obj1 = new NewClass();
            String st2 ="Insert into a_info(a_id,a_name,a_pwd) values ("+x+",'"+Aname+"','"+password+"')";
            obj1.x = obj1.insert(st2);
            if(obj1.x==0)
               {
                    response.sendRedirect("addadmin.jsp");
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
                            <input type="text" placeholder="Admin Name" size="30" name="a_name"></td>
                        
                        </tr>
                        <tr>
                        <td style="padding-left:400px; padding-top:20px">
                            <input type="password" placeholder="Password" size="30" name="a_pwd" id="a_pwd"></td>
                        </tr>
                        
                        <tr>
                            
                        <td style="padding-left:400px; padding-top:20px">
                            <input type="password" placeholder="Confirm Password" size="30" name="a_con_pwd" id="a_con_pwd"></td>
                        
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


         
