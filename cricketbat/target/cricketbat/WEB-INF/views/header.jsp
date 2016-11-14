<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>header page</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
<body>

<div class="container-fluid">
 <div class="navbar-header page-scroll">
<ul class="nav navbar-nav">
<li><a href="<c:url value="/home" />" >Home</a></li>
<li><a href="<c:url value="/about" />" >About us</a></li>
<c:if test="${pageContext.request.userPrincipal.name!=null}">
		<security:authorize access="hasRole('ROLE_ADMIN')">
<li><a href="<c:url value="admin/bat/addbat" />" >Add New bat</a></li>
</security:authorize>
<li><a href="<c:url value="/batListAngular" />" >Bats</a></li>
			<security:authorize access="hasRole('ROLE_USER')">
			<li><a href="<c:url value="/cart/getCartId" />" class="btn btn-info btn-lg">Cart<span class="glyphicon glyphicon-shopping-cart"></span></a></li>
			</security:authorize>

<li><a>Welcome ${pageContext.request.userPrincipal.name }</a></li>
			<li><a href="<c:url value="/j_spring_security_logout"></c:url>" class="btn btn-info btn-lg">logout</a></li>

</c:if>

		<c:if test="${pageContext.request.userPrincipal.name==null}">
		<li><a href="<c:url value="/login"></c:url>" >Login</a></li>
		<li><a href="<c:url value="/customer/register"></c:url>" >Register</a>
		</c:if>
</ul>
</div></div>


</body>
</html>
