<jsp:include page="EmployerHeader.jsp"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body style="background-color:orange;color:blue">
<div class="container">

	<c:if test="${not empty msg}">
		<div class="alert alert-success">
			${msg}
		</div>
	</c:if>
	<h1>List of Jobs</h1>
	<c:choose>
		<c:when test="${jList.size() eq 0}">
			No Jobs Found...
		</c:when>
		<c:otherwise>
			<table class="table table-hover">
				<tr>
					<!--<th>Job Id</th>-->
					<th>Job Title</th>
					<th>Job Description</th>
					<th>Qualification</th>
					<th>Posted On</th>
					<th>Company Name</th>
					<th>Location</th>
					<th>No. of Vacancy</th>
					<th>Employer Id</th>
						
				</tr>
				<c:forEach items="${jList}" var="jobObj">
					<tr>
						<%--<td>${jobObj.jobId}</td>--%>
						<td>${jobObj.jobTitle}</td>
						<td>${jobObj.desc}</td>
						<td>${jobObj.qualification}</td>
						<td>${jobObj.postedOn}</td>
						<td>${jobObj.companyName}</td>
						<td>${jobObj.location}</td>
						<td>${jobObj.vacancy}</td>
						<td>${jobObj.employerId}</td>
						<td>
							<a href="deleteJob?jId=${jobObj.jobId}"><span class="glyphicon glyphicon-trash"></span></a>
						</td>
						<td>
							<a href="updateJob?jId=${jobObj.jobId}"><span class="glyphicon glyphicon-pencil"></span></a>
		        		</td>
					</tr>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
 </div>
 </body>
 
<div style="margin-top:370px">


<jsp:include page="Footer.jsp"/>
</div>	







