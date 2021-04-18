package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String passname = request.getParameter("passname");
		String emailid = request.getParameter("emailid");
	    String phoneno = request.getParameter("phoneno");
	    
	    System.out.println("registration data"+passname+" "+emailid+" "+phoneno);

	    HttpSession httpSession = request.getSession();
        httpSession.setAttribute("passname", passname);
        httpSession.setAttribute("emailid", emailid);
        httpSession.setAttribute("phoneno", phoneno);
	    
	    response.sendRedirect("Payement.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
