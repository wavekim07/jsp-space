<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
<%
	String currTime = 
		new java.text.SimpleDateFormat("yyyy-mm-dd HH:mm:ss").format(new java.util.Date());
	String title = "Action Tag";
	String uid = "peter";
%>
	<jsp:include page="header.jsp" />
	<h1><%= title %></h1>
	<h3>Date : <%= currTime %></h3>
	<jsp:forward page="login.jsp">
		<jsp:param name="uid" value="<%= uid %>" />
	</jsp:forward>
</body>
</html>