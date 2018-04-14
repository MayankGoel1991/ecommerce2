<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cost Of Living</title>
<link href="<c:url value="/resources/css/product.css" />" rel="stylesheet">

</head>
<body style="background-color: #e7f8ff!important;">
<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-chevron-up" aria-hidden="true"></i></button>
<div class="container">
			<div class="row main">
			<img class="roun" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
			
				<div class="main-login main-center">
				<h5>Sign up once and watch any of our free demos.</h5>
					<form:form method="POST"  commandName="product" action="${pageContext.request.contextPath}/admin/product" enctype="multipart/form-data">
              
								<c:if test="${not empty product.pName}">
		      
								<div class="form-group">
									<label for="productId" class="cols-sm-2 control-label">Your Product ID</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
											<form:input type="text" readonly="true" disabled="true" class="form-control" path="productId"  placeholder="Enter your Product Id"/>
											<form:hidden path="productId"/>
										</div>
									</div>
								</div>
								</c:if>
		             
								<div class="form-group">
									<label for="pName" class="cols-sm-2 control-label">Your Product Name</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
											<form:input type="text" class="form-control" path="pName"  placeholder="Enter your Name"/>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="pDescription" class="cols-sm-2 control-label">Your Description</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
											<form:input type="text" class="form-control" path="pDescription"  placeholder="Enter your Description"/>
										</div>
									</div>
								</div> 
								<div class="form-group">
									<label for="pPrice" class="cols-sm-2 control-label">Your Price</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
											<form:input type="text" class="form-control" path="pPrice"  placeholder="Enter your price"/>
										</div>
									</div>
								</div>
								<%-- <div class="form-group">
									<label for="pQuanity" class="cols-sm-2 control-label">Your Price</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
											<form:input type="number" class="form-control" path="pQuanity"  placeholder="Enter your Quantity"/>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="pAmount" class="cols-sm-2 control-label">Your Total Amount</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
											<form:input type="number" class="form-control" path="pAmount"  placeholder="Enter your Amount"/>
										</div>
									</div>
								</div> --%>
								<div class="form-group ">
								<label for="pTraImgFile" class="cols-sm-2 control-label">Image Description</label>
									<form method="POST" action="uploadMultipleFile" enctype="multipart/form-data"/>
									 <form:input type="file" width="48" height="48" path="pTraImgFile" />
								</div>
						
						
						
						
							   
	           
	           			<div class="form-group ">
						<label  class="cols-sm-2 control-label">CategoryId</label>
							
		                <form:select path="categoryId">
		                <c:forEach var="cat" items="${categoryList}">
		                	<form:option value="${cat.categoryId}">${cat.categoryId}</form:option>
						</c:forEach>
						</form:select>
   				
						</div>
						<div class="form-group ">
						<label  class="cols-sm-2 control-label">SupplierId</label>
						
		                <form:select path="supplierId">
		                <c:forEach var="sup" items="${SupplierList}">
		                	<form:option value="${sup.supplierId}">${sup.supplierId}</form:option>
						</c:forEach>
						</form:select>
   				
						</div>    
						<c:choose>		
			                <c:when  test="${not empty product.pName}">		
			                  <div class="form-group ">		
			                   <input type="submit" value="save" id="button" class="btn btn-primary btn-lg btn-block login-button"/>		
		                      </div>
						 </c:when>		
			                <c:otherwise>		
			                <div class="form-group ">
								 <input type="submit" value="product" id="button" class="btn btn-primary btn-lg btn-block login-button"/>
			                </div>	
			                </c:otherwise>		
			           </c:choose>    
                </form:form>
                
                    
        	</div>
        </div>
     </div>
        
        


      <sec:authorize access="hasRole('ROLE_ADMIN')">  
       <h2>All product in System</h2>  
    <table border="0" class="table table-hover  table-responsive" style="width:80%;" align="center">
   
         <thead>
        <tr>
            <th>Product Id</th>
            <th>Product Name</th>
            <th>Product Description</th>
            <th>Product Price</th>
            <!-- <th>Product Quantity</th> -->
            <th>Image</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <div class="row">
        <c:forEach items="${ProductList}" var="Product">
        
		  
        <tbody>
            <tr>
                <td>${Product.productId}</td>
                <td>${Product.pName}</td>
                <td>${Product.pDescription}</td>
                 <td>${Product.pPrice}</td>     
                 <%-- <td>${Product.pQuanity}</td>  --%>           
                <td><img src="<c:url value="/resources/image/${Product.pTraImgFile}"></c:url>" alt="Image" width="100" height="50"></td>
                <td><a href="${pageContext.request.contextPath}/admin/editproduct/${Product.productId}">Edit</a></td>  
                <td><a href="${pageContext.request.contextPath}/admin/deleteproduct/${Product.productId}">Delete</a></td>
            </tr>
            </tbody>
		
        </c:forEach>
        </div>
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