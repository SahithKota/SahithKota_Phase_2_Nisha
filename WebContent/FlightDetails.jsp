<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Flight Details</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#flight td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#flight tr:nth-child(even){background-color: #f2f2f2;}

#flight tr:hover {background-color: #ddd;}

#flight th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
  
  button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}
}
</style>
</head>
<body>
<div class="container">
    <h2 align="center"><b>Admin Dashboard</b></h2>
    <div class="w3-bar w3-white w3-card" id="myNavbar">
    <div class="w3-right w3-hide-small">
        <a href="AdminLogin.jsp" class="w3-bar-item w3-button">Logout</a>
    </div>
</div>
    <br>
    <div class="row">
        <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
            <form method="post" action="${pageContext.request.contextPath}/ChangePassword.jsp">
                <button type="submit" class="btn btn-success mb-2 btn-block">Change Password</button>
            </form>&ensp;
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
            <form method="post" action="${pageContext.request.contextPath}/addflight.jsp">
                <button type="submit" class="btn btn-success mb-2 btn-block">Add new Flight</button>
            </form>&ensp;
        </div>
        <br>
    </div>
</div>
<table id="flight" class="table table-bordered">
    <tr>
        <th>Flight Number</th>
        <th>Flight Name</th>
        <th>Source</th>
        <th>Destination</th>
        <th>Type</th>
        <th>Price</th>
    </tr>
    <%
    Connection connection = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlyAway", "root", "Pandu123$");
		String Query ="Select * from flights";
		Statement statement = connection.createStatement();
		ResultSet rs = statement.executeQuery(Query);
		while(rs.next())
		{
			%>
			 <tr>
			<td><%=rs.getInt(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getInt(6)%></td>
        </tr>
			<%
		}
	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}  
     
    %>
</table>
</body>
</html>