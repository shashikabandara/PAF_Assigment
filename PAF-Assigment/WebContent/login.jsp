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
	              <li><a href="#" >PROFILE</a></li>
	            <li><a href="#" >SEND MESSAGE</a></li>
	            <li><a href="#" > MESSAGES LIST</a></li>
	            <li><a href="#">LOGOUT</a></li>
	        </ul>
	</div>
	<div class="menuBar_right">
	     
	</div>
	</div>
	<form action="log" method="post" class="sendmsg" id="frmlogin_registration">
	<fieldset>
<legend>Login</legend>
<table>
<tr><td>User Name </td><td><input type="text" name="uid"></td></tr>
<tr><td>Password </td><td><input type="password" name="pass"></td></tr>

	
<tr><td><input type="submit" name="submit" value="login"></td><td><input type="reset" name="submit" value="Reset"></td></tr>


</table>
</fieldset>
</form>



</body>
</html>
