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

import com.jobportal.daos.JobDao;
import com.jobportal.daosimpl.JobDaoImpl;
import com.jobportal.models.Job;

@WebServlet("/Search")
public class searchJobController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String search1=request.getParameter("search");
		
		JobDao daoObj=new JobDaoImpl();
		List<Job> jobList=daoObj.searchJob(search1);
		
		{
		request.setAttribute("jList",jobList);
		RequestDispatcher rd=request.getRequestDispatcher("viewalljobtouser.jsp");
		rd.forward(request, response);}



	}
}
