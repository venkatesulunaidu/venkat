<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit bat Form</title>
</head>
<body>

<c:url value="/admin/bat/editbat" var="b"></c:url>
	<form:form method="post" action="${b}" commandName="editbatObj">
		<table>
			<tr>
				<td><form:label path="SID">SERIAL ID</form:label></td>
				<td><form:input path="SID" disabled="true" /></td>
				<!-- <td><form:hidden path="SID" /></td> --> 
			</tr>
			<tr>
				<td><form:label path="brand">BRAND</form:label></td>
				<td><form:input path="brand"></form:input></td>
			</tr>
			
			<tr>
				<td><form:label path="price">PRICE</form:label></td>
				<td><form:input path="price"></form:input></td>
			</tr>
			

			<tr>
				<td><form:label path="category">CATEGORY</form:label></td>
				<td><form:radiobutton path="category.cid" value="1" />Discount sale <form:radiobutton
						path="category.cid" value="2" />Top brand<form:radiobutton
						path="category.cid" value="3" />Newest</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Editbat"></td>
			</tr>
		</table>
	</form:form>


</body>
</html>