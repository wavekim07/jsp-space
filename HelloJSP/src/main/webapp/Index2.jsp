<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello JSP2</title>
</head>
<body>
<%
	int r = 7;
%>
	<h1>원 면적 계산</h1>
	<h3>면적 = <%= r * r * 3.14 %></h3>
</body>
</html>