<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE div PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
        <div class="page-header">
            <h1>Customer</h1>


            <p class="lead">Customer Details:</p>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3>Basic Info:</h3>

        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="cart.customer.customerName" id="name" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <form:input path="cart.customer.customerEmail" id="email" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="cart.customer.customerPhone" id="phone" class="form-Control" />
        </div>

        <br/>

        <h3>Billing Address:</h3>

        <div class="form-group">
            <label for="billingStreet">Street Name</label>
            <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Apartment Number</label>
            <form:input path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCity">City</label>
            <form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingState">State</label>
            <form:input path="cart.customer.billingAddress.state" id="billingState" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label>
            <form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <form:input path="cart.customer.billingAddress.zipcode" id="billingZip" class="form-Control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>
        <!--  on attribute - assign event id -->
        <!--  to attribute id value in state -->

        <input type="submit" value="Next" class="btn btn-default" name="_eventId_customerInfoCollected" />

        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

        </form:form>
        </div></div>

<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>