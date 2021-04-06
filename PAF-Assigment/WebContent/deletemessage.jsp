<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="main.css" type="text/css" rel="stylesheet">

</head>
<body>
	<div class="header_web">

	<div class="menuBar">
	        <ul>
	            <li><a href="success.jsp"  >PROFILE</a></li>
	            <li><a href="customerinsert.jsp" class="active">SEND MESSAGE</a></li>
	            <li><a href="receivemessage.jsp" > MESSAGES LIST</a></li>
	            <li><a href="logout.jsp" >LOGOUT</a></li>
	        </ul>
	</div>
	<div class="menuBar_right">
	     
	</div>
	</div>
<form action="delete" method="post" class="sendmsg" id="frmlogin_registration">
<fieldset>
<legend>Delete message</legend>
<table><tr><td>Please enter the Message ID to delete the specific message</td></tr></table><input type="text" name="d">
<input type="submit" value="Submit">
<input type="reset" value="reset">
</fieldset>
</form>
</body>
</html>