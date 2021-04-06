
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
	              <li><a href="success.jsp" class="active">PROFILE</a></li>
	            <li><a href="customerinsert.jsp" >SEND MESSAGE</a></li>
	            <li><a href="receivemessage.jsp" > MESSAGES LIST</a></li>
	            <li><a href="logout.jsp">LOGOUT</a></li>
	        </ul>
	</div>
	<div class="menuBar_right">
	     
	</div>
	</div>
<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	
	
	<form action="update" method="post" class="sendmsg" id="frmlogin_registration">
	<fieldset>
	<legend>Edit profile</legend>
	<table>
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="cusid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>"></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= userName %>"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="pass" value="<%= password %>"></td>
	</tr>	
	<tr><td><input type="submit" name="submit" value="Submit"></td><td><input type="reset" value="Reset"></td></tr>		
	
	</table>
	<br>
	
	</fieldset>
	</form>
	

	
</body>
</html>