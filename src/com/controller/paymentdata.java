package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class paymentdata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cardno = request.getParameter("cardno");
		String expdate = request.getParameter("expdate");
	    String cardname = request.getParameter("cardname");
	    String cvv = request.getParameter("cvv");
	    
	    System.out.println("paymentdata data"+cardno+" "+expdate+" "+cardname+" "+cvv);

	    HttpSession httpSession = request.getSession();
        httpSession.setAttribute("cardno", cardno);
        httpSession.setAttribute("expdate", expdate);
        httpSession.setAttribute("cardname", cardname);
        httpSession.setAttribute("cardname", cvv);
	    
	    response.sendRedirect("confirmation.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
