<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello JSP</title>
</head>
<body>
<%
	String name = "Tommy";
	int point = 10000;
%>
	<h1>Welcome, <%= name %></h1>
	<p>첫번째 JSP 파일</p>
	<p>신규회원 포인트 : <%= point %></p>
</body>
</html>