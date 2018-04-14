<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Cost Of Living</title>
<link href="<c:url value="/resources/css/supplier.css" />" rel="stylesheet">

</head>
<body style="background-color: #e7f8ff !important;">
<%@include file="header.jsp" %>
<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-chevron-up" aria-hidden="true"></i></button>
<div class="container">
			<div class="row main">
		<img class="roun" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
			
				<div class="main-login main-center">
				<h5>Sign up once and watch any of our free demos.</h5>
					<form:form method="POST"  commandName="supplier" action="${pageContext.request.contextPath}/supplier">
					
						<c:if test="${not empty supplier.sName}">
                
               
						<div class="form-group">
							<label for="supplierId" class="cols-sm-2 control-label">Your Supplier ID</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<form:input type="text" readonly="true" disabled="true" class="form-control" path="supplierId"  placeholder="Enter your Supplier Id"/>
									<form:hidden path="supplierId"/>
								</div>
							</div>
						</div>
						</c:if>
						<div class="form-group">
							<label for="sName" class="cols-sm-2 control-label">Your Supplier Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" path="sName"  placeholder="Enter your Name"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="sDescription" class="cols-sm-2 control-label">Your Description</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" path="sDescription"  placeholder="Enter your Description"/>
								</div>
							</div>
						</div> 
						
						<c:choose>
                <c:when test="${not empty supplier.sName}">
                <div class="form-group ">
							<input type="submit" value="Save" id="button" class="btn btn-primary btn-lg btn-block login-button"/>
							
						</div>
                
                </c:when>
                <c:otherwise>
                <div class="form-group ">
							<input type="submit" value="supplier" id="button" class="btn btn-primary btn-lg btn-block login-button"/>
							
						</div>
                
                </c:otherwise>
                </c:choose>
                </form:form>
                    
        </div>
        </div>
        </div>
        <sec:authorize access="hasRole('ROLE_ADMIN')">
        <h2>All supplier in System</h2>
        <table class="table table-hover  table-responsive" style="width:80%" align="center">
        
   		<thead>
        <tr>
            <th>Supplier Id</th>
            <th>Supplier Name</th>
            <th>Supplier Description</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <c:forEach items="${SupplierList}" var="Supplier">
        <tbody>
            <tr>
                <td>${Supplier.supplierId}</td>
                <td>${Supplier.sName}</td>
                <td>${Supplier.sDescription}</td>
                <td><a href="${pageContext.request.contextPath}/admin/editsupplier/${Supplier.supplierId}">Edit</a></td>  
                <td><a href="${pageContext.request.contextPath}/admin/deletesupplier/${Supplier.supplierId}">Delete</a></td>
            </tr>
            </tbody>
        </c:forEach>
    </table>
    </sec:authorize>
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