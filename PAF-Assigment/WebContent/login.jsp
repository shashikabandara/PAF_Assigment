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
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
	        <ul class="nav navbar-nav">
	              <li><a href="#" >PROFILE</a></li>
	            <li><a href="#" >SEND MESSAGE</a></li>
	            <li><a href="#" > MESSAGES LIST</a></li>
	            <li><a href="#">LOGOUT</a></li>
	        </ul>
	</div>
</nav>
	
	<div class="container">
	<form action="log" method="post" class="sendmsg" id="frmlogin_registration">
	<fieldset>
<legend>Login</legend>
<table>
<tr><td><label>User Name : </label> </td><td><input type="text" class="form-control" name="uid" placeholder = "Enter Username"></td></tr>
<tr><td><label>Password : </label> </td><td><input type="password" class="form-control" name="pass" placeholder = "Enter Password"></td></tr>

	
<tr><td><input type="submit" name="submit" class="btn btn-primary" value="login"></td><td><input type="reset" class="btn btn-danger" name="submit" value="Reset"></td></tr>


</table>
</fieldset>
</form>
</div>
</nav>


</body>
</html>
