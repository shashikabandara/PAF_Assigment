<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Profile</title>
<link href="main.css" type="text/css" rel="stylesheet">

</head>
<body>
<div class="header_web">

	<div class="menuBar">
	        <ul>
	              <li><a href="#" class="active">PROFILE</a></li>
	            <li><a href="customerinsert.jsp" >SEND MESSAGE</a></li>
	            <li><a href="receivemessage.jsp" > MESSAGES LIST</a></li>
	            <li><a href="logout.jsp">LOGOUT</a></li>
	        </ul>
	</div>
	<div class="menuBar_right">
	     
	</div>
	</div>

	  
<form action="" method="post" class="sendmsg" id="frmlogin_registration">
<fieldset>
<legend>Profile</legend>
<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	
	
	
</c:forEach>


<%

try{ 
	
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM customer where id=1";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<table>
<tr><td>Customer ID </td><td><%=resultSet.getString("id") %></td></tr>
<tr><td>Name </td><td><%=resultSet.getString("name") %></td></tr>
<tr><td>Email </td><td><%=resultSet.getString("email") %></td></tr>
<tr><td>Phone number </td><td><%=resultSet.getString("phone") %></td></tr>
<tr><td>User name </td><td><%=resultSet.getString("username") %></td></tr>
<tr><td>Password </td><td><%=resultSet.getString("password") %></td></tr>

</table>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

<c:url value="edit.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${cusupdate}">
	<input type="button" name="update" value="Edit">
	</a>
</fieldset>	

</form>
</body>
</html>














