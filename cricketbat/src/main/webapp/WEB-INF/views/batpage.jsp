<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@include file="/WEB-INF/views/header.jsp"%>
<html>
<style type="text/css" media="all">
 body {
background: url('file:///C:/Users/User/Pictures/bat images/Free-Desktop-Plain-Images.jpg');
background-repeat:no-repeat;
background-position:center;
background-size:cover;
font-family: 'Jaldi', sans-serif;
font-size: 16px;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">

</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script
	src="https:ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"/>"></script>
<title>bat page</title>
</head>
<body>
	
	<div data-ng-app="myapp">
		<c:url var="url" value="/resources/images/${sid}.png"></c:url>
		<img src="${url }" style="width: 30%" align="middle" /><br>SID
		: ${bat.sid} <br> TITLE :${bat.brand } <br> Price :
		${bat.price } <br>
		<c:url value="/cart/add/${bat.sid}" var="url"></c:url>

		<div data-ng-controller="batController">
             
		  	<security:authorize access="hasRole('ROLE_USER')">
		<a href="#" data-ng-click="addToCart(${bat.sid})"
					class="btn btn-info btn-lg"> <span
					class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</a>
			</security:authorize>
			
		
		<a href="<c:url value="/getAllbat " > </c:url>" class="btn btn-info btn-lg"> Go Back </a></div>
	</div>
	<script src="<c:url value="/resources/js/controller.js" /> "></script>
</body>
</html>