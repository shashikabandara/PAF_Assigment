
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="main.css" type="text/css" rel="stylesheet">
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
	       
	              <li><a href="success.jsp" class="active">PROFILE</a></li>
	            <li><a href="customerinsert.jsp" >SEND MESSAGE</a></li>
	            <li><a href="receivemessage.jsp" > MESSAGES LIST</a></li>
	            <li><a href="logout.jsp">LOGOUT</a></li>
	        </ul>
	</div>
	</nav>
<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	
	<div class="container">
	<form action="update" method="post" class="sendmsg" id="frmlogin_registration">
	<fieldset>
	<legend>Edit profile</legend>
			<div class="form-group">
			<label>Customer ID</label>
			
			<input type="text" name="cusid" class="form-control" value="<%= id %>" readonly>
			</div>
			<div class="form-group">
			<label>Name</label>
			<input type="text" name="name" class="form-control" value="<%= name %>">
			</div>
			<div class="form-group">
		<label>Email</label>
		<input type="text" name="email" class="form-control" value="<%= email %>">
		</div>
		<div class="form-group">
		<label>Phone number</label>
		<input type="text" name="phone" class="form-control" value="<%= phone %>">
		</div>
		<div class="form-group">
		<label>User name</label>
		<input type="text" name="uname" class="form-control" value="<%= userName %>">
		</div>
		<div class="form-group">
		<label>Password</label>
		<input type="password" name="pass" class="form-control" value="<%= password %>">
		</div>
	<input type="submit" name="submit" value="Submit" class="btn btn-primary">&nbsp&nbsp<input type="reset" value="Reset" class="btn btn-danger">		
	<br>
	
	</fieldset>
	</form>
	</div>

	
</body>
</html>