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

    </head>
    <style type="text/css">
        form{
            padding-left:300px;
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

		.cartHeaders,.totalRow{display:none;}
		.simpleCart_items{
			overflow-y:auto;
			overflow-x:hidden;
			height:324px;
                        width:100%;
			margin-left: 300px;
			margin-bottom:20px;
		}
                table{
                    width:900px;
                    border: black solid 1px;
                }
		.itemContainer{
			clear:both;
			width:229px;
			padding:11px 0;
			font-size:11px;
		}
		
		.itemName{
			float:left;
			width:85px;
                        padding-left: 50px;
		}
		.itemPrice{
			float:left;
			width:85px;
			color:#F79227;
                        padding-left: 50px;
		}
		.itemQuantity{
			float:left;
			width:33px;
			margin-top:-12px;
			vertical-align:middle;
                        padding-left: 50px;
		}
				
		.itemTotal{
			float:left;
			color:#c23f26;
			margin-top:-6px;
                        padding-left: 50px;
		}
                td.item-quantity{
                    width:75px;
                }
                
               
                a.simpleCart_decrement{
                  font-size: 0px;
                }
                a.simpleCart_increment{
                  font-size: 0px;
                }
                th{
                    padding: 25px;
                    font-family: serif;
                    font-size: 25px;
                    
                }
                
                a.simpleCart_remove{
                  font-size: 0px;
                }
                
                td{
                    padding: 25px;
                    font-size: 25px;
                    
                }
                tr{
                    padding: 25px;
                    font-family: serif;
                    font-size: 15px;
                    border: black solid 1px;
                }
                tr.headerRow{
                        background-color: rgb(254, 152, 15);
                    
                }
                
    </style>
    <body>
  

       
        

           
 


      <jsp:include page ="header.jsp"></jsp:include>
      <jsp:include page ="cdetail.jsp"></jsp:include>
         <div class="simpleCart_items" ></div>
				 
         
         <a href ="successful.jsp"><img src="images/cart/cod.png" style="padding-left: 550px; padding-right: 5px" /></a>
         <a href="javascript:;" class="simpleCart_checkout"><img src="images/cart/paypal.png"/></a>
         </form>                  
        <jsp:include page="footer.jsp"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>	
   
	
	
        
    </body>
</html>

