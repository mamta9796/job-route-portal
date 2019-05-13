package com.jobportal.daos;


import com.jobportal.models.Employer;
import com.jobportal.models.UserEducationalDetail;


public interface UserEducationalDetailDao {
	public boolean AddDetail(UserEducationalDetail obj);
	public UserEducationalDetail getEducationDetail(String email);
	public boolean updateUser(UserEducationalDetail userobj);
	
}
      

