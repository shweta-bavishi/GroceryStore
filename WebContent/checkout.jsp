<%-- 
    Document   : checkout
    Created on : Mar 9, 2016, 5:14:09 PM
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
    <title>Checkout | Online Grocery Store </title>
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
<style type="text/css">
    table.simpleCart_items{
        padding:0px;
    }
    tr.row1{
        padding:0px;
        font-size: 20px;
        border: 0px white solid;
        
    }
    td.col1{
        padding: 0px;
        margin-top: 1px;
        font-size: 15px;
    }
    </style>
    <script type="text/javascript">
    function validate(objForm){
               
               var i=0;
               var j=1;
                
                if(objForm.name.value.length===0){
                    alert("Please Enter name");
                    objForm.name.focus();
                    return false;
                }
               
                if(objForm.add1.value.length===0){
                    alert("Please Enter address");
                    objForm.add1.focus();
                    return false;
                }
                if(objForm.mname.value.length===0){
                    alert("Please Enter Middle Name");
                    objForm.mname.focus();
                    return false;
                } 
                if(objForm.lname.value.length===0){
                    alert("Please Enter Last Name");
                    objForm.lname.focus();
                    return false;
                }
                if(objForm.add2.value.length===0){
                    alert("Please Enter address 2");
                    objForm.add2.focus();
                    return false;
                }
                 if(objForm.statename.value.length===0){
                    alert("Please Enter statename");
                    objForm.statename.focus();
                    return false;
                }
                 if(objForm.cityname.value.length===0){
                    alert("Please Enter cityname");
                    objForm.cityname.focus();
                    return false;
                }
                 if(objForm.pincode.value.length===0){
                    alert("Please Enter pincode");
                    objForm.pincode.focus();
                    return false;
                }
                 if(objForm.cn.value.length===0){
                    alert("Please Enter contact number");
                    objForm.cn.focus();
                    return false;
                }
                 if(objForm.email.value.length===0){
                    alert("Please Enter mail id");
                    objForm.email.focus();
                    return false;
                }
            
                 if(objForm.un.value.length===0){
                    alert("Please Enter user name");
                    objForm.un.focus();
                    return false;
                }
                 if(objForm.pw.value.length===0){
                    alert("Please Enter password");
                    objForm.pw.focus();
                    return false;
                }
               
                return true;
            }
            
    function check_pass(){
    if (document.getElementById('c_pwd').value===document.getElementById('c_con_pwd').value){
 
        document.getElementById('submit').disabled = false;
        }
    else {
        alert("Not Matched");
        document.getElementById('submit').disabled = true;
        }
    }
  
    function lengthRestriction(elem, min, max){
    var uInput = elem.value;
    if(uInput.length >= min && uInput.length <= max){
	return true;
	}
    else{
	alert("Please enter  " +min+ " digits");
	elem.focus();
	return false;
	}
    }
       

function NullField(object)       // for null field validations
{
 
    if(object.value==="")
    {
        alert('This field must contain a value.');
        object.focus();
    }
}
 
     
function checkEmail(object)         // for email validations
{
      
    if(object.value!==null)
    {
        if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(object.value))
        {
            return (true);
        }

        alert("Invalid E-mail Address! Please re-enter.");
        object.focus();
        return (false);
    }    
    else{
        return true;
    }
}

function OnlyNum(e)           //for numerical values
{
    
    var keyID=(e.keyCode)? event.keyCode : e.which;
     
    if ((keyID>=48 && keyID<=57) ||(keyID===8)||(keyID===32)||(keyID===46)||(keyID===39))
    {
         return true;
    }
    alert("You should enter only Number");
    return (false);
           
}

function OnlyChar(e)        //for characters values
{
    var keyID=(e.keyCode)? event.keyCode : e.which;
     
              
    if ((keyID>=65 && keyID<=90)||(keyID>=97 && keyID<=122) ||(keyID===8)||(keyID===32)||(keyID===46)||(keyID===39))
    {
         return true;
    }
    alert("You Should enter only character");
    return (false);
           
}

function password_validation(object,id)
{
    if(object.value.length<6)
    {
        document.getElementById('password').innerHTML='<b>*Password can not be less than 6 digits.</b>';
        object.focus();
        return false;
    }
    document.getElementById('password').innerHTML='';
    return true;
}


