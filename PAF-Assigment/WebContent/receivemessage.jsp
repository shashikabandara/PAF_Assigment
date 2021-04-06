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

Connection connection = null;//
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
<script src="msglist.js"></script>

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
<legend>Recieved Message From User</legend>
<form id="ml" action="deletemessage.jsp"  onsubmit="sub()" id="frmlogin_registration">
<table class="table table-condensed">
<tr>
<th class="aa">#</th>
<th class="aa">Name</th>
<th class="aa">Subject</th>
<th class="aa">Designation</th>
<th class="aa">Email</th>
<th class="aa">Message</th>

</tr>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM receivemessage";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr>

<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("subject") %></td>
<td><%=resultSet.getString("designation") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("message") %></td>

</tr>

<% 
String idd=resultSet.getString("id");
}

} catch (Exception e) {
e.printStackTrace();
}
%>

</table>

<input type="submit" value="Delete a Message" class="btn btn-danger"><br><br>
</form>
<form action="customerinsert.jsp">
<input type="submit" value="Reply" id="v6" class="btn btn-primary" >

</form>
</div>



</body>
</html>














