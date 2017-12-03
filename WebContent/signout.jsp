<%-- 
    Document   : signout
    Created on : Apr 8, 2016, 3:10:35 PM
    Author     : Shweta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <%
        request.getSession().invalidate();
        response.sendRedirect("index.jsp");
        %>
    <body>
        
    </body>
</html>
