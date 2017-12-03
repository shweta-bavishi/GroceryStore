<%@page import="java.lang.String"%>
<%@page import="project.NewClass" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Shop | Online Grocery Store </title>
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
       
    <jsp:include page="header.jsp"></jsp:include>
     <div class="breadcrumbs" style="padding-left: 75px">
				<ol class="breadcrumb">
				  <li><a href="index.jsp">Home</a></li>
				  <li>Shop</li>
				</ol>
                </div>
    
    <div class="panel-body1">
 <p style="size:6000px ; padding-left: 1000px">${Name}</p>
                                                                        
                                <%
                            NewClass obj1 = new NewClass();
                            
                            
                            obj1.rs = obj1.fetch("select * from basic_products,price_products where basic_products.p_id=price_products.p_id  order by price_products.px_id");
                            while(obj1.rs.next())
                            {
                            %>    
                            
                          <table  align ="center" border = 0 width="80%" margin-bottom="15px" padding="5px">
  <tr width="20%">
    <th rowspan="6"><img src="<%=obj1.rs.getString(5)%>"></th>
    <th ></th>
  </tr>
  <tr width="80%">
    <td>Product Id: <%=obj1.rs.getString(1)%></td>
  </tr>
  <tr width="80%">
    <td>Product Name: <%=obj1.rs.getString(2)%></td>
  </tr>
  
  <tr width="80%">
    <td>Shop Name: <%=obj1.rs.getString(10)%></td>
  </tr>
  <tr width="80%">
    <td>Price: <%=obj1.rs.getString(9)%></td>
  </tr>
  <tr width="80%">
    <td><a class="item_add" href="javascript:;" class="btn btn-default add-to-cart"> Add to Cart </a></td>
    
  </tr>

</table>
                       <%
                            }   
                            %>
                            </table>
                    </div>
                </div>
                <jsp:include page="footer.jsp"></jsp:include>
     <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>

</html>

