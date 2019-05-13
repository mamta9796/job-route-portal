<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <title>JOB PORTAL</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="css//homepage.css"/> 

    </head>
<body>
 <div class="container">
    <div class="img1">
    <img src="images//a.jpeg" width="200px" height="55px"/></div>
</div>
	
   <div class="img2">
                <ul id="menu">
				<li class="active"><a href="">Home</a></li>
				<li><a href="AboutUs.jsp">About Us</a></li>
                 <li><a href="contact.jsp">Contact Us</a></li>
                  <li><a href="ViewJobToUser">View All Jobs</a></li>
                           
                                  <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Resume Article
				<span class="caret"></span></a>
                                <ul class="dropdown-menu">
				<li><a href="ResumeFormat.jsp">Resume Format</a></li>
                                </ul>
				</li>
			                               
		</ul></div>

</p>
<div class="print_icon" >
<a href="AdminHome.jsp" class="btn btn-success btn-lg" style="color:blue";>
    <span class="glyphicon glyphicon-user" style="color:white"; ></span> Recruiter 
  </a>
</p>
</div>




	
                <div class="img3">
    <img src="images//b1.jpeg" width=100% height="400px"/></div><br> 
    
 

 <div class="container">
 

      
        <div class="dark">
        
         
<c:if test="${not empty errorMsg}">
	<div class="alert alert-danger">
		${errorMsg}
	</div>
</c:if> 

<c:if test="${not empty msg}">
	<div class="alert alert-danger">
		${msg}
	</div>
</c:if> 	
<c:if test="${not empty msg1}">
	<div class="alert alert-success">
		${msg1}
	</div>
</c:if>
    	   <form role="Job search" style="width: 380px; margin-top:-280px;margin-left:190px;" action="Search" >
			 
    <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name=search>
        <div class="input-group-btn">
            <button type="submit" class="btn btn-default">
                <span class="glyphicon glyphicon-search"></span>
            </button> 
        </div>
    </div>
</form> 
        
    </div>
</div>

<div class="signin"  style= margin-top:-300px;margin-left:900px;"  >
<div class="Submit"  >
<a href="UserSignUp.jsp"><input  type="submit" value="Sign Up"  style="width:350px; height:50px;"></a>
</div><br>
<h5 style="color:blue;">
-----------------------------------or-----------------------------------<h5><br>
<div class="Submit"  >
<a href="login.jsp"><input  type="submit" value="Login"  style="width:350px; height:50px;"></a>
</div><br>
</div>


<br>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
   <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner" style="margin-top:70px;" >
    <div class="item active " id="image">
      <img src="images//a1.jpg"  width=100% height="300px">
    </div>

    <div class="item" id="image" >
      <img src="images//m2.jpg"  width=100% height="300px">
    </div>

    <div class="item" id="image" >
      <img src="images//b1.jpeg"   width=100% height="300px">
    </div>
   <div class="item" id="image" >
      <img src="images//o.png"   width=100% height="300px" >
    </div>
    </div>  
 
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


<div style="margin-top:5px">
<jsp:include page="Footer.jsp"/>
</div>
