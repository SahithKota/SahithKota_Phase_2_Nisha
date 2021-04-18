package com.controller;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String number = request.getParameter("number");
	    String name = request.getParameter("name");
	    String source = request.getParameter("source");
	    String destin = request.getParameter("destin");
	    String type = request.getParameter("type");
	    String price = request.getParameter("price");
	    Connection connection = null;
	    try {
			Class.forName("com.mysql.cj.jdbc.Driver");			
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlyAway", "root", "Pandu123$");
			 String sql = "insert into flights values(?, ?, ?, ?, ?, ?)";
			 PreparedStatement preparedStatement = connection.prepareStatement(sql);
             preparedStatement.setString(1, number);
             preparedStatement.setString(2, name);
             preparedStatement.setString(3, source);
             preparedStatement.setString(4, destin);
             preparedStatement.setString(5, type);
             preparedStatement.setString(6, price);
             int value = preparedStatement.executeUpdate();
             System.out.println(value);
             if(value>0)
             {
            	 response.sendRedirect("FlightDetails.jsp");
             }
         } catch (SQLException e) {
             e.printStackTrace();
         } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
