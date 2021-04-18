<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmation Page</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=date], .form-control {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}


.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}
</style>
</head>
<body>
<div class="w3-bar w3-white w3-card" id="myNavbar">
    <div class="w3-right w3-hide-small">
        <a href="home" class="w3-bar-item w3-button">Home Page</a>
    </div>
</div>
<%
    HttpSession httpSession = request.getSession();
int price = Integer.parseInt(session.getAttribute("flightprice").toString());
int person = Integer.parseInt(session.getAttribute("person").toString());
int tot=price*person;
%>
 <h2>Confirmation Page</h2><br>
 <form action="SearchFlight">
        <div class="container">
        <h4>Your Payment from card <%=httpSession.getAttribute("cardno")%> for <%=httpSession.getAttribute("person")%> person/people on <%=httpSession.getAttribute("date")%> has been confirmed. Ticket will be sent to your Email and phone number</h2>
        
 <h3>Flight Details</h3><br>
    <label><b>Flight Number : <%=httpSession.getAttribute("flightnumber")%></b></label><br>
    <label><b>Flight Name : <%=httpSession.getAttribute("flightname")%></b></label><br>
    <label><b>Flight Price : <%=tot%></b></label><br>
    <label><b>From : <%=httpSession.getAttribute("source")%></b></label><br>
    <label><b>To : <%=httpSession.getAttribute("destin")%></b></label><br>
 
 <h3>Passenger Details</h3><br>   
    <label><b>Passenger name:<%=httpSession.getAttribute("passname")%></b></label><br>
    <label><b>Email ID:<%=httpSession.getAttribute("emailid")%></b></label><br>
    <label><b>Phone Number:<%=httpSession.getAttribute("phoneno")%></b></label><br>
      
    <h2>Thank you for booking..Have a safe journey!</h2>
  </div>
     </form>
</body>
</html>