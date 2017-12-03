<%-- 
    Document   : maincontent
    Created on : Mar 11, 2016, 12:02:19 AM
    Author     : Shweta
--%>
<%@page import="project.NewClass" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <div id="page-wrapper" style="padding-top: 65px">
		
           <h2 style="padding-left: 500px">Welcome Shopkeeper..!! </h2>
           
           <div class="graphs" style="padding-top: 25px">
					<div class="col_3">
						<div class="col-md-3 widget widget1">
							<div class="r3_counter_box">
								<i class="fa fa-users"></i>
								<div class="stats">
                                                                    <%
                                                                        int customer = 1;
                                                                        NewClass obj1 = new NewClass();
                                                                        obj1.rs = obj1.fetch("select count(*) from cust_info ");
                                                                        while(obj1.rs.next()){
                                                                            customer = Integer.parseInt(obj1.rs.getString(1));
                                                                        
                                                                        %>
                                                                        <h5> <%=customer%></h5>
                                                                        <% } %>
								  <div class="grow grow1">
									<p>Customers</p>
								  </div>
								</div>
							</div>
						</div>
                                                                  <div class="col-md-3 widget widget1">
							<div class="r3_counter_box">
								<i class="fa fa-mail-forward"></i>
								<div class="stats">
                                                                   
                                                                    <%
                                                                        int order =0;
                           
                                                                       NewClass obj12 = new NewClass();
                                                                       String sname= session.getAttribute("shopkeeper").toString();
                                                                       
                                                                        obj12.rs = obj12.fetch("select count(*) from place_order where shop_name='"+sname+"'");
                                                                        while(obj12.rs.next()){
                                                                            order = Integer.parseInt(obj12.rs.getString(1));
                                                                    %>  
                                                                    <h5> <%=order%></h5>
                                                                        <% } %>
                                                                    
								  <div class="grow">
									<p>Order</p>
								  </div>
								</div>
							</div>
						</div>
                                           
						<div class="col-md-3 widget widget1">
							<div class="r3_counter_box">
								<i class="fa fa-eye"></i>
								<div class="stats">
                                                                    <%! static int hit=0; %>
                                                <%
                                                  if (hit == 0) 
                                                      {
                                                 
                                                 
                                                             hit++;
                                                        }
                                                       else
                                                               {
                                                    
                                                      hit++;
                                                           }
                                                      %>
                                                 
								  <h5><%=hit %></h5>
								  <div class="grow grow3">
									<p>Visitors</p>
								  </div>
								</div>
							</div>
						 </div>
						 <div class="col-md-3 widget">
							<div class="r3_counter_box">
								<i class="fa fa-usd"></i>
								<div class="stats">
								
                                                                      <%
                                                                        int sum =0;
                           
                                                                       NewClass obj2 = new NewClass();
                                                                       
                                                                        obj2.rs = obj2.fetch("select sum(p_price) from place_order where shop_name='"+sname+"'");
                                                                        while(obj2.rs.next()){
                                                                            sum = Integer.parseInt(obj2.rs.getString(1));
                                                                    %>  
                                                                    <h5> <%=sum%></h5>
                                                                        <% } %>
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
								  <div class="grow grow2">
									<p>Profit</p>
								  </div>
								</div>
							</div>
						</div>
                 
						<div class="clearfix"> </div>
					</div>

		
				</div>
			<!--body wrapper start-->
			</div>
			 <!--body wrapper end-->
		
    </body>
</html>
