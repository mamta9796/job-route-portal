<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<html>
<head>
  <title>JOB PORTAL</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="css//feedback.css"/> 
 

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
                 <li><a href="#">Hiring plans</a></li>
                 <li><a href="homepage.jsp">job seekers?</a></li>		                               
		</ul></div>
		<div class="contect" style="margin-left:900px; margin-top:3px;position:absolute;">
        123-456-7890
		</div>
		<div class="email" style="margin-left:900px; margin-top:20px;position:absolute; color:pink;">	
	<a href="#">jobroute@gmail.com</a></div>
 
   
<div class="print_icon"  style="margin-left:1100px; margin-top:10px;  position:absolute;">
<a href="recruiter.html" class="btn btn-success btn-lg" style="color:blue";>
    <span class="glyphicon glyphicon-user" style="color:white"; ></span> Recruiter Login
  </a>

</div>

     <div class="img3"> 
    <img src="images//cont1.jpg" width=68% height="300px" style="margin-top:43px;margin-left:710px;"/><br>  
</div>	
  
   

<div class="container">
 <div class="row" >
    <div class="col-md-6" >
    <h4 style="margin-left:-80px; margin-top:30px;">     For any queries please call us between 
	9 am to 6 pm (Monday - Saturday)</h4></div><br><br><br><br><br>
	
<div class="print_icon" style="margin-left:-50px; ">
<a href="#" class="btn btn-success btn-lg" style="color:blue";>
   <span class="glyphicon glyphicon-phone" style="color:white; "></span> 881-306-0213   
  </a></div>

<div class="print_icon" style=" margin-top:-47px; " >
<a href="#" class="btn btn-success btn-lg" style=" margin-left:150px; color:blue";>
    <span class="glyphicon glyphicon-envelope" style="color:white;" ></span> jobroute@gmail.com
     
  </a>
</div><br><br>

<div class="img4" style="margin-top:90px;"> 
    <img src="images//cont2.jpeg" width=45% height="300px" /><br>  
</div>	
  
<div class="col-md-6" >

  <div class="form" style=" margin-right:-500px; margin-top:-550px; background-color:orange; ">
    
    <form class="login-form"  action="feedback" method="post" >
	  <label style="text-align:left"><h2>Suggestion or feedback</h2></label><br>
<label>We value your suggestions. Please select any one of the three options below, describe your query or suggestion and send it to us. We will reply as soon as possbile. </label><br>
	  <label><strong>Your Name</label>
      <input type="text" required placeholder="User Name" name="name">
	  <label>Mobile Number</label>
	  <input type="tel" id="phone" name="phone" placeholder="1234567890"
       pattern="[0-9]{10}" maxlength="10" required>
      
	   <label>Email</label><br>
	   <input type="email" name="email" required   oninvalid="this.setCustomValidity('Email is a must')" placeholder="Email ID"/>
	   
	   <label>Description</label>
	  <input type="tel" id="des" name="des" placeholder="Description"/>
	  <div class="radio">
	  <div class="form-check-inline">
      <label class="form-check-label" for="radio1">
        <input type="radio" class="form-check-input" id="radio1" name="optradio" value="Candidate" checked> <b>Candidate</b>
      </label>
    </div>
    <div class="form-check-inline">
      <label class="form-check-label" for="radio2">
        <input type="radio" class="form-check-input" id="radio2" name="optradio" value="Recruiter"> <b>Recruiter </b>
      </label>
    </div>
	</div>
      
	  
      <button>Submit</button>
    </form>
  </div>
</div>
</div>
</div>

<div style="margin-top:200px">
<jsp:include page="Footer.jsp"/>
</div>