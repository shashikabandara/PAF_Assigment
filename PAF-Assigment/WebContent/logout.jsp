<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
<link href="main.css" type="text/css" rel="stylesheet">
<script src="logout.js"></script>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Gadaget Badget</a>
    </div>
	        <ul class="nav navbar-nav">
	           <li><a href="success.jsp" >PROFILE</a></li>
	            <li><a href="customerinsert.jsp" >SEND MESSAGE</a></li>
	            <li><a href="receivemessage.jsp" > MESSAGES LIST</a></li>
	            <li><a href="#" class="active">LOGOUT</a></li>
	        </ul>
	</div>
	</nav>
<form class="log" id="logout" action="profile.html" method="get" onsubmit="sub()" id="frmlogin_registration">
<div class="container">
<fieldset>
<legend>Confirm Logout</legend>
<h1>Do You Wish To Log Out<br>Now.</h1>
<input type="submit" value="Log Out" id="b1" onclick="sub('b1')" class="btn btn-danger">
<input type="submit" value="Cancel" id="b2" onclick="sub('b2')" class="btn btn-primary">
</fieldset>
</div>
</form>
</body>
</html>