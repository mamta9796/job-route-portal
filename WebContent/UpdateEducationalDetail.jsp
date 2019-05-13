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


<br/>
<!-- Content -->
<body style="background-color:orange;color:blue">
<div class="container">
<form class="form-horizontal" action="UpdateEducation" method="get">

     		 <h3   style="margin-left: 5em; margin-bottom: 1em; color:blue;" >10th class:-</h3  >
    



 <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Medium</label>
                    <div class="col-sm-9">
              <!--  <input type="text" class="form-control"  name="medium" value="${sessionScope.detail.medium}">-->
              
               <select id="country" class="form-control" name="medium">
						   <option>${sessionScope.detail.medium}</option>
                            <option>Hindi</option>
                            <option>English</option>

                        </select>
              
                                          </div>
                </div>
				
				
				<div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"> Subjects</label>
                    <div class="col-sm-9">
                        <input type="text" id="subject"  class="form-control" name="subject" value="${sessionScope.detail.subject}"autofocus>
                        
                    </div>
                </div>
               
				   
				
				
				
				 <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"> School Name</label>
                    <div class="col-sm-9">
                        <input type="text" id="sName" class="form-control" name="school" value="${sessionScope.detail.sName}" autofocus>
                        
                    </div>
                </div>
               
			   
			   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Board</label>
                    <div class="col-sm-9">
                     
               <!--  <input type="text" id="board" class="form-control"  name="board" value="${sessionScope.detail.board}" autofocus>-->
                     <select id="country" class="form-control" name="board">
						    <option>${sessionScope.detail.board}</option>
                            <option> Andhra Pradesh Board of Secondary Education</option>
                            <option>Andhra Pradesh Board of Intermediate Education</option>
                            <option>Andhra Pradesh Open School Society</option>
                            <option>Board of Higher Secondary Education Delhi</option>
                            <option>Assam Higher Secondary Education Council</option>
                            <option>Assam sanskrit board</option>
                            <option>Assam State Open School</option>
                            <option>Bihar Board of Open Schooling and Examination</option>
                             <option>Bihar Sanskrit Shiksha Board</option>
                            <option>Bihar School Examination Board</option>
                            <option>Central Board of Secondary Education, CBSE</option>
                            <option>Uchchatar Madhyamik Shiksha Parishad Under MSMED Act 2006 Koshambi</option>
                            <option>Chhattisgarh Board of Secondary Education</option>
                            <option>Council for the Indian School Certificate Examinations, ICSE / ISC</option>
                            <option>Council Of Secondary Education Mohali</option>
                            <option>Goa Board of Secondary & Higher Secondary Education</option>
                            <option>Grameen Mukt vidhyalayi shiksha sansthan(GMVSS)[1]</option>
                            <option>Gujarat Secondary Education Board</option>
                            <option>Haryana Board of School Education</option>
                            <option>Himachal Pradesh Board of School Education</option>
                            <option>Himachal Pradesh State Open School[2]</option>
                            <option>Jammu and Kashmir State Board of School Education</option>
                            <option>Jammu and Kashmir State Open School[3]</option>
                            <option>Jharkhand Academic Council[4]</option>
                            <option>Karnataka Secondary Education Examination Board</option>
                            <option>Kerala Higher Secondary Examination Board</option>
                            <option>Kerala State Open School[5]</option>
                            <option>Board of Secondary Education, Madhya Pradesh</option>
                            <option>Madhya Pradesh State Open School[6]</option>
                            <option>Maharashtra State Board of Secondary and Higher Secondary Education</option>
                            <option>Meghalaya Board of School Education</option>
                            <option>Mizoram Board of School Education</option>
                            <option>Nagaland Board of School Education</option>
                            <option>National Institute of Open Schooling</option>
                            <option>Odisha Board of Secondary Education</option>
                            <option>Odisha Council of Higher Secondary Education</option>
                            <option>Punjab School Education Board</option>
                            <option>Board of Secondary Education, Rajasthan</option>
                            <option>Rajasthan State Open School[7]</option>
                            <option>Tamil Nadu Board of Secondary Education</option>
                            <option>Telangana Board of Intermediate Education</option>
                            <option>Telangana Board of Secondary Education</option>
                            <option>Tripura Board of Secondary Education</option>
                            <option>Board of High School and Intermediate Education Uttar Pradesh</option>
                            <option>Uttarakhand Board of School Education</option>
                            <option>West Bengal Board of Madrasah Education</option>
                            <option>West Bengal Board of Primary Education</option>
                            <option>West Bengal Board of Secondary Education</option>
                            <option>West Bengal Council of Higher Secondary Education</option>
                            <option>West Bengal Council of Rabindra Open Schooling</option>
                            <option>Madhyamik Shiksha Parishad, Delhi</option>

                        </select>
                      
                    
                                           </div>
                </div>
				
			   
			   
			    <div class="form-group">
                    <label class="control-label col-sm-3">Course Type</label>
                    <div class="col-sm-9">
                    <input type="text" id="courseType" class="form-control"  name="opt" value="${sessionScope.detail.cType}" autofocus>
                      
                                           </div>
                </div>
				

		  
		          <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"> Percentage</label>
                    <div class="col-sm-9">
                        <input type="text" id="percentage" class="form-control" name="percentage" value="${sessionScope.detail.perc}" autofocus>
                        
                    </div>
                </div>
               
				   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Passing Year</label>
                    <div class="col-sm-9">
                     <input type="text" id="year"class="form-control" name="year" value="${sessionScope.detail.pYear}"  autofocus>
                       
                   </div></div>     
				
				
				
				<h3   style="margin-left: 5em; margin-bottom: 1em; color:blue;">12th class:-</h3  >
				
				
				   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Medium</label>
                    <div class="col-sm-9">
                   <!-- <input type="text" class="form-control"  name="medium1" value="${sessionScope.detail.medium1}">-->
                  
                   <select id="country" class="form-control" name="medium1">
						   <option>${sessionScope.detail.medium1}</option>
                            <option>Hindi</option>
                            <option>English</option>

                        </select>
                  
                                           </div>
                </div>
				
				
				   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Stream</label>
                    <div class="col-sm-9">
                 <!--<input type="text" id="stream"  class="form-control" name="stream" value="${sessionScope.detail.stream}"autofocus>
                       -->
                       
                   <select id="country" class="form-control" name="stream">
						    <option>${sessionScope.detail.stream}</option>
                            <option>Science(Medical)</option>
                            <option>Science(non-Med)</option>
                            <option>Commerce</option>
                            <option>Art</option>
                        </select>
                       
                       
                        </div>
                </div>
				
				<div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"> Subjects</label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" value="${sessionScope.detail.subject1}" class="form-control" name="subject1" autofocus>
                        
                    </div>
                </div>
               
				
				   
				
				
				
				 <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"> School Name</label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" value="${sessionScope.detail.sName1}" class="form-control" name="school1" autofocus>
                        
                    </div>
                </div>
               
			   
			   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Board</label>
                    <div class="col-sm-9">
               <!-- <input type="text" id="board" class="form-control"  name="board1" value="${sessionScope.detail.board1}" autofocus>
                      -->
                 <select id="country" class="form-control" name="board1">
						    <option>${sessionScope.detail.board1}</option>
                            <option> Andhra Pradesh Board of Secondary Education</option>
                            <option>Andhra Pradesh Board of Intermediate Education</option>
                            <option>Andhra Pradesh Open School Society</option>
                            <option>Board of Higher Secondary Education Delhi</option>
                            <option>Assam Higher Secondary Education Council</option>
                            <option>Assam sanskrit board</option>
                            <option>Assam State Open School</option>
                            <option>Bihar Board of Open Schooling and Examination</option>
                             <option>Bihar Sanskrit Shiksha Board</option>
                            <option>Bihar School Examination Board</option>
                            <option>Central Board of Secondary Education, CBSE</option>
                            <option>Uchchatar Madhyamik Shiksha Parishad Under MSMED Act 2006 Koshambi</option>
                            <option>Chhattisgarh Board of Secondary Education</option>
                            <option>Council for the Indian School Certificate Examinations, ICSE / ISC</option>
                            <option>Council Of Secondary Education Mohali</option>
                            <option>Goa Board of Secondary & Higher Secondary Education</option>
                            <option>Grameen Mukt vidhyalayi shiksha sansthan(GMVSS)[1]</option>
                            <option>Gujarat Secondary Education Board</option>
                            <option>Haryana Board of School Education</option>
                            <option>Himachal Pradesh Board of School Education</option>
                            <option>Himachal Pradesh State Open School[2]</option>
                            <option>Jammu and Kashmir State Board of School Education</option>
                            <option>Jammu and Kashmir State Open School[3]</option>
                            <option>Jharkhand Academic Council[4]</option>
                            <option>Karnataka Secondary Education Examination Board</option>
                            <option>Kerala Higher Secondary Examination Board</option>
                            <option>Kerala State Open School[5]</option>
                            <option>Board of Secondary Education, Madhya Pradesh</option>
                            <option>Madhya Pradesh State Open School[6]</option>
                            <option>Maharashtra State Board of Secondary and Higher Secondary Education</option>
                            <option>Meghalaya Board of School Education</option>
                            <option>Mizoram Board of School Education</option>
                            <option>Nagaland Board of School Education</option>
                            <option>National Institute of Open Schooling</option>
                            <option>Odisha Board of Secondary Education</option>
                            <option>Odisha Council of Higher Secondary Education</option>
                            <option>Punjab School Education Board</option>
                            <option>Board of Secondary Education, Rajasthan</option>
                            <option>Rajasthan State Open School[7]</option>
                            <option>Tamil Nadu Board of Secondary Education</option>
                            <option>Telangana Board of Intermediate Education</option>
                            <option>Telangana Board of Secondary Education</option>
                            <option>Tripura Board of Secondary Education</option>
                            <option>Board of High School and Intermediate Education Uttar Pradesh</option>
                            <option>Uttarakhand Board of School Education</option>
                            <option>West Bengal Board of Madrasah Education</option>
                            <option>West Bengal Board of Primary Education</option>
                            <option>West Bengal Board of Secondary Education</option>
                            <option>West Bengal Council of Higher Secondary Education</option>
                            <option>West Bengal Council of Rabindra Open Schooling</option>
                            <option>Madhyamik Shiksha Parishad, Delhi</option>

                        </select>
                
                      
                      
                                            </div>
                </div>
				
			   
			   
			    <div class="form-group">
                    <label class="control-label col-sm-3">Course Type</label>
                    <div class="col-sm-9">
                     <input type="text" id="courseType" class="form-control"  name="opt1" value="${sessionScope.detail.cType1}" autofocus>
                   
                                           </div>
                </div>
				

		  
		          <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"> Percentage</label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" value="${sessionScope.detail.perc1}"class="form-control" name="percentage1" >
                        
                    </div>
                </div>
               
		  
		   
		  

				
				   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Passing Year</label>
                    <div class="col-sm-9">
                    <input type="text" id="country" value="${sessionScope.detail.pYear1}" class="form-control" name="year1" autofocus>
                     
                            </div>
                </div>
				
				
				
				<h3   style="margin-left: 5em; margin-bottom: 1em; color:blue;">Graduation details:-</h3  >
				   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Highest Qualification</label>
                    <div class="col-sm-9">
                <!-- <input type="text" id="qualification" values="${sessionScope.detail.qual}" class="form-control" name="Qualification" autofocus>
                    -->
                     <select id="country" class="form-control" name="Qualification">
						    <option>${sessionScope.detail.qual}</option>
						    <option>Graduation Diploma</option>
                            <option>Doctorate/PhD</option>
                            <option>Post-Graduation</option>
                            <option>Graduation</option>

                        </select>
                    
                    
                                          </div>
                </div>
				
				
				
				   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Course</label>
                    <div class="col-sm-9">
                   <!-- <input type="text" id="qualification" value="${sessionScope.detail.course}" class="form-control" name="course" autofocus>
                   -->
                    <select id="country" class="form-control" name="course">
						    <option>${sessionScope.detail.course}</option>
                            <option>B.A</option>
                            <option>B.Arch</option>
                            <option>B.B.A/B.M.S</option>
                            <option>B.Com</option>
                            <option>B.Des.</option>
                            <option>B.Ed</option>
                            <option>B.Pharma</option>
                            <option>B.PED</option>
							<option>B.Sc</option>
                            <option>B.Tech/B.E</option>
                            <option>BCA</option>
                            <option>Diploma</option>
                            <option>LLB</option>
                            <option>MBBS</option>
                            <option>------</option>
                            <option>CA</option>
							<option>CS</option>
                            <option>Integrated PG</option>
                            <option>M.A</option>
                            <option>M.Arch</option>
                            <option>M.Ch</option>
                            <option>M.Com</option>
                            <option>M.Des.</option>
                            <option>M.Ed</option>
                            <option>M.Pharma</option>
							<option>MS/M.Sc</option>
                            <option>M.Tech</option>
                            <option>MBA/PGDM</option>
                            <option>MCA</option>
                            <option>Medical-MS/MD</option>
                            <option>PG Diploma</option>
							
                            <option>-----</option>
                            <option>Ph.D/Doctorate</option>
                            <option>MPHIL</option>
                            <option>-----</option>
                            
                        </select>
                   
                   
                         </div>
                </div>
				
				
				
				   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Specialization</label>
                    <div class="col-sm-9">
                      <input type="text" id="firstName" value="${sessionScope.detail.specialization}" class="form-control" name="specialization" autofocus>
                    
                       
                    </div>
                </div>
				
				
				
				 <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"> University/College</label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" value="${sessionScope.detail.college}" class="form-control" name="college" autofocus>
                        
                    </div>
                </div>
               
			   
			   
			    <div class="form-group">
                    <label class="control-label col-sm-3">Course Type</label>
                    <div class="col-sm-9">
                     <input type="text" class="form-control" name="opt2" value="${sessionScope.detail.cType2}">
                                            </div>
                </div>
				

				
				   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Passing Year</label>
                    <div class="col-sm-9">
                    <input type="text" class="form-control" name="year2" value="${sessionScope.detail.pYear2}">
                     
                               </div>
                </div>
				
				
			
				 <h3   style="margin-left: 5em; margin-bottom: 1em; color:blue;"> Other Education:-</h3  >
				
				
				   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Qualification</label>
                    <div class="col-sm-9">
                    <!-- <input type="text" id="qualification" values="${sessionScope.detail.qual1}" class="form-control" name="qualification3" autofocus>
                  -->
                  
                  <select id="country" class="form-control" name="qualification3">
						     <option>${sessionScope.detail.qual1}</option>
						     <option>Graduation Diploma</option>
                            <option>Doctorate/PhD</option>
                            <option>Post-Graduation</option>
                            <option>Graduation</option>
                            
                        </select>
                   
                         </div>
                </div>
				
				
				   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Course</label>
                    <div class="col-sm-9">
                   <!-- <input type="text" id="qualification" value="${sessionScope.detail.course1}" class="form-control" name="course3" autofocus>
                   -->
                   <select id="country" class="form-control" name="course3">
						      <option>${sessionScope.detail.course1}</option>
                            <option>B.A</option>
                            <option>B.Arch</option>
                            <option>B.B.A/B.M.S</option>
                            <option>B.Com</option>
                            <option>B.Des.</option>
                            <option>B.Ed</option>
                            <option>B.Pharma</option>
                            <option>B.PED</option>
							<option>B.Sc</option>
                            <option>B.Tech/B.E</option>
                            <option>BCA</option>
                            <option>Diploma</option>
                            <option>LLB</option>
                            <option>MBBS</option>
                            <option>------</option>
                            <option>CA</option>
							<option>CS</option>
                            <option>Integrated PG</option>
                            <option>M.A</option>
                            <option>M.Arch</option>
                            <option>M.Ch</option>
                            <option>M.Com</option>
                            <option>M.Des.</option>
                            <option>M.Ed</option>
                            <option>M.Pharma</option>
							<option>MS/M.Sc</option>
                            <option>M.Tech</option>
                            <option>MBA/PGDM</option>
                            <option>MCA</option>
                            <option>Medical-MS/MD</option>
                            <option>PG Diploma</option>
							
                            <option>-----</option>
                            <option>Ph.D/Doctorate</option>
                            <option>MPHIL</option>
                            <option>-----</option>
                           </select>
                
                   
                            </div>
                </div>
				
				
				
				   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Specialization</label>
                    <div class="col-sm-9">
                     <input type="text" id="firstName" value="${sessionScope.detail.specialization1}" class="form-control" name="specialization3" autofocus>
                    
                        </div>
                </div>
				
				
				
				
				 <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"> University/College</label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" value="${sessionScope.detail.college1}" class="form-control"  name="college3" autofocus>
                        
                    </div>
                </div>
               
			   
			   
			    <div class="form-group">
                    <label class="control-label col-sm-3">Course Type</label>
                    <div class="col-sm-9">
                    <input type="text" class="form-control" name="opt3" value="${sessionScope.detail.cType3}">
                     
                          </div>
                </div>
				

		  

				
				   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Passing Year</label>
                    <div class="col-sm-9">
                     <input type="text" class="form-control" name="year3" value="${sessionScope.detail.pYear3}">
                   
                                      </div>
                </div>
	
                <br>
  <div style="margin-left:200px">
  <button type="submit" class="btn btn-default">Update</button>
  </div>



</form>





 </div>
 </body>
 

<br/><br/><br/>
<div style="margin-top:160px">
<jsp:include page="Footer.jsp"/>
</div>	
