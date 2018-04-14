<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cost Of Living</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


 <!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="style.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
		<link href="<c:url value="/resources/css/cart.css" />" rel="stylesheet">

</head>
<body style="background-color: #e7f8ff !important;">
<%@include file="header.jsp" %>
<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-chevron-up" aria-hidden="true"></i></button>
<h1>${greetings}</h1>
<div class="wrap cf">
  <h1 class="projTitle"> <span>Shopping </span> Cart</h1>
  <div class="heading cf">
    <h1>My  Cart</h1>
    <a href="#" class="continue">Continue Shopping</a>        
  </div>
  <div class="cart">
   <ul class="tableHead">
      <li class="prodHeader">Product</li>
      <li>Quantity</li>
      <li>Total</li>
       <li>Remove</li>
    </ul>

        
        <%--  <li class="items odd">
        
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
  
      
          
       <ul>
      <li class="items even">
      <%-- <c:forEach items="${productCartList}" var="Cart"> --%>  
       <div class="infoWrap"> 
       
        <div class="cartSection info">
        
             
        <img src="<c:url value="/resources/image/${Cart.cartId}.jpg"></c:url>" alt="" class="itemImg" />
          <p class="itemNumber">#QUE-007544-002 ${Cart.cartId}</p>
          <h3>Item Name 1</h3>
        
          <p><input type="text"  class="qty" placeholder="3"/>   ${Cart.cartQuantity} x $5.00</p>
        
          <p class="stockStatus"> In Stock</p>
           
          
        </div>  
    
        
        <div class="prodTotal cartSection">
          <p>${Cart.cartTotalAmount}</p>
        </div>
    
            <div class="cartSection removeWrap">
           <a href="#" class="remove">x</a>
        </div>
         </div>
         <%-- </c:forEach> --%>
         <div class="special"><div class="specialContent">Free gift with purchase!, gift wrap, etc!!</div></div>
      </li>
      </ul>
            
      <!--<a href="${pageContext.request.contextPath}/cart" class="card-link"><span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</a>
		    <a href="${pageContext.request.contextPath}/product/shopping_cart/${Item.productId}" class="card-link"><span class="glyphicon glyphicon-plus"></span> More</a>
		 -->        

  <div class="promoCode"><label for="promo">Have A Promo Code?</label><input type="text" name="promo" placholder="Enter Code" />
  <a href="#" class="btn"></a></div>
  
  <div class="subtotal cf">
    <ul>
      <li class="totalRow"><span class="label">Subtotal</span><span class="value">$35.00</span></li>
      
          <li class="totalRow"><span class="label">Shipping</span><span class="value">$5.00</span></li>
      
            <li class="totalRow"><span class="label">Tax</span><span class="value">$4.00</span></li>
            <li class="totalRow final"><span class="label">Total</span><span class="value">$44.00</span><p style="    font-weight: normal;
    font-size: 12px;width:175px; float:right;   text-align: start;  text-transform: none;" class="include-all-taxes">(Incl. all taxes &amp; shipping. Discount code, if any, can be entered on subsequent pages)</p></li>
      <li class="totalRow"><a href="#" class="btn continue">Checkout</a></li>
      
      
    </ul>
    
  </div>

    </div>
       </div>
        
        <%-- <h2>All cart in System</h2>
    <table class="table table-hover table-condensed table-responsive" style="width:80%" align="center">
    <thead>
        <tr>
            <th>Cart Id</th>
            <th>Cart Name</th>
            <th>Cart price</th>
            <th>Cart cartQuantity</th>
            <th>Cart Description</th>
            <th>cart amount</th>
            <th>cart status</th>
            <th>Edit</th>
            <th>Delete</th>
           
        </tr>
        </thead>
        <c:forEach items="${CartList}" var="cart">
        <tbody>
            <tr>
                <td>${cart.cartId}</td>
                <td>${cart.cartName}</td>
                <td>${cart.cartPrice}</td>
                <td>${cart.cartQuantity}</td>
                <td>${cart.cartDescription}</td>
                <td>${cart.cartAmount}</td>
                <td>${cart.cartStatus}</td>
                <td><a href="editcart/${cart.cartId}">Edit</a></td>  
                <td><a href="deletecart/${cart.cartId}">Delete</a></td>
            </tr>
            </tbody>
        </c:forEach>
    </table> --%>
  <script type="text/javascript">
//Remove Items From Cart
$('a.remove').click(function(){
  event.preventDefault();
  $( this ).parent().parent().parent().hide( 400 );
 
})

// Just for testing, show all items
  $('a.btn.continue').click(function(){
    $('li.items').show(400);
  })
</script>
<script>
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
</script>
  <%@include file="footer.jsp"%>
</body>
</html>
