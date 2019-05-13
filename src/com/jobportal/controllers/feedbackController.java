package com.jobportal.controllers;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.jobportal.daos.FeedbackDao;
import com.jobportal.daosimpl.FeedbackDaoImpl;
import com.jobportal.models.feedback;


@WebServlet("/feedback")
public class feedbackController extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			String s1=request.getParameter("name");
			String s2=request.getParameter("phone");
			String s3=request.getParameter("email");
			String s4=request.getParameter("des");
			String s5=request.getParameter("optradio");
			
			System.out.println("name="+s1);
			System.out.println("phone="+s2);
			System.out.println("email="+s3);
			System.out.println("des="+s4);
			System.out.println("optradio="+s5);
			
			feedback obj1=new feedback();
			obj1.setName(s1);
			obj1.setMobileNo(Long.parseLong(s2));
			obj1.setEmail(s3);
			obj1.setDescription(s4);
			obj1.setUserType(s5);
			
			FeedbackDao obj=new FeedbackDaoImpl();
			boolean obj2=obj.feedback(obj1);
			
			if(obj2==false) {
			
				RequestDispatcher rd=request.getRequestDispatcher("contact.jsp");
				request.setAttribute("msg", "Problem in feedback");
			}
			else {
				RequestDispatcher rd=request.getRequestDispatcher("homepage.jsp");
				request.setAttribute("msg1", "Thank for Your Feedback");
				rd.include(request, response);
				
			}	
		}
}






