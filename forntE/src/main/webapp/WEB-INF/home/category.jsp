<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
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
		<link href="<c:url value="/resources/css/category.css" />" rel="stylesheet">

</head>
<body>
<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-chevron-up" aria-hidden="true"></i></button>
<div class="container">
			<div class="row main">
			<img class="roun" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
			
				<div class="main-login main-center">
				<h5>Sign up once and watch any of our free demos.</h5>
					<form:form method="POST"  commandName="category" action="${pageContext.request.contextPath}/admin/category">
					
						<c:if test="${not empty category.categoryName}">
                
                
						<div class="form-group">
							<label for="Category Id" class="cols-sm-2 control-label">Your Category ID</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<form:input type="text" readonly="true" disabled="true" class="form-control" path="categoryId"  placeholder="Enter your Category Id"/>
									<form:hidden path="categoryId"/>
								</div>
							</div>
						</div>
						</c:if>
						<div class="form-group">
							<label for="categoryName" class="cols-sm-2 control-label">Your Category Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" path="categoryName"  placeholder="Enter your Name"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="categoryDescription" class="cols-sm-2 control-label">Your Description</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" path="categoryDescription"  placeholder="Enter your Description"/>
								</div>
							</div>
						</div>

				<c:choose>
                <c:when  test="${not empty category.categoryName}">
                <div class="form-group ">
							<input type="submit" value="Save" id="button" class="btn btn-primary btn-lg btn-block login-button"/>
							
						</div>
                </c:when>
                <c:otherwise>
                <div class="form-group ">
							<input type="submit" value="Category" id="button" class="btn btn-primary btn-lg btn-block login-button"/>
							
						</div>
                </c:otherwise>
                </c:choose>
						
						
					</form:form>
				</div>
			</div>
		</div>
       
        <sec:authorize access="hasRole('ROLE_ADMIN')">
        <h2>All category in System</h2>
    <table class="table table-hover table-condensed table-responsive" style="width:80%;" align="center">
    <thead>
        <tr>
            <th>Category Id</th>
            <th>Category Name</th>
            <th>Category Description</th>
            <th>Edit</th>
            <th>Delete</th>
           
        </tr>
        </thead>
        <c:forEach items="${CategoryList}" var="category">
        <tbody>
            <tr>
                <td>${category.categoryId}</td>
                <td>${category.categoryName}</td>
                <td>${category.categoryDescription}</td>
                <td><a href="${pageContext.request.contextPath}/admin/editcategory/${category.categoryId}">Edit</a></td>  
                <td><a href="${pageContext.request.contextPath}/admin/deletecategory/${category.categoryId}">Delete</a></td>
            </tr>
            </tbody>
        </c:forEach>
    </table>
    </sec:authorize>
  <%@include file="footer.jsp"%>
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
