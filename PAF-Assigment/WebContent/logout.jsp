<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
<link href="main.css" type="text/css" rel="stylesheet">
<script src="logout.js"></script>
</head>
<body>
  	<div class="header_web">
	
	<div class="menuBar">
	        <ul>
	           <li><a href="success.jsp" >PROFILE</a></li>
	            <li><a href="customerinsert.jsp" >SEND MESSAGE</a></li>
	            <li><a href="receivemessage.jsp" > MESSAGES LIST</a></li>
	            <li><a href="#" class="active">LOGOUT</a></li>
	        </ul>
	</div>
	</div>
<form class="log" id="logout" action="profile.html" method="get" onsubmit="sub()" id="frmlogin_registration">

<fieldset>
<legend>Confirm Logout</legend>
<h1>Do You Wish To Log Out<br>Now.</h1>
<input type="submit" value="Log Out" id="b1" onclick="sub('b1')">
<input type="submit" value="Cancel" id="b2" onclick="sub('b2')">
</fieldset>
</form>
</body>
</html>