

// Tables
var table_arr = new Array("a_info", "basic_products", "contact_info", "cust_info", "place_order", "price_products", "shop_info");

// Columns
var s_a = new Array();
s_a[0]="";
s_a[1]="a_id|a_name";
s_a[2]="p_id|p_name|p_code|categ";
s_a[3]="cx_id|c_id";
s_a[4]="c_id|c_name|c_uname|c_paypal";
s_a[5]="p_id|c_id";
s_a[6]="px_id|p_code|s_id";
s_a[7]="s_id|shop_name|s_uname|s_pwd";


function populateColumns( tableElementId, columnElementId ){
	
	var selectedTableIndex = document.getElementById( tableElementId ).selectedIndex;

	var columnElement = document.getElementById( columnElementId );
	
	columnElement.length=0;	// Fixed by Julian Woods
	columnElement.options[0] = new Option('Select Column','');
	columnElement.selectedIndex = 0;
	
	var column_arr = s_a[selectedTableIndex].split("|");
	
	for (var i=0; i<column_arr.length; i++) {
		columnElement.options[columnElement.length] = new Option(column_arr[i],column_arr[i]);
	}
}

function populateTables(tableElementId, columnElementId){
	// given the id of the <select> tag as function argument, it inserts <option> tags
	var tableElement = document.getElementById(tableElementId);
	tableElement.length=0;
	tableElement.options[0] = new Option('Select Table','-1');
	tableElement.selectedIndex = 0;
	for (var i=0; i<table_arr.length; i++) {
		tableElement.options[tableElement.length] = new Option(table_arr[i],table_arr[i]);
	}

	// Assigned all countries. Now assign event listener for the columns.

	if( columnElementId ){
		tableElement.onchange = function(){
			populateColumns( tableElementId, columnElementId );
		};
	}
}