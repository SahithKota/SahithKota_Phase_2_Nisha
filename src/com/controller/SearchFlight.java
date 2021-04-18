package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SearchFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String date = request.getParameter("date");
		String source = request.getParameter("source");
	    String destin = request.getParameter("destin");
	    String person = request.getParameter("person");
	    
	    System.out.println("Servlet data"+date+" "+source+" "+destin+" "+person);

	    HttpSession httpSession = request.getSession();
        httpSession.setAttribute("date", date);
        httpSession.setAttribute("source", source);
        httpSession.setAttribute("destin", destin);
        httpSession.setAttribute("person", person);
	    
	    response.sendRedirect("BookFlight.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
