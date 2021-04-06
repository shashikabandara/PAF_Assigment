<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	        
	            <li><a href="success.jsp"  >PROFILE</a></li>
	            <li><a href="customerinsert.jsp" class="active">SEND MESSAGE</a></li>
	            <li><a href="receivemessage.jsp" > MESSAGES LIST</a></li>
	            <li><a href="logout.jsp" >LOGOUT</a></li>
	        </ul>
</div>
</nav>
<div class="container">
<form action="delete" method="post" class="sendmsg" id="frmlogin_registration">
<fieldset>
<legend>Delete message</legend>
<div class="form-group">
<label>Please enter the Message ID to delete the specific message : </label><input type="text" name="d"  class="form-control">
</div>
<input type="submit" value="Submit" class="btn btn-primary" >
<input type="reset" value="Reset" class="btn btn-danger">
</fieldset>
</form>
</div>
</body>
</html>