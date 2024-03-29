package com.jobportal.daosimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import com.jobportal.daos.UserEducationalDetailDao;
import com.jobportal.models.UserEducationalDetail;
import com.jobportal.utility.ConnectionProvider;

public class UserEducationalDetailDaoImpl implements UserEducationalDetailDao {

	@Override
	public boolean AddDetail(UserEducationalDetail obj) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("insert into educationtab values(educationseq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, obj.getMedium());
			ps.setString(2, obj.getSubject());
			ps.setString(3, obj.getsName());
			ps.setString(4, obj.getBoard());
			ps.setString(5, obj.getcType());
			ps.setString(6, obj.getPerc());
			ps.setString(7, obj.getpYear());
			ps.setString(8, obj.getMedium1());
			ps.setString(9, obj.getStream());
			ps.setString(10, obj.getSubject1());
			ps.setString(11, obj.getsName1());
			ps.setString(12, obj.getBoard1());
			ps.setString(13, obj.getcType1());
			ps.setString(14, obj.getPerc1());
			ps.setString(15, obj.getpYear1());
			ps.setString(16, obj.getQual());
			ps.setString(17, obj.getCourse());
			ps.setString(18, obj.getSpecialization());
			ps.setString(19, obj.getCollege());
			ps.setString(20, obj.getcType2());
			ps.setString(21, obj.getpYear2());
			ps.setString(22, obj.getQual1());
			ps.setString(23, obj.getCourse1());
			ps.setString(24, obj.getSpecialization1());
			ps.setString(25, obj.getCollege1());
			ps.setString(26, obj.getcType3());
			ps.setString(27, obj.getpYear3());
			ps.setString(28, obj.getEmail());
			
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
	public UserEducationalDetail getEducationDetail(String email) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from educationTab where loginId=?");
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				
				UserEducationalDetail eobj=new UserEducationalDetail();
				eobj.setMedium(rs.getString(2));
				eobj.setSubject(rs.getString(3));
				eobj.setsName(rs.getString(4));
				eobj.setBoard(rs.getString(5));
				eobj.setcType(rs.getString(6));
				eobj.setPerc(rs.getString(7));
				eobj.setpYear(rs.getString(8));
				eobj.setMedium1(rs.getString(9));
				eobj.setStream(rs.getString(10));
				eobj.setSubject1(rs.getString(11));
				eobj.setsName1(rs.getString(12));
				eobj.setBoard1(rs.getString(13));
				eobj.setcType1(rs.getString(14));
				eobj.setPerc1(rs.getString(15));
				eobj.setpYear1(rs.getString(16));
				eobj.setQual(rs.getString(17));
				eobj.setCourse(rs.getString(18));
				eobj.setSpecialization(rs.getString(19));
				eobj.setCollege(rs.getString(20));
				eobj.setcType2(rs.getString(21));				
				eobj.setpYear2(rs.getString(22));
				eobj.setQual1(rs.getString(23));
				eobj.setCourse1(rs.getString(24));
				eobj.setSpecialization1(rs.getString(25));
				eobj.setCollege1(rs.getString(26));
				eobj.setcType3(rs.getString(27));				
				eobj.setpYear3(rs.getString(28));
				eobj.setEmail(rs.getString(29));
				
				return eobj;
				
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return null;
	}

	@Override
	public boolean updateUser(UserEducationalDetail userobj) {
try {
			
			System.out.println("I m here" +userobj);
    		
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("Update EducationTab set Medium1=?,Subject=?,School_Name=?,Board=?,"
					+ "Course_Type=?,Percentage=?,Passing_Year=?,"
		+ "Medium2=?,Stream=?,Subject1=?,School_Name1=?,Board1=?,Course_Type1=?,Percentage1=?,Passing_Year1=?,"
		+ "Qualification=?,Course=?,Specialization=?,College=?,Course_Type2=?,Passing_Year2=?,"
		+ " Qualification1=?,Course1=?,Specialization1=?,College1=?,Course_Type3=?,Passing_Year3=? where LoginId=?");
			ps.setString(28,userobj.getEmail());
			ps.setString(1,userobj.getMedium());
			ps.setString(2,userobj.getSubject());
			ps.setString(3,userobj.getsName());
			ps.setString(4,userobj.getBoard());
			ps.setString(5,userobj.getcType());
			ps.setString(6,userobj.getPerc());
			ps.setString(7,userobj.getpYear());
			ps.setString(8,userobj.getMedium1());
			ps.setString(9,userobj.getStream());
			ps.setString(10,userobj.getSubject1());
			ps.setString(11,userobj.getsName1());
			ps.setString(12,userobj.getBoard1());
			ps.setString(13,userobj.getcType1());
			ps.setString(14,userobj.getPerc1());
			ps.setString(15,userobj.getpYear1());
			ps.setString(16,userobj.getQual());
			ps.setString(17,userobj.getCourse());
			ps.setString(18,userobj.getSpecialization());
			ps.setString(19,userobj.getCollege());
			ps.setString(20,userobj.getcType2());
			ps.setString(21,userobj.getpYear2());
			ps.setString(22,userobj.getQual1());
			ps.setString(23,userobj.getCourse1());
			ps.setString(24,userobj.getSpecialization1());
			ps.setString(25,userobj.getCollege1());
			ps.setString(26,userobj.getcType3());
			ps.setString(27,userobj.getpYear3());
			
			System.out.println(userobj.getCollege());
			
			
			
									
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

}
