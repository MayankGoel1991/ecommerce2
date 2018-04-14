<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
		
<body style="padding:0px;background: url(http://subtlepatterns.com/patterns/project_papper.png);">
<%@include file="header.jsp" %>
	<h1>Title : ${greeting}</h1>
	<h1>Message : ${greeting}</h1>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      
      <li class="nav-item dropdown" style="background-color: #f0ad4e;">
        <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/category" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Category
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #f0ad4e;">
        <label  for="categoryId" class="cols-sm-2 control-label">Category List</label>
        <c:forEach var="category" items="${CategoryList}">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/category/${category.categoryId}">${category.categoryId}</a>
          <div class="dropdown-divider"></div>
          </c:forEach>
        </div>
      </li>
      
      
      <li class="nav-item dropdown" style="    background-color: #5cb85c;">
        <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/supplier" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Supplier
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="    background-color: #5cb85c;">
        <label  for="supplierId" class="cols-sm-2 control-label">Supplier List</label>
          <c:forEach var="supplier" items="${SupplierList}">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/supplier/${supplier.supplierId}">${supplier.supplierId}</a>
          <div class="dropdown-divider"></div>
          </c:forEach>
        </div>
      </li>
      
      
      
      
      <li class="nav-item dropdown" style="    background-color: #0275d8;">
        <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/product" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Product category
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="    background-color: #0275d8;">
        <label  for="categoryId" class="cols-sm-2 control-label">Category List</label>
        <c:forEach var="cat" items="${categoryList}">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/product/${cat.categoryId}">${cat.categoryId}</a>
          <div class="dropdown-divider"></div>
        </c:forEach>
        </div>
      </li>
      
      
      <li class="nav-item dropdown" style="    background-color: #d9534f;">
        <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/product" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Product 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="    background-color: #d9534f;">
        <label  for="productId" class="cols-sm-2 control-label">Product List</label>
        <c:forEach var="product" items="${ProductList}">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/product/${product.productId}">${product.productId}</a>
          <div class="dropdown-divider"></div>
        </c:forEach>
        </div>
      </li>
      
      
      <li class="nav-item" style="    background-color: #0275d8;">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/category" role="button">
          Category 
        </a>
      </li>
      
      <li class="nav-item" style="    background-color: #5cb85c;">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/product"  role="button">
          Product 
        </a>
      </li>
      
    </ul>
  </div>
</nav>	
     

	<c:if test="${pageContext.request.userPrincipal.name != null}">
	   <h2>Welcome : ${pageContext.request.userPrincipal.name}
           | <a href="<c:url value="/LogOut" />" > Logout</a></h2>
	</c:if>
	<%@include file="footer.jsp" %>
</body>
</html>