function pincodeValidation(obj)
{
    if(obj.value.length!==0)
    {
        if(obj.value.length>=6 || obj.value.length<=6)
        {
            alert("Pincode should contain only 6 Digits");
            obj.focus();
            return false;
        }
       
        return true;
    }
    else{
       
       
        return true;
    }
   
}

function mobilenoValidation(obj)
{
    if(obj.value.length>10 || obj.value.length<10)
    {
        document.getElementById('phno').innerHTML='<b>*Contact No should contain 10 Digits.</b>';
        obj.focus();
        return false;
    }
    document.getElementById('phno').innerHTML='';
    return true;
}
        
</script>       
  <script>
     var table_arr = new Array("Ahemedabad", "Vadodara");

// TableColumns
var s_a = new Array();
s_a[0] = "";
s_a[1] = "Sola|Bapunagar|Naroda|Naranpura|Manek chowk|Maninagar|Motera|Rampura|Sanand";
s_a[2] = "Alkapuri|Karelibaug|Nizampura|Chaani|Vaghodiya|Mandvi|Fatehpura|Manjalpur|Akota|Gorva";



function populateTableColumns(tableElementId, tablecolumnElementId) {

    var selectedTableIndex = document.getElementById(tableElementId).selectedIndex;

    var tablecolumnElement = document.getElementById(tablecolumnElementId);

    tablecolumnElement.length = 0; // Fixed by Julian Woods
    tablecolumnElement.options[0] = new Option('Select Area', '');
    tablecolumnElement.selectedIndex = 0;

    var tablecolumn_arr = s_a[selectedTableIndex].split("|");

    for (var i = 0; i < tablecolumn_arr.length; i++) {
        tablecolumnElement.options[tablecolumnElement.length] = new Option(tablecolumn_arr[i], tablecolumn_arr[i]);
    }
}

function populateTables(tableElementId, tablecolumnElementId) { //(tablename,tablecolumns)
    // given the id of the <select> tag as function argument, it inserts <option> tags
    var tableElement = document.getElementById(tableElementId); //selectedtable
    tableElement.length = 0;
    tableElement.options[0] = new Option('Select City', '-1');
    tableElement.selectedIndex = 0;
    for (var i = 0; i < table_arr.length; i++) {
        tableElement.options[tableElement.length] = new Option(table_arr[i], table_arr[i]);
    }

    // Assigned all countries. Now assign event listener for the tablecolumns.

    if (tablecolumnElementId) {
        tableElement.onchange = function () {
            populateTableColumns(tableElementId, tablecolumnElementId);
        };
    }
}
    </script>
    
<body>
            <%
NewClass obj2 = new NewClass();
obj2.rs= obj2.fetch("select * from cust_info");
int x=1;
while(obj2.rs.next())
       {
    x=x+1;
       }
out.println(""+x);
%>
       

<%
NewClass obj6 = new NewClass();
obj6.rs= obj6.fetch("select * from contact_info");
int y=1;
while(obj6.rs.next())
       {
    y=y+1;
       }
out.println(""+y);
%>


