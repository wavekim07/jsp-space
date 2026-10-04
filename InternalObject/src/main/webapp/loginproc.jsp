<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginProc</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("uid");
	String pwd = request.getParameter("pwd");
	// 로그인 처리 : 데이터베이스에 회원정보 테이블에서 회원 검색 
	// 세션에 로그인 정보를 기록하기
	session.setAttribute("userId", uid);
	String sessionId = session.getId();
	%>
	<h1>로그인 성공</h1>
	<p>
		Session ID : <%= sessionId %>
	</p>
</body>
</html>