<%-- 
    Document   : dropdown
    Created on : Apr 3, 2016, 11:35:03 PM
    Author     : Shweta
--%>

<%@page import="project.NewClass" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Data | Online Grocery Store </title>
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
    
      
        <script type= "text/javascript" src = "js\countries.js"></script>
    </head>
    <body>
        
    <% 
            if( request.getParameter("submit") != null) 
            {
           
            String table = request.getParameter("table"); //a_info
            String tablecolumn = request.getParameter("column"); //a_name
            String pkey = request.getParameter("pkey");//5
            
            NewClass obj1 = new NewClass();
            String st2 = "delete from  "+table+"  where "+tablecolumn+" ='"+pkey+"'";
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
                 
                Select Table:   <select id="table" name ="table"></select>
			
		Select Column: <select name ="column" id ="column"></select>

        	<script language="javascript">
			populateTables("table", "column");
		</script>
                       
                <input type="text" placeholder="Value" name="pkey"></td>
                  
                <button type="submit" class="btn btn-default" name="submit" value="submit">Delete</button> </td>
                    
                    
		</form>
                </div>
                </div>
        
                
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