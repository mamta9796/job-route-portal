package com.jobportal.daosimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



import java.util.ArrayList;
import java.util.List;

import com.jobportal.daos.FeedbackDao;
import com.jobportal.models.feedback;
import com.jobportal.utility.ConnectionProvider;

public class FeedbackDaoImpl implements FeedbackDao {

	
	
	
	
	@Override
	public boolean feedback(feedback feedbackobj) {
	
		
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("insert into feedback values(?,?,?,?,?)");
			ps.setString(1,feedbackobj.getName());
			ps.setLong(2,feedbackobj.getMobileNo());
			ps.setString(3,feedbackobj.getEmail());
			ps.setString(4,feedbackobj.getDescription());
			ps.setString(5,feedbackobj.getUserType());
			int i=ps.executeUpdate();
			if(i!=0){
				return true;
			}
			
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return false;
	}

	







	
	public List<feedback> getFeedback() {
		List<feedback> usr=new ArrayList<>();
	

       
	try {
		Connection conn=ConnectionProvider.getConnection();
		PreparedStatement ps=conn.prepareStatement("select * from feedback");
		ResultSet rs=ps.executeQuery();
		
		
		while(rs.next())
		{  feedback obj=new feedback();
			obj.setName(rs.getString(1));
			obj.setMobileNo(rs.getLong(2));
			obj.setEmail(rs.getString(3));
			obj.setDescription(rs.getString(4));
			obj.setUserType(rs.getString(5));	
			usr.add(obj);
			System.out.println("name"+rs.getString(1));
			System.out.println("mobile"+rs.getString(2));
			
		}return usr;
		}
		catch(Exception e){
			e.printStackTrace();
		}
	
	
	return null;
	}
}

