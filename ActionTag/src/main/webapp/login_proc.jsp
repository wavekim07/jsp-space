<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.action.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
</head>
<body>
	<h1>User 객체 생성</h1>
	<%
	String uid = request.getParameter("uid");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	int point = Integer.parseInt(request.getParameter("point"));
	User user = new User(uid,pwd,name,point);
	%>
	<jsp:useBean id="user2" class="com.action.User" scope="page"></jsp:useBean>
	<jsp:setProperty property="uid" name="user2" value="<%= uid %>"/>
	<jsp:setProperty property="pwd" name="user2" value="<%= pwd %>"/>
	<jsp:setProperty property="name" name="user2" value="<%= name %>"/>
	<jsp:setProperty property="point" name="user2" value="<%= point %>"/>
	
	<jsp:useBean id="user3" class="com.action.User" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="user3" />
	
	<p><%= user3.getName() %></p>
	<p><jsp:getProperty property="point" name="user3"/></p>
</body>
</html>