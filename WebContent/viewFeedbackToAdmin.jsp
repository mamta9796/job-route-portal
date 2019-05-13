<jsp:include page="Header.jsp"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body style="background-image:url('images//m5.jpg') ;color:orange; background-repeat:no-repeat">
<div class="container">

	<h1>Feedback</h1>
	<c:choose>
		<c:when test="${fList.size() eq 0}">
			No feedback Found...
		</c:when>
		<c:otherwise>
			<table class="table table-hover" style="background-color:white">
				<tr>
					<!--<th>Job Id</th>-->
					<th>Name</th>
					<th>Mobile No.</th>
					<th>Email</th>
					<th>UserType</th>
					<th>Description</th>
						
				</tr>
				<c:forEach items="${fList}" var="feedbackObj">
					<tr>
					
						<td>${feedbackObj.name}</td>
						<td>${feedbackObj.mobileNo}</td>
						<td>${feedbackObj.email}</td>
						<td>${feedbackObj.userType}</td>
						<td>${feedbackObj.description}</td>
						
					</tr>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
 </div>
 </body>
 
<div style="margin-top:300px">
<jsp:include page="Footer.jsp"/>
</div>	








