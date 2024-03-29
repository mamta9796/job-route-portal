package com.jobportal.daosimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.jobportal.daos.JobDao;
import com.jobportal.models.Job;
import com.jobportal.utility.ConnectionProvider;

public class JobDaoImpl implements JobDao {

	@Override
	public boolean addJob(Job jobObj) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement
					("insert into JobTab values(jobseq.nextval,?,?,?,?,?,?,?,?)");
			ps.setString(1,jobObj.getJobTitle());
			ps.setString(2,jobObj.getDesc());
			ps.setString(3,jobObj.getQualification());
			ps.setString(5,jobObj.getCompanyName());
			ps.setString(6,jobObj.getLocation());
			ps.setInt(8,jobObj.getVacancy());
			ps.setString(7,jobObj.getEmployerId());
			
			/*Converting java.util.Date into java.sql.Date*/
			Date pdate=jobObj.getPostedOn();
			long l=pdate.getTime();
			java.sql.Date dob=new java.sql.Date(l);
			ps.setDate(4, dob);
		
			int i=ps.executeUpdate();
			if(i!=0){
				return true;
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}

	@Override
	public boolean deleteJob(int jobId) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("delete from JobTab where jobid=?");
			ps.setInt(1,jobId);
			int i=ps.executeUpdate();
			if(i!=0)return true;
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}

	@Override
	public boolean updateJob(Job jobObj) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("update JobTab set jobtitle=?,description=?,qualification=?,companyname=?,locations=?,vacancy=?,email=? where jobid=?");
			ps.setString(1,jobObj.getJobTitle());
			ps.setString(2,jobObj.getDesc());
			ps.setString(3,jobObj.getQualification());
			ps.setString(4,jobObj.getCompanyName());
			ps.setString(5,jobObj.getLocation());
			ps.setInt(6,jobObj.getVacancy());
			ps.setString(7,jobObj.getEmployerId());
			ps.setInt(8,jobObj.getJobId());
			
			int i=ps.executeUpdate();
			if(i!=0)return true;
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}

	@Override
	public Job getJobById(int jobId) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from JobTab where jobId=?");
			ps.setInt(1,jobId);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				Job obj=new Job();
				obj.setJobId(rs.getInt(1));
				obj.setJobTitle(rs.getString(2));
				obj.setDesc(rs.getString(3));
				obj.setQualification(rs.getString(4));
				obj.setPostedOn(rs.getDate(5));
				obj.setCompanyName(rs.getString(6));
				obj.setLocation(rs.getString(7));
				obj.setVacancy(rs.getInt(9));
				obj.setEmployerId(rs.getString(8));			
				return obj;
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return null;
	}

	@Override
	public List<Job> getAllJob(String recruiterEmail) {
		List<Job> job=new ArrayList<>();
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=null;
			
			
			if(recruiterEmail.equals("NotApplicable")){
			ps=conn.prepareStatement("select * from JobTab");
			
			}
			else {
				ps=conn.prepareStatement("select * from JobTab where email=?");
				ps.setString(1,recruiterEmail);
			}
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Job obj=new Job();
				obj.setJobId(rs.getInt(1));
				obj.setJobTitle(rs.getString(2));
				obj.setDesc(rs.getString(3));
				obj.setQualification(rs.getString(4));
				obj.setPostedOn(rs.getDate(5));
				obj.setCompanyName(rs.getString(6));
				obj.setLocation(rs.getString(7));
				obj.setVacancy(rs.getInt(9));
				obj.setEmployerId(rs.getString(8));			
				
				job.add(obj);
				
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return job;
	}

	@Override
	public boolean applyJob(int jobId,String email) {
		
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from JobTab where jobId=?");
			ps.setInt(1,jobId);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
			 String s1=rs.getString(8);	
					 
			 PreparedStatement ps1=conn.prepareStatement("insert into applyjobtab values(ajobseq.nextval,?,?)");
			 ps1.setInt(1,jobId);
			 ps1.setString(2,email);
			    
			 
				int i=ps1.executeUpdate();
				if(i!=0){
					return true;
				}
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}

		return false;
	}

	
			
		
	

	@Override
	public List<Job> getAppliedJob(String email) {
		List<Job> job=new ArrayList<>();
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from applyJobTab where email=?");
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
			int jobId1=rs.getInt(2);			
			
	
			PreparedStatement ps1=conn.prepareStatement("select * from JobTab where jobId=?");
				ps1.setInt(1,jobId1);
			
			ResultSet rs1=ps1.executeQuery();
			while(rs1.next()){
				Job obj=new Job();
				obj.setJobId(rs1.getInt(1));
				obj.setJobTitle(rs1.getString(2));
				obj.setDesc(rs1.getString(3));
				obj.setQualification(rs1.getString(4));
				obj.setPostedOn(rs1.getDate(5));
				obj.setCompanyName(rs1.getString(6));
				obj.setLocation(rs1.getString(7));
				obj.setVacancy(rs1.getInt(9));
				obj.setEmployerId(rs1.getString(8));			
				
				job.add(obj);
				
			}
			}
			
		}
			
			
			catch(Exception e){
				e.printStackTrace();
			}
	
		return job;
		}

	@Override
	public List<Job> searchJob(String search) {
		List<Job> jObj1=new ArrayList<>();

		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from jobtab where UPPER(jobtitle)LIKE UPPER(?)");
			ps.setString(1,"%"+search+"%");

			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Job obj=new Job();
				obj.setJobId(rs.getInt(1));
				obj.setJobTitle(rs.getString(2));
				obj.setDesc(rs.getString(3));
				obj.setQualification(rs.getString(4));
				obj.setPostedOn(rs.getDate(5));
				obj.setCompanyName(rs.getString(6));
				obj.setLocation(rs.getString(7));
				obj.setVacancy(rs.getInt(9));
				obj.setEmployerId(rs.getString(8));			
				
				jObj1.add(obj);
				
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return jObj1;
	}	
}
