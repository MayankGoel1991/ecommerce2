<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Cost Of Living</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="<c:url value="/resources/css/product_added.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 
<link href="<c:url value="/resources/css/hover.css" />" rel="stylesheet">
</head>
<body>   
<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-chevron-up" aria-hidden="true"></i></button>
        <div class="row">
        <c:forEach items="${productCatList}" var="pro"> 
        <div class="col-sm-4 goel w3-container w3-center w3-animate-left ">
        <div class="card text-center  border-0 text-white  hvr-curl-bottom-right ">
        <img class="card-img-top"" src="<c:url value="/resources/image/${pro.pTraImgFile}"></c:url>" alt="Image">
		  <div class="card-body">
		    <h5 class="card-title">${pro.pName}</h5>		    
		    <p class="card-text">Under&nbsp;<i class="fa fa-inr" aria-hidden="true"></i> ${pro.pPrice}</p>
    		<p class="card-text"><h6 class="card-subtitle mb-2 text-muted">${pro.pDescription}</h6></p>
			<form method=""  action="${pageContext.request.contextPath}/cart/baddTocart/${pro.productId}">
				<button class="button yellow hvr-buzz">
				<div class="title">
				Add to cart
				</div>
				<div class="price"><i class="fa fa-shopping-cart" aria-hidden="true"></i></div>
				</button>
			</form>
			
			<button class="button green hvr-buzz"><!--  hvr-icon-float-away  hvr-ripple-out -->
			<a href="${pageContext.request.contextPath}/product/shopping_cart/${pro.productId}">
				<div class="title">
				<span class="" aria-hidden="true"></span>More
				</div>
				<div class="price"><i class="fa fa-plus-circle" aria-hidden="true"></i></div>
				</a>
			</button>

		  </div>
		</div>           		
		</div>
        </c:forEach>
    </div>
    

<div class="container">
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/">Home</a></li>
    <li class="breadcrumb-item active" aria-current="page">Product</li>
  </ol>
</nav>
</div>
<%@include file="footer.jsp" %> 
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
</body>
</html>