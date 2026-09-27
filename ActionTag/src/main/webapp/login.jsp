<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
</head>
<body>
<%
	String uid = request.getParameter("uid");
	if (uid == null || uid.isBlank()) uid = "blank";
%>
	<h1>User Login</h1>
	<form action="login_proc.jsp" method="get"><br>
		User ID : <input type="text" name="uid" value="<%= uid %>"/><br>
		Password : <input type="password" name="pwd"/><br>
		Name : <input type="text" name="name"/><br>
		Point : <input type="number" name="point" min="1000" max="10000" step="100"/><br>
		<input type="submit" value="Login"/><br>
	</form>
</body>
</html>