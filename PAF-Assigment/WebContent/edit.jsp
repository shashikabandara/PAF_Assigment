<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "assigment";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>message list</title>
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
	       
				 <li><a href="success.jsp" >PROFILE</a></li>
	            <li><a href="customerinsert.jsp" >SEND MESSAGE</a></li>
	            <li><a href="#" class="active"> MESSAGES LIST</a></li>
	            <li><a href="logout.jsp">LOGOUT</a></li>
	        </ul>
	</div>

	</nav>

<div class="container"> 
<form action="update" method="post" class="sendmsg" id="frmlogin_registration">
<fieldset>
	<legend>Edit profile</legend>
	
	<table>
	<%

try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM customer where id=3";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
	
	
		<div class="form-group">
<label>Customer ID</label>
<input type="text" name="cusid"  class="form-control" value="<%=resultSet.getString("id") %>" readonly>
		</div>
		<div class="form-group">
			<label>Name</label>
			<input type="text"  class="form-control" name="name" value="<%=resultSet.getString("name") %>">
	</div>
	<div class="form-group">
		<label>Email</label>
		<input type="text"  class="form-control" name="email" value="<%=resultSet.getString("email") %>">
		</div>
		<div class="form-group">
	<label>Phone number</label>
		<input type="text"  class="form-control" name="phone" value="<%=resultSet.getString("phone") %>">
	</div>
	<div class="form-group">
	
		<label>User name</label>
		<input type="text"  class="form-control" name="uname" value="<%=resultSet.getString("username") %>">
	</div>
	<div class="form-group">
	
		<label>Password</label>
		<input type="password"  class="form-control" name="pass" value="<%=resultSet.getString("password") %>">
	</div>
	<input type="submit" name="submit" value="Submit"  class="btn btn-primary">&nbsp&nbsp<input type="reset" value="Reset"  class="btn btn-danger">
	
</fieldset>
</form>
</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>




</div>
</div>



</body>
</html>














