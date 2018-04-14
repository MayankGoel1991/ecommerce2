<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp" %>
<!DOCTYPE htm>
<html>
<head>
<title>Cost Of Living</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">

 <!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
		<link href="<c:url value="/resources/css/item.css" />" rel="stylesheet"> 

</head>
<body>
 <button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-chevron-up" aria-hidden="true"></i></button>
		
	<div class="wrap cf">
	  <h1 class="projTitle"> <span>Shopping </span> Item</h1>
	  <div class="heading cf">
	    <h1>My Item</h1>
	    <a href="${pageContext.request.contextPath}/" class="continue">Continue Shopping</a>        
	  </div>
     
      <div class="">
		<table id="cart" class="table table-hover table-condensed">
  				<thead>
			<tr>
				<th style="width:20%!important;">Product</th>
				<th style="width:10%!important;">Price</th>
				<th style="width:10%!important;">Quantity</th>
				<th style="width:10%!important;" class="text-center">Subtotal</th>
				<th style="width:25%!important;"></th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${listItem}" var="item">  
				<tr>
				<td data-th="Product">
					<div class="row">
						<div class="col-sm-4 hidden-xs" style="padding: 0px;"><img src="<c:url value="/resources/image/${Prouduct.pTraImgFile}"></c:url>" alt="..." class="img-responsive itemImg"/></div>
						<div class="col-sm-8">
						<p class="itemNumber">#QUE-007544- ${item.itemId}</p>
						<h4 class="nomargin">Product: ${item.product.productId}</h4>
						<p>${item.product.pDescription}.</p>
						<p class="stockStatus"> In Stock</p> 
						</div>
					</div>
				</td>
				<td data-th="Price">${item.product.pPrice}</td>
				<td data-th="Quantity">
					<%-- <input type="number" class="form-control text-center" value=" ${itemQuantity} "> --%>${item.itemQuantity}x Rs ${item.product.pPrice}
				</td>
				<td data-th="Subtotal" class="text-center">${item.itemTotalAmount}</td>
				<td class="actions" data-th="remove">
					<button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
					<button class="btn btn-danger btn-sm remove"><i class="fa fa-trash-o"></i></button>								
				</td>
				</tr>
			</c:forEach>
			</tbody>
			<tfoot>
			<tr class="items even">					
    					<td class="special"><div class="specialContent">Free gift with purchase!, gift wrap, etc!!</div></td>      
			</tr>
			<tr>
				<td><a href="${pageContext.request.contextPath}/" class="btn btn-warning continue">Continue Shopping</a></td>
				<td colspan="2" class="hidden-xs"></td>
				<td class="totalRow"><a href="${pageContext.request.contextPath}/checkout" class="btn btn-success btn-block continue">Checkout</a></td>
			</tr>
			</tfoot>
		</table>
	</div>

      
      
      <%-- <li class="items odd">        
    <div class="infoWrap"> 
        <div class="cartSection">
        <img src="<c:url value="/resources/image/${Item.itemId}.jpg"></c:url>" alt="" class="itemImg" />
          <p class="itemNumber">#QUE-007544-002</p>
          <h3>Item Name 1</h3>        
           <p> <input type="text"  class="qty" placeholder="3"/>${Item.itemQuantity} x $5.00</p>        
          <p class="stockStatus out"> Out of Stock</p>
        </div>    
        
        <div class="prodTotal cartSection">
          <p>Under$ ${Item.itemTotalAmount}</p>
        </div>
              <div class="cartSection removeWrap">
           <a href="#" class="remove">x</a>
        </div>
      </div>
      </li> --%>	

  <div class="promoCode"><label for="promo">Have A Promo Code?</label><input type="text" name="promo" placholder="Enter Code" disabled/>
  <a href="#" class="btn" disabled></a></div>
  
  <div class="subtotal cf">
    <ul>
    
      <li class="totalRow"><span class="label"><strong>Subtotal</strong></span><span class="value">$5.00${item.itemTotalAmount}</span></li>
      
      <li class="totalRow"><span class="label">Shipping</span><span class="value">$5.00</span></li>
      
      <li class="totalRow"><span class="label">Tax</span><span class="value">$4.00</span></li>
      <li class="totalRow final"><span class="label">Total</span><span class="value">$44.00</span>
      	<p class="include-all-taxes">
       (Incl. all taxes &amp; shipping. Discount code, if any, can be entered on subsequent pages)
       	</p>
       </li>
      
    </ul>    
  </div>
</div>

    <%-- <h2>All item in System</h2>
    <table class="table table-hover table-condensed table-responsive" style="width:80%" align="center">
    <thead>
        <tr>
            <th>Item Id</th>
            <th>Item Name</th>
            <th>Item price</th>
            <th>item quantity</th>
            <th>Item Description</th>
            <th>item amount</th>
            <th>Edit</th>
            <th>Delete</th>           
        </tr>
        </thead>
        <c:forEach items="${ItemList}" var="item">
        <tbody>
            <tr>
                <td>${item.itemtId}</td>
                <td>${item.itemName}</td>
                <td>${item.itemPrice}</td>
                <td>${item.itemQuantity}</td>
                <td>${item.itemDescription}</td>
                <td>${item.itemAmount}</td>
                <td><a href="edititem/${item.itemtId}">Edit</a></td>  
                <td><a href="deleteitem/${item.itemtId}">Delete</a></td>
            </tr>
            </tbody>
        </c:forEach>
    </table> --%>	
  <%@include file="footer.jsp"%>
<!--   <script type="text/javascript">
//Remove Items From Cart
$('a.remove').click(function(){
  event.preventDefault();
  $( this ).parent().parent().parent().hide( 400 );
 
})

// Just for testing, show all items
  $('a.btn.continue').click(function(){
    $('li.items').show(400);
  })
</script> -->
<!-- <script type="text/javascript">
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script> -->
</body>
</html>