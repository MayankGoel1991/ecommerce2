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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<style>
select{background:black;}

body, html{
     height: 100%;padding:0px!important; 	
/* background-size: cover; 
background-repeat: no-repeat;*/
     	font-family: 'Oxygen', sans-serif;
	     background: none;	    
}
hr{
	width: 10%;
	color: #fff;
}
body {
background: url(http://subtlepatterns.com/patterns/project_papper.png);
}
</style>
</head>
<body style="background-color: #e7f8ff!important;">
<h2>You are not authorize!!!</h2> 
<h2>${greeting}</h2> 
  <%@include file="footer.jsp" %>
</body>
</html>