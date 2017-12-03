<%-- 
    Document   : adminlogin
    Created on : Mar 12, 2016, 1:57:35 PM
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
    <title>Shop-Login | Online Grocery Store </title>
    <script type="text/javascript">
       
            function validate(objForm){
                if(objForm.sname.value.length===0){
                    alert("Please enter shop user name");
                    objForm.sname.focus();
                    return false;
                }
               
                if(objForm.spwd.value.length===0){
                    alert("Please Enter password");
                    objForm.spwd.focus();
                    return false;
                }
                
               
                return true;
            }
      </script>
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
</head><!--/head-->


<body>
       
     <%
         if(request.getParameter("submit")!=null)
        {

        String usrn = request.getParameter("sname");
        String pwd = request.getParameter("spwd");
        int flag=0;
        
        if(flag==0)
        {
            NewClass obj = new NewClass();
            obj.rs=obj.fetch("select * from shop_info");
            while(obj.rs.next())
            {
                if(usrn.equals(obj.rs.getString("s_uname")))
                {
                    if(pwd.equals(obj.rs.getString("s_pwd")))
                    {
                        
                      {
                        flag=1;
                        NewClass obj1 = new NewClass();
                        obj1.rs=obj1.fetch("select shop_name from shop_info where s_uname= '"+usrn+"'");
                        if(obj1.rs.next()){
                        String shop_name= obj1.rs.getString("shop_name");
                        session.setAttribute("shopkeeper",shop_name);
                        response.sendRedirect("shopindex.jsp");
                        }
                      
                        %>
                        <script>alert("Successfully Login");</script>
                        <%
                    }
                }
            }
            
        }
                   }
        if(flag==0)
                       {
            %>
                        <script>alert("Invalid Login"); </script> <%
        }
         }
               
    %>

    <h1 style="text-align:center; padding-top: 60px; color:#fe870d"> Welcome to the Shopkeeper Panel..!! </h1>
	<section id="form" style="padding-left: 350px"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Login to your account</h2>
						<form method="post" action="" onsubmit="return validate(this)" name="adminlogin" >
							<input type="text" placeholder="Name" name="sname" />
							<input type="password" placeholder="Password" name="spwd"/>
							
							<button type="submit" name="submit" value="submit" class="btn btn-default">Login</button>
                                                        
						</form>
					</div><!--/login form-->
				</div>
				
				</div>
			</div>
		
	</section><!--/form-->
     <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>

</html>

