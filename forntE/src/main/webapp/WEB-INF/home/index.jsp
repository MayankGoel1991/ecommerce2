<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<title>Cost Of Living</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

 <!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="style.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
		 <link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="<c:url value="/resources/css/hover.css" />" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>

<sec:authorize access="hasRole('ROLE_ADMIN')">
<jsp:forward page="/admin"></jsp:forward>
</sec:authorize>


<%@include file="header.jsp" %>
<button onclick="topFunction()" id="myBtn" title="Go to top" class=""><i class="fa fa-chevron-up" aria-hidden="true"></i></button><!--hvr-icon-bob animated bounce infinite btn3d  -->
<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="w3-hover-sepia" src="<c:url value="/resources/image/cost-of-living.jpg"></c:url>" alt="Los Angeles" width="100%" height="500">
      <div class="carousel-caption">
        <h3>Los Angeles</h3>
        <p>We had such a great time in LA!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img class="w3-hover-sepia" src="<c:url value="/resources/image/E-commerce-banner.jpg"></c:url>" alt="Chicago" width="100%" height="500">
      <div class="carousel-caption">
        <h3>Chicago</h3>
        <p>Thank you, Chicago!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img class="w3-hover-sepia" src="<c:url value="/resources/image/chi-phi-du-hoc-canada-theo-dien-visa-ces.png"></c:url>" alt="New York" width="100%" height="500">
      <div class="carousel-caption">
        <h3>New York</h3>
        <p>We love the Big Apple!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img class="w3-hover-sepia" src="<c:url value="/resources/image/e-commerce.jpg"></c:url>" alt="New York" width="100%" height="500">
      <div class="carousel-caption">
        <h3>Belgium</h3>
        <p>We love this place!</p>
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next"><!--hvr-icon-wobble-horizontal  -->
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

<div class="row">
					<div class="col-sm-10 col-md-10">
						<div class="section-title my-title1" style="  text-align: center;  margin-bottom: 5px !important;">
							<h3>Popular Experiential Destinations</h3>
					</div>
				</div>
<div class="container" style="padding-bottom: 120px;">
  <div class="row">
    <div class="col-sm-3" style="text-align: center;">
              <img class="card-img-top" style="height: 150%;" src="/forntE/resources/image/gas-station-pictures-13.png" alt="Image">1/4 gallon of gas
    </div>
    <div class="col-sm-6" style="text-align: center;">
              <img class="card-img-top" src="/forntE/resources/image/8.png" alt="Image">Local cheese

    </div>
    <div class="col-sm-3" style="text-align: center;">
             <img class="card-img-top" style="height: 150%;" src="/forntE/resources/image/3.png" alt="Image">Big Mac Meal 
    </div>
  </div>
  
  
  <div class="row">
    <div class="col-sm-3">

    </div>
    <div class="col-sm-6">
    <div class="row">
    <div class="col-sm-6 me" style="text-align: center;">
		<img class="card-img-top" src="/forntE/resources/image/35.png" alt="Image" style="padding-top: 15px;">Flat screen TV
    </div>
    <div class="col-sm-6 me" style="text-align: center;">
		<img class="card-img-top" src="/forntE/resources/image/14.jpg_large" alt="Image" style="padding-top: 15px;">Coca-Cola
    </div>
    </div>
    </div>
    <div class="col-sm-3">

    </div>
  </div>
</div>






<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="padding:0px;">
  <ol class="carousel-indicators" style="bottom: 40px;">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner w3-container w3-center w3-animate-left">
    <div class="carousel-item active" >
		<div class="card-group">
		
  		<div class="col-sm-4 goel">
        <div class="card text-center  border-0 text-white">
       <img class="roun" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
       <a href="${pageContext.request.contextPath}/product/${Product.productId}">
        <img  class="card-img-top" src="/forntE/resources/image/1.jpg" alt="Image">
        </a>
		  <div class="card-body">
		    <h5 class="card-title">Basic lunchtime menu (including a drink) </h5>
		    
		    <p class="card-text">Under&nbsp;<i class="fa fa-inr" aria-hidden="true"></i> 374.0</p>
    <p class="card-text"></p><h6 class="card-subtitle mb-2 text-muted">In the business district</h6><p></p>


		  </div>
		</div>           		
		</div>
  <div class="col-sm-4 goel">
        <div class="card text-center  border-0 text-white">
       <img class="roun" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
        <img class="card-img-top" src="/forntE/resources/image/1.jpg" alt="Image">
		  <div class="card-body">
		    <h5 class="card-title">Basic lunchtime menu (including a drink) </h5>
		    
		    <p class="card-text">Under&nbsp;<i class="fa fa-inr" aria-hidden="true"></i> 374.0</p>
    <p class="card-text"></p><h6 class="card-subtitle mb-2 text-muted">In the business district</h6><p></p>
 
		  </div>
		</div>           		
		</div>
  <div class="col-sm-4 goel">
        <div class="card text-center  border-0 text-white">
       <img class="roun" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
        <img class="card-img-top" src="/forntE/resources/image/1.jpg" alt="Image">
		  <div class="card-body">
		    <h5 class="card-title">Basic lunchtime menu (including a drink) </h5>
		    
		    <p class="card-text">Under&nbsp;<i class="fa fa-inr" aria-hidden="true"></i> 374.0</p>
    <p class="card-text"></p><h6 class="card-subtitle mb-2 text-muted">In the business district</h6><p></p>

		  </div>
		</div>           		
		</div>
</div>
    </div>
    <div class="carousel-item ">
