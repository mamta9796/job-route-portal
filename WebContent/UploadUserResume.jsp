<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="UserHeader.jsp"/>

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


<head><link rel="StyleSheet" href="css//userdocument.css"/></head>
<body Style="background-image:url('images//j.jpg')">
<div class="register-page">
  <div class="form">
    
    <form class="form-horizontal" action="resumeupload" method="post" enctype="multipart/form-data">
	  <label style="text-align:left"><h2>Upload Document</h2></label><br>
	  	  
	
       	<div class="form-group">
				<div class="row" style="margin-left:10px;"   >
            <div class="col-sm-10 ">
              <span class="control-fileupload">
                <label for="file1" class="text-left" style="color:green;"><h4> Upload your Resume.</h4></label>
                <input type="file" id="file1" name="res">
              </span>
            </div>
            <div class="col-sm-2" style="margin-left:200px; margin-top:90px;">  
              <button type="submit" class="btn btn-primary btn-block" style="width:80px;">
               Upload
              </button>
            </div>
          </div>
        </div>
        
	 <br>
		         
      </form>
      </div>
      </div>
      </body>
 
 <div style="margin-top:120px">
<jsp:include page="Footer.jsp"/>
</div>	