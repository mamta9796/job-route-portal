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

import com.jobportal.daos.FeedbackDao;
import com.jobportal.daosimpl.FeedbackDaoImpl;
import com.jobportal.models.Employer;
import com.jobportal.models.feedback;

@WebServlet("/ViewfeedbackToAdmin")
public class ViewfeedbackToAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
				  
		
		FeedbackDao daoObj=new FeedbackDaoImpl();
		List<feedback> feedbackList=daoObj.getFeedback();
		
		request.setAttribute("fList",feedbackList);
		RequestDispatcher rd=request.getRequestDispatcher("viewFeedbackToAdmin.jsp");
		rd.forward(request, response);
				
		
	}
}

