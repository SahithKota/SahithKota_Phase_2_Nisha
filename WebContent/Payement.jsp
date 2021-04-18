<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Page</title>
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
<h2>Payment</h2>
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
 <form action="paymentdata" method="get">
        <div class="container">
        <h3>Flight Details</h3>
    <label><b>Flight Number:<%=httpSession.getAttribute("flightnumber")%></b></label><br>
    <label><b>Flight Name:<%=httpSession.getAttribute("flightname")%></b></label><br>    
    <label><b>From:<%=httpSession.getAttribute("source")%></b></label><br>
    <label><b>To:<%=httpSession.getAttribute("destin")%></b></label><br>
    <label><b>Flight Price:<%=httpSession.getAttribute("flightprice")%> X <%=httpSession.getAttribute("person")%> = <%=tot%></b></label><br><br>
    
    <label><b>Card Number:</b></label>
    <input type="text" name = "cardno" placeholder="Enter card number" required>      
    
    <label><b>Expiry Date:</b></label>
    <input type="date" placeholder="dd-mm-yy" name="expdate" required />
    
    <label><b>Card Holder Name:</b></label>
    <input type="text" placeholder="Enter card holder name" name="cardname" required>
    
    <label><b>CVV:</b></label>
    <input type="text" placeholder="Enter cvv" name="cvv" required>
        
    <button type="submit">Pay</button>
  </div>
     </form>
</body>
</html>