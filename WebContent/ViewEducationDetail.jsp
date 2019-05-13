<jsp:include page="UserHeader.jsp"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${not empty msg}">
	<div class="alert alert-danger">
		${msg}
	</div>
</c:if> 
<body style="background-color:skyblue;color:blue">

<div class="container table-responsive">          
  <table class="table table-hover">
     <h3   style="color:orange;" >10th class:-</h3  >
      <tr>
      	<td>Medium </td>
      	<td>${detail.medium}</td>
      </tr>
      <tr>
      	<td>Subject </td>
      	<td>${detail.subject}</td>
      </tr>
      <tr>
      	<td>School Name </td>
      	<td>${detail.sName}</td>
      </tr>
      <tr>
      	<td>Board </td>
      	<td>${detail.board}</td>
      </tr>
      <tr>
      	<td>Course Type</td>
      	<td>${detail.cType}</td>
      </tr>
      <tr>
      	<td>Percentage </td>
      	<td>${detail.perc}</td>
      </tr>
      <tr>
      	<td>Passing Year </td>
      	<td>${detail.pYear}</td>
      </tr>
      <tr>
      <td> <h3   style=" color:orange;" >12th class:-</h3  ></td>
      <td></td>
      <tr>
        
      	<td>Medium1 </td>
      	<td>${detail.medium1}</td>
      </tr>
         <tr>
      	<td>Stream </td>
      	<td>${detail.stream}</td>
      </tr>
      <tr>
      	<td>Subject1 </td>
      	<td>${detail.subject1}</td>
      </tr>
      <tr>
      	<td>School Name </td>
      	<td>${detail.sName1}</td>
      </tr>
      <tr>
      	<td>Board </td>
      	<td>${detail.board1}</td>
      </tr>
      <tr>
      	<td>Course Type</td>
      	<td>${detail.cType1}</td>
      </tr>
      <tr>
      	<td>Percentage </td>
      	<td>${detail.perc1}</td>
      </tr>
      <tr>
      	<td>Passing Year </td>
      	<td>${detail.pYear1}</td>
      </tr>
      <tr>
      	<td><h3   style=" color:orange;">Graduation details:-</h3  ></td>
      	<td></td>
       </tr>
       <tr> 
      	<td>Qualification </td>
      	<td>${detail.qual}</td>
      </tr>
         <tr>
      	<td>Course </td>
      	<td>${detail.course}</td>
      </tr>
      <tr>
      	<td>Specialisation </td>
      	<td>${detail.specialization}</td>
      </tr>
      <tr>
      	<td>College </td>
      	<td>${detail.college}</td>
      </tr>
       	<td>Course Type</td>
      	<td>${detail.cType2}</td>
      </tr>
        <tr>
      	<td>Passing Year </td>
      	<td>${detail.pYear2}</td>
      </tr>
      
      
      <tr>
	 <td><h3   style=" color:orange;"> Other Education:-</h3  ></td>
	 <td></td>
      </tr>
       <tr>
      	<td>Qualification1 </td>
      	<td>${detail.qual1}</td>
      </tr>
         <tr>
      	<td>Course1 </td>
      	<td>${detail.course1}</td>
      </tr>
      
      
      <tr>
      	<td>Specialisation1 </td>
      	<td>${detail.specialization1}</td>
      </tr>
      <tr>
      	<td>College1 </td>
      	<td>${detail.college1}</td>
      </tr>
       	<td>Course Type</td>
      	<td>${detail.cType3}</td>
      </tr>
        <tr>
      	<td>Passing Year </td>
      	<td>${detail.pYear3}</td>
      </tr>
       <tr>
      	<td>Email </td>
      	<td>${detail.email}</td>
      </tr>
      
  </table><br><br>
 <center> <a href="UserEducationalDetail.jsp" style="; border: 0; font-size: 14px;  "> 
 <button class="btn btn-primary btn-lg" style="width:300px; background:#fffff;">Update</button></a></center>
  </div>
  </body>
  
  <br/><br/><br/>
<div style="margin-top:260px">
<jsp:include page="Footer.jsp"/>
</div>	