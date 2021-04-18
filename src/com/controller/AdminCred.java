package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AdminCred extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String admin="sahith";
		String adminpass="Kota123";
		String pword = request.getParameter("pass");
		HttpSession httpSession = request.getSession();
        String newpass = (String) httpSession.getAttribute("changepass");
        System.out.println("new password"+newpass);
        if(newpass!="" && newpass !=null && newpass!="null")
        {
        	adminpass=newpass;
        }
        System.out.println("adminpass password"+adminpass);
        if(admin.equals("sahith") && pword.equals(adminpass))
	    {
        	 response.sendRedirect("FlightDetails.jsp");
	    }
	    else
	    {
	    	response.sendRedirect("AdminLogin.jsp");
	    }
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
