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

</head>
<body>
<div class="header_web">
	
	<div class="menuBar">
	        <ul>
	              <li><a href="success.jsp" >PROFILE</a></li>
	            <li><a href="#" class="active">SEND MESSAGE</a></li>
	            <li><a href="receivemessage.jsp" > MESSAGES LIST</a></li>
	            <li><a href="logout.jsp">LOGOUT</a></li>
	        </ul>
	</div>
	<div class="menuBar_right">
	     
	</div>
	</div>
<form class="sendmsg" action="insert" method="post" id="frmlogin_registration">
<fieldset>
<legend>Send a message</legend>
<table>
<tr>
<td>From:</td><td><input type="email" name="from" id="f" placeholder="Email" cols="40" rows="1" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" required></td>
</tr>
<tr>
<td>To:</td><td><input type="email" id="t" name="to" placeholder="Email" cols="40" rows="1" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" required></td>
</tr>
<tr>
<td>Subject:</td><td><textarea cols="40" rows="1" name="subject" placeholder="Subject" required></textarea></td>
</tr>
<tr>
<td>Message:</td><td><textarea cols="40" rows="5" name="message" placeholder="Enter a message" required></textarea></td> 
</tr>

</table>
<input type="submit"  value="Submit">
<input type="reset" value="Reset"><br><br> 
</fieldset>
</form>
<table>
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

</body>
</html>