<div class="card-group">
  
  <div class="col-sm-4 goel">
        <div class="card text-center  border-0 text-white">
       <img class="roun" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
        <img class="card-img-top" src="/forntE/resources/image/1.jpg" alt="Image">
		  <div class="card-body">
		    <h5 class="card-title">Basic lunchtime menu (including a drink) </h5>
		    
		    <p class="card-text">Under&nbsp;<i class="fa fa-inr" aria-hidden="true"></i> 374.0</p>
    <p class="card-text"></p><h6 class="card-subtitle mb-2 text-muted">In the business district</h6><p></p>

		  </div>
		</div>           		
		</div>
 <div class="col-sm-4 goel">
        <div class="card text-center  border-0 text-white">
       <img class="roun" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
        <img class="card-img-top" src="/forntE/resources/image/1.jpg" alt="Image">
		  <div class="card-body">
		    <h5 class="card-title">Basic lunchtime menu (including a drink) </h5>
		    
		    <p class="card-text">Under&nbsp;<i class="fa fa-inr" aria-hidden="true"></i> 374.0</p>
    <p class="card-text"></p><h6 class="card-subtitle mb-2 text-muted">In the business district</h6><p></p>

		  </div>
		</div>           		
		</div>
  <div class="col-sm-4 goel">
        <div class="card text-center  border-0 text-white">
       <img class="roun" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
        <img class="card-img-top" src="/forntE/resources/image/1.jpg" alt="Image">
		  <div class="card-body">
		    <h5 class="card-title">Basic lunchtime menu (including a drink) </h5>
		    
		    <p class="card-text">Under&nbsp;<i class="fa fa-inr" aria-hidden="true"></i> 374.0</p>
    <p class="card-text"></p><h6 class="card-subtitle mb-2 text-muted">In the business district</h6><p></p>

		  </div>
		</div>           		
		</div>
</div>
    </div>
    <div class="carousel-item ">
<div class="card-group">
  <div class="col-sm-4 goel">
        <div class="card text-center  border-0 text-white">
       <img class="roun" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
        <img class="card-img-top" src="/forntE/resources/image/1.jpg" alt="Image">
		  <div class="card-body">
		    <h5 class="card-title">Basic lunchtime menu (including a drink) </h5>
		    
		    <p class="card-text">Under&nbsp;<i class="fa fa-inr" aria-hidden="true"></i> 374.0</p>
    <p class="card-text"></p><h6 class="card-subtitle mb-2 text-muted">In the business district</h6><p></p>

		  </div>
		</div>           		
		</div>
  <div class="col-sm-4 goel">
        <div class="card text-center  border-0 text-white">
       <img class="roun" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
        <img class="card-img-top" src="/forntE/resources/image/1.jpg" alt="Image">
		  <div class="card-body">
		    <h5 class="card-title">Basic lunchtime menu (including a drink) </h5>
		    
		    <p class="card-text">Under&nbsp;<i class="fa fa-inr" aria-hidden="true"></i> 374.0</p>
    <p class="card-text"></p><h6 class="card-subtitle mb-2 text-muted">In the business district</h6><p></p>

		  </div>
		</div>           		
		</div>
  <div class="col-sm-4 goel">
        <div class="card text-center  border-0 text-white">
       <img class="roun" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
        
        <img class="card-img-top" src="/forntE/resources/image/1.jpg" alt="Image">
		  <div class="card-body">
		    <h5 class="card-title">Basic lunchtime menu (including a drink) </h5>
		    
		    <p class="card-text">Under&nbsp;<i class="fa fa-inr" aria-hidden="true"></i> 374.0</p>
    <p class="card-text"></p><h6 class="card-subtitle mb-2 text-muted">In the business district</h6><p></p>

		  </div>
		</div>           		
		</div>
</div>
    </div>
    
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true" style="background-color: #e7f8ff!important;"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"  style="background-color: #e7f8ff!important;"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<%--  <h2>product added in System</h2> 
        <div class="card-group" style="width:80%;margin:0 auto;">
        <c:forEach items="${productCatList}" var="Product"> 
        
        <div class="">
        <div class="card text-center  border-light mb-3 ">
        <img src="<c:url value="/resources/image/${Product.productId}.jpg"></c:url>" alt="Image" style="height: 200px;width: 200px;">
		  <div class="card-body">
		    <h5 class="card-title">${Product.pName}</h5>
		    
		    <p class="card-text" style="color: #388e3c;padding-top: 8px;white-space: nowrap;
    overflow: hidden;">Under$ ${Product.pPrice}</p>
    <p class="card-text"><h6 class="card-subtitle mb-2 text-muted">${Product.pDescription}</h6></p>
		    <a href="#" class="card-link"><span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</a>
		    <a href="${pageContext.request.contextPath}/product/shopping_cart/${Product.productId}" class="card-link"><span class="glyphicon glyphicon-plus"></span> More</a>
		  </div>
		</div>           
		</div>
		
        </c:forEach>
    </div> --%>
    <div id="run">
     <div class="container marketing">
	<h2 style="text-align: center!important;">OUR TEAM</h2><p style="text-align: center!important;">Meet the team - our office rats:</p>
        <!-- Three columns of text below the carousel -->
        <div class="row">
          <div class="col-lg-4">
            <img class="rounded-circle" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
            <h2>Johnny Walker</h2>
            <p>Web Designer</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i></a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
            <h2>Rebecca Flex</h2>
            <p>Support</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &nbsp; <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
            <h2>Jan Ringo</h2>
            <p>Boss man</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i></a></p>
          </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
      </div>
      </div>
      <img id="unique" alt="image" src="<c:url value="/resources/image/Web-Application-Development-Case-Study-Banner.png"></c:url>">
<%@include file="footer.jsp" %>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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