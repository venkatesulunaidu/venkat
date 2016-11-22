<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML>
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

<div class="container-wrapper">

    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Invalid Cart!</h1>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/getAllbat" />" class="btn btn-default">Bats</a></p>
        </section>
</div></div>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>