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
String dbName = "hotelmanagment";
String userId = "root";
String password = "shashika@12";

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
<script src="msglist.js"></script>
</head>
<body>
<div class="header_web">
	
	<div class="menuBar">
	        <ul>
				 <li><a href="success.jsp" >PROFILE</a></li>
	            <li><a href="customerinsert.jsp" >SEND MESSAGE</a></li>
	            <li><a href="#" class="active"> MESSAGES LIST</a></li>
	            <li><a href="logout.jsp">LOGOUT</a></li>
	        </ul>
	</div>
	<div class="menuBar_right">
	     
	</div>
	</div>
 <div class="side-content">
      <div class="msglist">
	  
<form action="update" method="post" class="sendmsg" id="frmlogin_registration">
<fieldset>
	<legend>Edit profile</legend>
	
	<table>
	<%

try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM customer where id=1";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
	
	
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="cusid" value="<%=resultSet.getString("id") %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%=resultSet.getString("name") %>"></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%=resultSet.getString("email") %>"></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%=resultSet.getString("phone") %>"></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%=resultSet.getString("username") %>"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="pass" value="<%=resultSet.getString("password") %>"></td>
	</tr>	
	<tr><td><input type="submit" name="submit" value="Submit"></td><td><input type="reset" value="Reset"></td></tr>			
	</table>
</fieldset>
</form>
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














