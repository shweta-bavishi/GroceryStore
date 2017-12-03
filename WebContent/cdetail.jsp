<%-- 
    Document   : cdetail
    Created on : May 24, 2016, 9:00:01 PM
    Author     : Shweta
--%>

<%@page import="project.NewClass" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Bill Generate</title>
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

        <style type="text/css">
        form{
            padding-left:60px;
            padding-bottom: 15px;
            width: 100%;
            font-size: 20px;
        }
        label{
            font-size: 20px;
        }
        input {
            padding: 5px;
    border: wheat 0px solid;
    font-size: 20px;
}
</style>
    <body>
        
     
        <div id="page-wrapper">
          <div class="graphs"><br><br>
            
		<div class="xs tabls">
                    <div class="panel-body1">
                           <form>
                                                        
                                                        
                                                            
                             
                                <%
                           NewClass obj1 = new NewClass();
                           String usrn= session.getAttribute("usrn").toString();
                           obj1.rs = obj1.fetch("select * from cust_info,contact_info where cust_info.c_id=contact_info.c_id and cust_info.c_uname= '"+usrn+"'");
                            while(obj1.rs.next())
                            {
                            %>      
                                                            <label> Name:</label> <input value="<%=obj1.rs.getString(2)+" " + obj1.rs.getString(5)+" " +obj1.rs.getString(6) %> " id="name" readonly><br>
                                                            <label>Mobile Number: </label><input value="<%=obj1.rs.getString(9)%>" id="mno" readonly> <br>
                                                            <label>Email Id: </label><input value="<%=obj1.rs.getString(10)%>" id="e_id"readonly> <br>
                                                            <label>Address: </label><input value="<%=obj1.rs.getString(11)%>" id="add" readonly> <br>
                                                            <label>Area :</label><input value="<%=obj1.rs.getString(13)%>" id = "add1" readonly> <br>
                                                            <label>City: </label><input value="<%=obj1.rs.getString(14)%>" id = "add2" readonly> <br>
                                                            <label>Pincode: </label><input value="<%=obj1.rs.getString(12)%>" id = "add3"  readonly> <br>
                                                        </form>
                    </div>
                            <%
                                }
%>
                </div>
          </div>
        </div>
    </body>
</html>
