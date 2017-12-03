/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$( "#lkbuybtn" ).click(function() {
    
  var items = {};
// save all the items
    simpleCart.each(function (item) {
	items[item.id()] = simpleCart.extend(item.fields(), item.options());
    });
  alert( "Handler for .click() called." +JSON.stringify(items));
});
