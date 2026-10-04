<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<%
	String uid = (String) session.getAttribute("userId");
	if(uid != null) {
	%>
	<h1>환영합니다. <%= uid %>님</h1>
	<p><a href="logout.jsp">로그아웃</a></p>
	<% } else { %>
	<h1>Member Login</h1>
	<form action="loginproc.jsp" method="post">
		<table>
			<tr>
				<td>User ID : </td>
				<td>
					<input type="text" name="uid" placeholder="User id" />
				</td>
			</tr>
			<tr>
				<td>Password : </td>
				<td>
					<input type="password" name="pwd"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="Login" />
				</td>
			</tr>
		</table>
	</form>
	<% } %>
</body>
</html>