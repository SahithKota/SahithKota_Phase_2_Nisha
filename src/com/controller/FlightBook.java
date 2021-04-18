package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FlightBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flightname = request.getParameter("flightname");
		String flightprice = request.getParameter("flightprice");
	    String flightnumber = request.getParameter("flightnumber");
	    
	    System.out.println("FlightBook data"+flightname+" "+flightprice+" "+flightnumber);

	    HttpSession httpSession = request.getSession();
        httpSession.setAttribute("flightname", flightname);
        httpSession.setAttribute("flightprice", flightprice);
        httpSession.setAttribute("flightnumber", flightnumber);
	    
	    response.sendRedirect("BookingDetails.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
