<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<title>Cost Of Living</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


 <!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="style.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
		<link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">

</head>
<body style="background-color: #e7f8ff!important;" onload="">
<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-chevron-up" aria-hidden="true"></i></button>
<%@include file="header.jsp" %>
<h1><%-- <sec:authentication property="pEmail"/> --%></h1>
<div class="container">
			<div class="row main">
								<img class="roun" src="<c:url value="/resources/image/default_avatar_male.jpg"></c:url>" alt="Generic placeholder image" width="140" height="140">
			
				<div class="main-login main-center">
				<h5>Sign up once and watch any of our free demos.</h5>
					<form method="POST"  action="logg">
                    			<div class="form-group">
									<label for="pEmail" class="cols-sm-2 control-label">Your Email ID</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
											<input type="text" class="form-control" name="pEmail"  placeholder="Enter your Email"/>
										</div>
									</div>
								</div>
								
								<div class="form-group">
									<label for=cpassword class="cols-sm-2 control-label">Your Password</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
											<input id="myInput"  type="password" class="form-control" value="${Customer.cpassword}" name="cpassword"  placeholder="Enter your Password"/><br/>
											<span id="toggle-passowrd" toggle="#password-field" onclick="myFunction()" class="fa fa-fw fa-eye field-icon toggle-password"></span>
										</div>
									</div>
								</div> 
								<a style="color:white;" href="register">New User Register here...!!!</a><br>
									
								
			                <div class="form-group ">
								 <input type="submit" value="login" id="button" class="btn btn-primary btn-lg btn-block login-button"/>
			                </div>         
                </form>       
        	</div>
        </div>
     </div>
     <script>
function myFunction() {
    var x = document.getElementById("myInput");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
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
<%@include file="footer.jsp" %>
</body>
</html>