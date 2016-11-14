<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<html>
<style type="text/css" media="all">

/* basic menu styles */
.block-menu {
	display: block;
	background:wood;
}

.block-menu li {
	display: inline-block;
}

.block-menu li a {
	color:red;
	display: block;
	text-decoration: none;
	font-family: 'Passion One', Arial, sans-serif;
	font-smoothing: antialiased;
	text-transform: uppercase;
	overflow: visible;
	line-height: 20px;
	font-size: 24px;
	padding: 15px 10px;
}

/* animation domination */
.three-d {
	perspective: 200px;
	transition: all .07s linear;
	position: relative;
	cursor: pointer;
}
	/* complete the animation! */
	.three-d:hover .three-d-box, 
	.three-d:focus .three-d-box {
		transform: translateZ(-25px) rotateX(90deg);
	}

.three-d-box {
	transition: all .3s ease-out;
	transform: translatez(-25px);
	transform-style: preserve-3d;
	pointer-events: none;
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	width: 100%;
	height: 100%;
}

/* 
	put the "front" and "back" elements into place with CSS transforms, 
	specifically translation and translatez
*/
.front {
	transform: rotatex(0deg) translatez(25px);
}

.back {
	transform: rotatex(-90deg) translatez(25px);
	color: #ffe7c4;
}

.front, .back {
	display: block;
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	left: 0;
	background: black;
	padding: 15px 10px;
	color: white;
	pointer-events: none;
	box-sizing: border-box;
}

</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>header page</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
<body>


<ul class="block-menu">
	<li><a href="<c:url value="/home" />"  class="three-d">
		Home
		<span aria-hidden="true" class="three-d-box">
			<span class="front">Home</span>
			<span class="back">Home</span>
		</span>
	</a></li>
<li><a href="<c:url value="/about" />"  class="three-d">
		About us
		<span aria-hidden="true" class="three-d-box">
			<span class="front">About us</span>
			<span class="back">About us</span>
		</span>
	</a></li>
<c:if test="${pageContext.request.userPrincipal.name!=null}">
		<security:authorize access="hasRole('ROLE_ADMIN')">
<li><a href="<c:url value="admin/bat/addbat" />"  class="three-d">
		Add New Bat
		<span aria-hidden="true" class="three-d-box">
			<span class="front">Add New Bat</span>
			<span class="back">Add New Bat</span>
		</span>
	</a></li>
</security:authorize>
<li><a href="<c:url value="/getAllbat" />"  class="three-d">
		All Bats
		<span aria-hidden="true" class="three-d-box">
			<span class="front">All Bats</span>
			<span class="back">All Bats</span>
		</span>
	</a></li>
			<security:authorize access="hasRole('ROLE_USER')">
			<li><a href="<c:url value="/cart/getCartId" />"  class="three-d">
		Cart
		<span aria-hidden="true" class="three-d-box">
			<span class="front">Cart</span>
			<span class="back">Cart</span>
		</span>
	</a></li>
			</security:authorize>

<li><a>Welcome ${pageContext.request.userPrincipal.name }</a></li>
			<li><a href="<c:url value="/j_spring_security_logout"></c:url>" class="three-d">
		Logout
		<span aria-hidden="true" class="three-d-box">
			<span class="front">Logout</span>
			<span class="back">Logout</span>
		</span>
	</a></li>

</c:if>

		<c:if test="${pageContext.request.userPrincipal.name==null}">
		<li><a href="<c:url value="/login"></c:url>" class="three-d">
		Login
		<span aria-hidden="true" class="three-d-box">
			<span class="front">Login</span>
			<span class="back">Login</span>
		</span>
	</a></li>
		<li><a href="<c:url value="/customer/register"></c:url>" class="three-d">
		Register
		<span aria-hidden="true" class="three-d-box">
			<span class="front">Register</span>
			<span class="back">Register</span>
		</span>
	</a></li>
		</c:if>
		</ul>
		</div>
</body>
</html>
