 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="/WEB-INF/views/Header.jsp"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
 hr {
width: 100%;
height: 8px;
margin-left: auto;
margin-right: auto;
background-color:#FF0066;
color:#FF0066;
border: 0 none;
}
  .carousel-inner > .item > img {
      width: 1300px;
      height: 400px;
  }
  </style>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

<a href="admin/xyz">click here</a>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="<c:url value="resources/IMAGES/Images/car1.jpg"/>" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="<c:url value="resources/IMAGES/Images/car2.jpg"/>" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="<c:url value="resources/IMAGES/Images/car3.png"/>" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="<c:url value="resources/IMAGES/Images/car4.jpg"/>" alt="Flower" width="460" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
</html>
