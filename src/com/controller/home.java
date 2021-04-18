package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class home extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession httpSession = request.getSession();
		httpSession.removeAttribute("number");
		httpSession.removeAttribute("name");
		httpSession.removeAttribute("date");
		httpSession.removeAttribute("source");
		httpSession.removeAttribute("destin");
		httpSession.removeAttribute("day");
		httpSession.removeAttribute("price");
		httpSession.removeAttribute("flightname");
		httpSession.removeAttribute("flightprice");
		httpSession.removeAttribute("flightnumber");
		httpSession.removeAttribute("passname");
		httpSession.removeAttribute("emailid");
		httpSession.removeAttribute("phoneno");
		httpSession.removeAttribute("cardno");
		httpSession.removeAttribute("expdate");
		httpSession.removeAttribute("cardname");
		httpSession.removeAttribute("cvv");
		httpSession.removeAttribute("person");
		response.sendRedirect("HomePage.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
