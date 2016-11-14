<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/header.jsp"%>
<html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<style>
.mySlides {display:none;}
</style>
<body>

<h2 class="w3-center">Cricket Bats</h2>

<div class="w3-content w3-section" style="max-width:500px">
  <img class="mySlides" src="C:/Users/User/Pictures/bat images/1-Kookaburra-Kahuna.jpg" style="width:100%">
  <img class="mySlides" src="C:/Users/User/Pictures/bat images/2-Adidas-Incurza.jpg" style="width:100%">
   <img class="mySlides" src="C:/Users//User/Pictures/bat images/4-Gunn-Moore-Icon.jpg" style="width:100%">
  <img class="mySlides" src="C:/Users/User/Pictures/bat images/5-Sanspareils-Greenlands-Cobra-Select.jpg" style="width:100%">
  <img class="mySlides" src="C:/Users/User/Pictures/bat images/6-Puma.jpg" style="width:100%">
  <img class="mySlides" src="C:/Users/User/Pictures/bat images/8-Reebok-Blast.jpg" style="width:100%">
  <img class="mySlides" src="C:/Users/User/Pictures/bat images/9-Kookaburra-Angry-Bird.jpg" style="width:100%">
  <img class="mySlides" src="C:/Users/User/Pictures/bat images/10-Spartan-CG-Authority.jpg" style="width:100%">
  <img class="mySlides" src="C:/Users/User/Pictures/bat images/Kookaburra-Angry-Bird.jpg" style="width:100%">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>

</body>
</html>