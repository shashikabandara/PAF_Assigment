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
<meta charset="ISO-8859-1">
<title>reply</title>
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
	            <li><a href="#" class="active">SEND MESSAGE</a></li>
	            <li><a href="receivemessage.jsp" > MESSAGES LIST</a></li>
	            <li><a href="logout.jsp">LOGOUT</a></li>
	        </ul>
		</div>
</nav>
<div class="container">
<form class="sendmsg" action="insert" method="post" id="frmlogin_registration">
<fieldset>
<legend>Send a message</legend>

<div class="form-group">
<label>From:</label><input type="email" name="from" class="form-control" id="f" placeholder="Email" cols="40" rows="1" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" required>
</div>
<div class="form-group">
<label>To:</label><input type="email" id="t" name="to" class="form-control" placeholder="Email" cols="40" rows="1" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" required>
</div>
<div class="form-group">
<label>Subject:</label><textarea cols="40" rows="1" class="form-control" name="subject" placeholder="Subject" required></textarea>
</div>
<div class="form-group">
<label>Message:</label><textarea cols="40" rows="5" class="form-control" name="message" placeholder="Enter a message" required></textarea> 
</div>
<input type="submit"  value="Submit" class="btn btn-primary">
<input type="reset" value="Reset" class="btn btn-danger"><br><br> 
</fieldset>
</form>
</div>
<div class="container">
<legend>Display send messages</legend>
<table class="table table-condensed">
<tr>
<th class="aa">#</th>
<th class="aa">Sender Message</th>
<th class="aa">Receiver Message</th>
<th class="aa">Subject of the Message</th>
<th class="aa">Message</th>


</tr>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM sendmessage";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr>

<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("fromm") %></td>
<td><%=resultSet.getString("too") %></td>
<td><%=resultSet.getString("subject") %></td>
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
</div>
</body>
</html>