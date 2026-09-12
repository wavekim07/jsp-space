<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calc.jsp</title>
</head>
<body>
	<%
		int a = 1;
		double b = 1;
	// query string으로 전달된 매개변수 가져오기
		if (request.getParameter("a") != null) {
			a = Integer.parseInt(request.getParameter("a"));
			b = Double.parseDouble(request.getParameter("b"));
		} 
	%>
	<h1>사칙연산 계산</h1>
	<p>a = <%= a %> <br>b = <%= b %></p>
	<p>a + b = <%= a + b %><br>
	a - b = <%= a - b %><br>
	a * b = <%= a * b %><br>
	a / b = <%= String.format("%.2f",a / (double)b) %></p>
</body>
</html>