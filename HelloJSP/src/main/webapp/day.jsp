<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day.jsp</title>
</head>
<%!
	Calendar cal = Calendar.getInstance();
%>
<body>
	<h1>오늘의 메세지</h1>
	<%
		int day = cal.get(Calendar.DAY_OF_WEEK);
		String msg;
		// 주말인지 평일인지 확인해서 메세지
		if (day == Calendar.SUNDAY || day == Calendar.SATURDAY)
			msg = "오늘은 휴일입니다. 즐거운 휴식!!";
		else 
			msg = "오늘은 평일입니다. 힘찬 하루!!";
	%>
	<h2><%= msg %></h2>
</body>
</html>