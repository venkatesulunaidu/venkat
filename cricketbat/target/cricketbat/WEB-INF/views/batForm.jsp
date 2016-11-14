<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url value="addbat" var="b"></c:url>
	<form:form method="post" action="${b}" commandName="batFormObj" enctype="multipart/form-data">
		<table>
			<tr>
				<td><form:label path="SID">SERIAL ID</form:label></td>
				<td><form:input path="SID" disabled="true" /></td>
			<tr>
				<td><form:label path="brand">Brand</form:label></td>
				<td><form:input path="brand" />
				<form:errors path="brand"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="price">PRICE</form:label></td>
				<td><form:input path="price" />
				<form:errors path=""></form:errors></td>
			</tr>
			
			
			<tr>
				<td><form:label path="category">CATEGORY</form:label></td>
				<td><form:radiobutton path="category.cid" value="1" />Discount sale <form:radiobutton
						path="category.cid" value="2" />Top brand <form:radiobutton
						path="category.cid" value="3" />Newest</td>
			</tr>
			<tr><td><form:input type="file" path="BatImage"/></td></tr>
			<tr>
				<td colspan="2s"><input type="submit" value="Addbat"></td>
			</tr>

		</table>

	</form:form>

</body>
</html>