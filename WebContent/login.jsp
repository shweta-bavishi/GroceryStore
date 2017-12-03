<%-- 
    Document   : login
    Created on : Mar 9, 2016, 5:19:45 PM
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
    <title>Login | Online Grocery Store </title>
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
        <script type="text/javascript">
       
            function validate(objForm){
                if(objForm.c_uname.value.length===0){
                    alert("Please enter your name");
                    objForm.c_uname.focus();
                    return false;
                }
               
                if(objForm.c_pwd.value.length===0){
                    alert("Please Enter password");
                    objForm.c_pwd.focus();
                    return false;
                }
                
               
                return true;
            }
      </script>
</head><!--/head-->


<body>
     <%
         

        if(request.getParameter("submit")!=null)
        {

        String usrn = request.getParameter("c_uname");
        String pwd = request.getParameter("c_pwd");
        int flag=0;
        
        if(flag==0)
        {
            NewClass obj = new NewClass();
            obj.rs=obj.fetch("select * from cust_info");
            while(obj.rs.next())
            {
                if(usrn.equals(obj.rs.getString("c_uname")))
                {
                    if(pwd.equals(obj.rs.getString("c_pwd")))
                    {
                        
                      {
                        flag=1;
                    %>
                        <script>alert("Successfully Login");</script>
                        <%
                        session.setAttribute("usrn",usrn);
                        response.sendRedirect("cindex.jsp");
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


    <jsp:include page="header.jsp"></jsp:include>
    
    
    
	
		<div class="container"style="padding-left: 375px ; padding-top: 25px ; padding-bottom:100px">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Login to your account</h2>
						<form onsubmit="return validate(this)">
							<input type="text" placeholder="Name" name="c_uname" />
                                                       <input type="password" placeholder="Password" name="c_pwd"/>
							
							<button type="submit" class="btn btn-default" name="submit" value="submit">Login</button>
                                                        <a href="resgister.jsp"><img src="images/newuser.jpg"></a>
						</form>
					</div><!--/login form-->
				</div>
				</div>
			</div>
		
	<!--/form-->
    
    <jsp:include page="footer.jsp"></jsp:include>
     <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>

</html>
