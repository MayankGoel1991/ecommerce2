<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
 <title>Cost Of Living</title>
 <meta content="width=device-width,initial-scale=1" name=viewport>  
 <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <link href="<c:url value="/resources/css/header.css" />" rel="stylesheet">
<style type="text/css"> #google_translate_element {
    position: absolute;
   top: 5px;
   right: 12px;
   z-index: 1;
 }
 </style>
</head>

<body>
<%-- <div class="" style="float:right;">
      <div class="row" >
      <p class="col"><h5><sec:authentication property="principal.username"/></h5>&nbsp;</p>
<p class="col" style="padding-right:35px;"><h6> <sec:authentication property="principal.authorities"/></h6></p>

</div> --%>
<nav style="text-align: right;background-color: #99b84c;color:#B84C99;padding-right: 10%;  border-bottom: 1px dotted grey;">
<i class="fa fa-phone-square" aria-hidden="true"></i>+91 8287199971 &nbsp;<i class="fa fa-envelope-square" aria-hidden="true"></i>info@costofliving.com

</nav>
 <nav class="navbar navbar-expand-lg navbar-light sticky-top" style="background-color: #99b84c;padding-top:0px;padding-bottom:0px;">
  <a class="navbar-brand" href="#"><img alt="" src="<c:url value="/resources/image/e.png"></c:url>" style="width:100px;height:60px;padding:0px;margin:0px;"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/">Home <span class="sr-only">(current)</span></a>
      </li>
      <%-- <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/category" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Category
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/category">Action</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/category">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/category">Something else here</a>
        </div>
      </li> --%>
      
      
      <%-- <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/supplier" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Supplier
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/supplier">Action</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/supplier">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/supplier">Something else here</a>
        </div>
      </li> --%>
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/product" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Product
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #6e9a00;">
        <p  for="categoryId" class=" text-center">Category List</p>
        <c:forEach var="cat" items="${categoryList}">
        <div class="dropdown-divider"></div>
        <div class="" style=" background-color: #6e9a00;">
        <a class="dropdown-item" href="${pageContext.request.contextPath}/product/${cat.categoryId}" style="font-weight: bold;padding: 10px;width:100%;text-align: center;">${cat.categoryId}</a>
          
          
          </div>
        </c:forEach>
        </div>
      </li>
     
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/contact">Contact <span class="sr-only">(current)</span></a>
      </li>

    </ul>
    <!-- <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form> -->
  
    <ul class="nav navbar-nav navbar-right">
    <sec:authorize access="isAnonymous()">
          <li>
          <a href="${pageContext.request.contextPath}/register"><button type="button" class="btn btn-outline-success"><span class="fa fa-sign-in"></span>Sign Up</button></a>
          <a href="${pageContext.request.contextPath}/login"><button type="button" class="btn btn-outline-info"><span class="fa fa-user fa"></span>login</button></a>
          </li>           
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
          <li>
          <a href="${pageContext.request.contextPath}/LogOut"><button type="button" class="btn btn-outline-dark"><span class="fa fa-sign-out"></span>logOut</button> </a>
          </li>
    </sec:authorize>
    	<li> 
    	<a href="${pageContext.request.contextPath}/cart/addTocart/${Product.productId}"> <button type="button" class="btn btn-outline-warning"><span class="fa fa-shopping-cart"></span>Cart</button></a>
    	</li>
    </ul>
    
  </div>

</nav>
<nav class="navbar navbar-right" style="background-color: #b6cc7f!important;padding-top:0px;padding-bottom:0px;>
    <span class="navbar-text">
      
  
    	<div id="google_translate_element"></div>
    	
    </span>
</nav>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
 
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script type="text/javascript">$('.dropdown-toggle').dropdown()</script>
</body>

<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script>
<script type="text/javascript">
$(".dropdown").hover(
 function() {
    $('.dropdown-menu').collapse('show');
  }, function() {
    $('.dropdown-menu').collapse('hide');
  }
);
</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</html>
