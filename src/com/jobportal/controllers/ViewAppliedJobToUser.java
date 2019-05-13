package com.jobportal.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jobportal.daos.JobDao;
import com.jobportal.daos.LoginDao;
import com.jobportal.daosimpl.JobDaoImpl;
import com.jobportal.daosimpl.LoginDaoImpl;
import com.jobportal.models.Employer;
import com.jobportal.models.Job;
import com.jobportal.models.Login;
import com.jobportal.models.User;

@WebServlet("/ViewAppliedJob")
public class ViewAppliedJobToUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession();
		User job=(User)session.getAttribute("user");
		System.out.println("user = "+job);
	    String userEmail=job.getEmail();
		System.out.println("user = "+userEmail);
	    
	    
	  
		JobDao daoObj=new JobDaoImpl();
		  
		List<Job> jobList=daoObj.getAppliedJob(userEmail);
		
		
		request.setAttribute("jList",jobList);
		RequestDispatcher rd=request.getRequestDispatcher("ViewAppliedJob.jsp");
		rd.forward(request, response);
				
		
	}
}

