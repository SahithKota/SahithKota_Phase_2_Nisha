<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
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
<h2>Registration Page</h2>
<div class="w3-bar w3-white w3-card" id="myNavbar">
    <div class="w3-right w3-hide-small">
        <a href="home" class="w3-bar-item w3-button">Home Page</a>
    </div>
</div>
<h3>Enter Passenger details</h3>
 <form action="registration" method="get">
        <div class="container">
 
    <label><b>Passenger Name:</b></label>
    <input type="text" name = "passname" placeholder="Enter passenger name" required>      
    
    <label><b>Email ID:</b></label>
    <input type="text" placeholder="Enter email id" name="emailid" required>
    
    <label><b>Phone Number:</b></label>
    <input type="text" placeholder="Enter ohone number" name="phoneno" required>
        
    <button type="submit">Next</button>
  </div>
     </form>
</body>
</html>