<% 
          
            if(request.getParameter("submit") != null) 
            {

            
            String nam = request.getParameter("name");
            String address1=request.getParameter("add1");
            String sname = request.getParameter("table");
            String cname = request.getParameter("tablecolumn");
            String pcode = request.getParameter("pincode");
            String cntno = request.getParameter("cn");
            String mail_id = request.getParameter("email");
            String uname = request.getParameter("un");
            String mname = request.getParameter("mname");
            String lname = request.getParameter("lname");
            String add2 = request.getParameter("add2");
            String password = request.getParameter("c_pwd");
           
            NewClass obj1 = new NewClass();
            String st3="Insert into cust_info(c_id,c_name,c_uname,c_pwd,c_mname,c_lname) values ("+x+",'"+nam+"','"+uname+"','"+password+"','"+mname+"','"+lname+"')";
            
            obj1.x = obj1.insert(st3);
            if(obj1.x==0)
               {
                   out.println("<html><script language=\"javascript\">alert('Not Inserted') </script></html>");
               }   
            
             
             NewClass obj3= new NewClass();
            String st4 ="Insert into contact_info(c_id,c_mno,c_email,c_add,c_pincode,c_cityname,c_statename,cx_id,c_add2) values ("+x+",'"+cntno+"','"+mail_id+"','"+address1+"','"+pcode+"','"+cname+"','"+sname+"',"+y+",'"+add2+"')";
        
            obj3.x = obj3.insert(st4);
            if(obj1.x==0)
               {
                   out.println("<html><script language=\"javascript\">alert('Not Inserted') </script></html>");
               }   
            else
               {                 
                out.println("<html><script language=\"javascript\">alert('Successfully Inserted') </script></html>");
                response.sendRedirect("billgen.jsp");
                Thread.sleep(5000);  
             }
                        
           }
            
            
            
        %>

    <jsp:include page="header.jsp"></jsp:include>
    
    <section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Check out</li>
				</ol>
			</div><!--/breadcrums-->

			<div class="step-one">
				<h2 class="heading">Step1</h2>
			</div>
			<div class="checkout-options">
				<h3>New User</h3>
				<p>Checkout options</p>
				<ul class="nav">
					<li>
                                            <a href="login.jsp">Registered Account</a>
					</li>
					<li>
						<a href="#">Guest Account</a>
					</li>
					<li>
						<a href="index.jsp"><i class="fa fa-times"></i>Cancel</a>
					</li>
				</ul>
			</div><!--/checkout-options-->

			
			<div class="shopper-informations">
                            <div class="row" style="padding-top: 25px; padding-left: 25px">
					<div class="col-sm-3">
						<div class="shopper-info">
							<p>Shopper Information</p>
                                                        <form >
								<input type="text" placeholder="Display Name" id="name" onkeypress="return OnlyChar(event);">
								<input type="text" placeholder="User Name" name="un" id="un" onkeypress="return OnlyChar(event);">
								<input type="password" placeholder="Password" name="c_pwd" id="c_pwd" onkeypress="return password_validation(event,c_pwd);">
								<input type="password" placeholder="Confirm password" name="c_con_pwd" id="c_con_pwd" onchange='check_pass();'>
							
						
					<div class="col-sm-5 clearfix">
						<div class="bill-to">
							<p>Bill To</p>
							<div class="form-one">
									<input type="text" placeholder="First Name *" id="name" onkeypress="return OnlyChar(event);">
									<input type="text" placeholder="Middle Name" id="mname" onkeypress="return OnlyChar(event);">
									<input type="text" placeholder="Last Name *" id="lname" onkeypress="return OnlyChar(event);">
                                                                        <input type="text" placeholder="Email*" name="email" >
                                                                        <input type="text" placeholder="Address 1 *" name="add1" onkeypress="return NullField(this);">
									<input type="text" placeholder="Address 2" name="add2" onkeypress="return NullField(this);">
							
							<div class="form-two">
								        <input type="text" placeholder="Zip / Postal Code *" name="pincode" id="pincode" onkeypress="return pincodeValidation(event);"onchange="return NullField(this);" onblur="lengthRestriction(document.getElementById('pincode'), 6, 8)" >
                                                                        <table style="width: 215px; height: 40px; border-color: white; padding: 0px; margin: 0px"><tr class="row1">
                                                                <td class="col1"><select id="table" name="table" placeholder="table name"></select></select> </td></tr><tr class="row1">
                                                        <td class="col1"><select name="tablecolumn" id="tablecolumn" placeholder="tablecolumn"></select></td>
                                                        <script language="javascript">
                                                        populateTables("table", "tablecolumn");
                                                        populateTables("table2");
                                                        </script><br>
                                                        </tr></table>
									
									<input type="password" placeholder="Confirm password"  name="c_con_pwd" id="c_con_pwd" onchange='check_pass();' >
									<input type="text" placeholder="Phone *" name="cn" id="cn" onkeypress="return mobilenoValidation(this);" onblur="lengthRestriction(document.getElementById('cn'), 10, 10)">
									
								
			
			<div class="review-payment">
				<h2>Review & Payment</h2>
			 <div class="payment-options" style="padding-left:300px; padding-top: 15px">
					<span>
						<label><input type="checkbox"> Cash On delivery </label>
					</span>
					
					<span>
						<label><input type="checkbox"> Paypal</label>
					</span>
                                        <span>
                                            <button type= "submit" name="submit" value="submit"><img src="images/cart/continue-button.png"></button>
					</span>
				
                        </form>
                <jsp:include page="cart_detail.jsp"></jsp:include>
			
		</div>
	</section> <!--/#cart_items-->

	


    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
