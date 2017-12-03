
<html>
<head>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Sign Up | Online Grocery Store </title>
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
          <script type="text/javascript">

// State lists
var states = new Array();

var states = new Array();
states['a_info'] = new Array('a_name','a_pwd');
states['cust_info'] = new Array('c_name','c_uname','c_pwd','c_paypal');
states['contact_info'] = new Array('c_mno','c_email','c_add','c_pincode','c_cityname','c_statename');
states['basic_products'] = new Array('p_name','p_photo','categ','p_code');
states['price_products'] = new Array('p_code','s_id','p_price');
states['shop_info'] = new Array('shop_name','s_uname','s_pwd','s_mailid');
states['place_order'] = new Array('quant','c_email','c_add','c_mno','p_price');
states['product_info']= new Array('p_name','p_photo','s1_price','s2_price','s3_price');

// City lists
var cities = new Array();

cities['a_info'] = new Array();
cities['a_info']['a_name'] = new Array('a_id');
cities['a_info']['a_pwd']  = new Array('a_id');

cities['cust_info'] = new Array();
cities['cust_info']['c_name'] = new Array('c_id');
cities['cust_info']['c_uname'] = new Array('c_id');
cities['cust_info']['c_pwd'] = new Array('c_id');
cities['cust_info']['c_paypal'] = new Array('c_id');


cities['contact_info'] = new Array();
cities['contact_info']['c_mno'] = new Array('cx_id');
cities['contact_info']['c_email'] = new Array('cx_id');
cities['contact_info']['c_add'] = new Array('cx_id');
cities['contact_info']['c_pincode'] = new Array('cx_id');
cities['contact_info']['c_cityname'] = new Array('cx_id');
cities['contact_info']['c_statename'] = new Array('cx_id');


cities['basic_products'] = new Array();
cities['basic_products']['p_name']= new Array('p_id');
cities['basic_products']['p_photo']= new Array('p_id');
cities['basic_products']['categ']= new Array('p_id');
cities['basic_products']['p_code']= new Array('p_id');

cities['price_products'] = new Array();
cities['price_products']['p_code'] = new Array('px_id');
cities['price_products']['s_id']= new Array('px_id');
cities['price_products']['p_price'] = new Array('px_id');


cities['shop_info'] = new Array();
cities['shop_info']['shop_name']= new Array('s_id');
cities['shop_info']['s_uname'] = new Array('s_id');
cities['shop_info']['s_pwd'] = new Array('s_id');
cities['shop_info']['s_mailid']= new Array('s_id');

cities['place_order'] = new Array();
cities['place_order']['quant']= new Array('p_id');
cities['place_order']['c_email']  = new Array('p_id');
cities['place_order']['c_add']  = new Array('p_id');
cities['place_order']['c_mno'] = new Array('p_id');
cities['place_order']['p_price']  = new Array('p_id');


cities['product_info'] = new Array();
cities['product_info']['p_name'] = new Array('p_id');
cities['product_info']['p_photo'] = new Array('p_id');
cities['product_info']['s1_price'] = new Array('p_id');
cities['product_info']['s2_price'] = new Array('p_id');
cities['product_info']['s3_price'] = new Array('p_id');

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
                <option value="product_info">product_info</option>
                </select>
                </td>
                </tr><tr>
                <td style="text-align: left;">Table Name:</td>
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