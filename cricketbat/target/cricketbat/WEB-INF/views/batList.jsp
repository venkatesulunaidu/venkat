<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page isELIgnored="false" %>
<%@include file="/WEB-INF/views/header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
    src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
<title>Insert title here</title>
</head>
<body>
<div data-ng-app="myapp">
<div data-ng-controller="batController" data-ng-init="getbatList()">

	<h1>List of Bats</h1>
	Search: <input type="text" ng-model="searchCondition" placeholder="Search bat">
	<table border="0" class="table table-striped table-hover">
	<thead>
		<tr>
		<th>Image</th>
			<th>SID</th>
			<th>Brand</th>
			<th>PRICE</th>
			<th>CATEGORY NAME</th>
			<th>View/edit/delete</th>
		</tr>
</thead>
<tbody>

<tr data-ng-repeat="b in bat | filter:searchCondition">

		<c:url value="resources/images/{{b.SID}}.png" var="src"/>
		<td><img src="${src }" style="width: 30%" align="middle"/></td>
		
		  <td>{{b.SID}}</td>
		<td>{{b.brand}}</td>
		<td>{{b.price}}</td>
		<td>{{b.category.category}}</td>
		<td><a href="getbatBySID/{{b.SID}}"> <span class="glyphicon glyphicon-info-sign"></span></a>

		<security:authorize access="hasRole('ROLE_ADMIN')">
		<a href="admin/delete/{{b.SID}}"><span class="glyphicon glyphicon-trash"></span></a>
		<a href="admin/bat/editbat/{{b.SID}}"><span class="glyphicon glyphicon-edit"></span></a>
		</security:authorize></td>
</tr>
</tbody>

</table>
</div></div>
</body>
</html>