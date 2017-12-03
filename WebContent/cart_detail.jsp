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
    <title>Cart | Online Grocery Store </title>
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
<!--CSS for the Cart. Customize anything you damn well please.
		Use Firebug or Webkit's Element Inspector to get a more 
		indepth idea of what simpleCart Generates.
	-->
	<style>
		.cartHeaders,.totalRow{display:none;}
		.simpleCart_items{
			overflow-y:auto;
			overflow-x:hidden;
			height:324px;
                        width:90%;
			margin-left: 50px;
			margin-bottom:20px;
		}
                table{
                    padding: 0px;
                    width:100%;
                    border: black solid 1px;
                }
		.itemContainer{
			clear:both;
			width:229px;
			padding:11px 0;
			font-size:11px;
		}
		.itemImage{
			float:left;
			width:60px;
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
		.itemQuantity input{
			width:20px;
			border:1px solid #ccc;
			padding:3px 2px;
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
                td.item-decrement{
                    background-image: url("images/cart/download.jpg");
                    background-repeat: no-repeat;
                   background-position-y: 15px;
                   float:right; 
                }
                td.item-increment{
                    background-image: url("images/cart/download1.jpg");
                    background-repeat: no-repeat;
                   background-position-y: 15px;
                   background-position-x: 0px;
                   float: left;
                }
                a.simpleCart_decrement{
                  color: #F79227;
                }
                a.simpleCart_increment{
                  color: #F79227;
                }
                th{
                    padding: 25px;
                    font-family: serif;
                    font-size: 25px;
                    
                }
                
                a.simpleCart_remove{
                  color: #F79227;
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
       
                                        <div class="simpleCart_items" ></div>
				
				
       <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>

</html>
