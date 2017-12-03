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
                
                if(objForm.twofield.value.length===0){
                    alert("Please Enter Data");
                    objForm.twoField.focus();
                    return false;
                }
                if(objForm.pkey.value.length===0){
                    alert("Please Enter Primary key value");
                    objForm.pkey.focus();
                    return false;
                }
                if(objForm.city.value.length===0){
                    alert("Please Enter City");
                    objForm.city.focus();
                    return false;
                }
                if(objForm.country.value.length===0){
                    alert("Please Enter Country");
                    objForm.country.focus();
                    return false;
                }
                if(objForm.state.value.length===0){
                    alert("Please Enter State");
                    objForm.state.focus();
                    return false;
                }
                if(objForm.tableid.value.length===0){
                    alert("Please Enter Data");
                    objForm.tableid.focus();
                    return false;
                }
   
                else{
                return true;
            }
        }
        </script>
          <script type="text/javascript">

// State lists
var states = new Array();

var states = new Array();
states['a_info'] = new Array('a_id','a_name','a_pwd');
states['basic_products'] = new Array('p_id','p_name','p_code','p_photo','categ');
states['contact_info'] = new Array('cx_id','c_mno','c_email','c_add','c_pincode','c_cityname','c_statename');
states['cust_info'] = new Array('c_id','c_name','c_uname','c_pwd','c_paypal');
states['place_order'] = new Array('p_id','quant','c_mno','c_email','c_add','p_price');
states['price_products'] = new Array('px_id','p_code','p_price','s_id');
states['shop_info'] = new Array('s_id','shop_name','s_uname','s_pwd','s_mailid');


// City lists
var cities = new Array();

cities['a_info'] = new Array();
cities['a_info']['a_id'] = new Array('a_id');
cities['a_info']['a_name'] = new Array('a_id');
cities['a_info']['a_pwd']  = new Array('a_id');

cities['basic_products'] = new Array();
cities['basic_products']['p_id']= new Array('p_id');
cities['basic_products']['p_name']= new Array('p_id');
cities['basic_products']['p_code']= new Array('p_id');
cities['basic_products']['p_photo']= new Array('p_id');
cities['basic_products']['categ']= new Array('p_id');


cities['contact_info'] = new Array();
cities['contact_info']['cx_id'] = new Array('cx_id');
cities['contact_info']['c_mno'] = new Array('cx_id');
cities['contact_info']['c_email'] = new Array('cx_id');
cities['contact_info']['c_add'] = new Array('cx_id');
cities['contact_info']['c_pincode'] = new Array('cx_id');
cities['contact_info']['c_cityname'] = new Array('cx_id');
cities['contact_info']['c_statename'] = new Array('cx_id');


cities['cust_info'] = new Array();
cities['cust_info']['c_id'] = new Array('c_id');
cities['cust_info']['c_name'] = new Array('c_id');
cities['cust_info']['c_uname'] = new Array('c_id');
cities['cust_info']['c_pwd'] = new Array('c_id');
cities['cust_info']['c_paypal'] = new Array('c_id');

cities['place_order'] = new Array();
cities['place_order']['p_id']  = new Array('p_id');
cities['place_order']['p_price']  = new Array('p_id');
cities['place_order']['quant']= new Array('p_id');
cities['place_order']['c_mno'] = new Array('p_id');
cities['place_order']['c_email']  = new Array('p_id');
cities['place_order']['c_add']  = new Array('p_id');

cities['price_products'] = new Array();
cities['price_products']['px_id'] = new Array('px_id');
cities['price_products']['p_code'] = new Array('px_id');
cities['price_products']['p_price'] = new Array('px_id');
cities['price_products']['s_id']= new Array('px_id');

cities['shop_info'] = new Array();
cities['shop_info']['s_id']= new Array('s_id');
cities['shop_info']['shop_name']= new Array('s_id');
cities['shop_info']['s_uname'] = new Array('s_id');
cities['shop_info']['s_pwd'] = new Array('s_id');
cities['shop_info']['s_mailid']= new Array('s_id');



 function setStates() {
  cntrySel = document.getElementById('country');
  stateList = states[cntrySel.value];
  changeSelect('state', stateList, stateList);
  setCities();
}

function setCities() {
  cntrySel = document.getElementById('country');
  stateSel = document.getElementById('state');
  cityList = cities[cntrySel.value][stateSel.value];
  changeSelect('city', cityList, cityList);
}

function changeSelect(fieldID, newOptions, newValues) {
  selectField = document.getElementById(fieldID);
  selectField.options.length = 0;
  for (i=0; i<newOptions.length; i++) {
    selectField.options[selectField.length] = new Option(newOptions[i], newValues[i]);
  }
}

function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload !== 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      if (oldonload) {
        oldonload();
      }
      func();
    };
  }
}

addLoadEvent(function() {
  setStates();
});
</script>

    
</head> 
   

   
       <body class="sticky-header left-side-collapsed"  onload="initMap()">
                      <% 
            if( request.getParameter("submit") != null) 
            {
           
            String twofield = request.getParameter("twofield"); //heli
            String table = request.getParameter("country"); //a_info
            String tablecolumn = request.getParameter("state"); //a_name
            String pkey = request.getParameter("pkey");//5
            String tableid = request.getParameter("city");//a_id
            
            NewClass obj1 = new NewClass();
            String st2 = "update "+table+" set "+tablecolumn+" = '"+twofield+"' where "+tableid+" ='"+pkey+"' ";
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
                      
                <table>
                <tr>
                <td style="text-align: left;">Table:</td>
                <td style="text-align: left;">
                <select name="country" id="country" onchange="setStates();" value="country">
                <option value="a_info">a_info</option>
                <option value="cust_info">cust_info</option>
                <option value="contact_info">contact_info</option>
                <option value="basic_products">basic_products</option>
                <option value="price_products">price_products</option>
                <option value="shop_info">shop_info</option>
                <option value="place_order">place_order</option>
                </select>
                </td>
                </tr><tr>
                <td style="text-align: left;">Table Column:</td>
                <td style="text-align: left;">
                <select name="state" id="state" onchange="setCities();" value="state">
                <option value="">Please select a Table</option>
                </select>
                </td>
                </tr><tr>
                <td style="text-align: left;">Table ID:</td>
                <td style="text-align: left;">
                <select name="city"  id="city" value="city">
                <option value="">Please select a Table</option>
                </select>
                </td>
                </tr>
                <tr>
		<td style="padding:15px"><input type="text" placeholder="Primary Key" name="pkey"></td>
                    <td style="padding:15px"><input type="text" placeholder="Value" name="twofield"></td>
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
