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
	            <li><a href="customerinsert.jsp" >SEND MESSAGE</a></li>
	            <li><a href="receivemessage.jsp" class="active"> MESSAGES LIST</a></li>
	            <li><a href="logout.jsp" >LOGOUT</a></li>
	        </ul>
	</div>
	<div class="menuBar_right">
	     
	</div>
	</div>
<form action="deletemessage.jsp" method="post" class="sendmsg" id="frmlogin_registration">
<fieldset>
<legend>Error message</legend>
<table><tr><td>Please enter a valid message ID to delete...Try again</td></tr></table>
<input type="submit" value="Ok">

</fieldset>
</form>
</body>
</html>