<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>
	<%
	String uid = (String) session.getAttribute("userId");
	if (uid != null) {
		out.println("<p>세션 타임아웃(초) : " + session.getMaxInactiveInterval() + "</p>");
		// 세션 정보 삭제. 세션 객체 자체를 소멸하는 것
		session.invalidate();
	}
	%>
	<p>로그아웃 성공</p>
	<p><a href="login.jsp">로그인 페이지로 이동</a>
</body>
</html>