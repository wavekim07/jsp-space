<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.travel.util.DBUtil" %>  
<%@ page import="com.travel.dao.MemberDAO" %>  
<%@ page import="java.sql.*" %> 
<%@ page import="java.time.*" %> 
<%@ include file="../header.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Good Travel</title>
</head>
<body>
	<%
	/*
	1. DB 연결하기
	2. 입력양식에 입력한 필드값 가져오기
	3. INSERT SQL 작성하기
	4. PreparedStatement 객체 생성하고 쿼리 실행하기
	5. 결과 처리하기
	6. DB 해제하기
	*/
		String mid = request.getParameter("mid");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String telno = request.getParameter("telno");
		String role = "user";
		LocalDate local = LocalDate.now();
		String regDate = local.toString();
		
		MemberDAO dao = new MemberDAO();
		int result = dao.signUp(mid,name,pwd,email,telno,role,regDate);
		
		if (result == 1) {
			out.println("<p>회원가입이 성공하였습니다.</p>");
			out.println("<p><a href='../index.jsp'>메인페이지 이동</a></p>");
		} else {
			out.println("<p>회원가입이 실패하였습니다.</p>");
			out.println("<p><a href='joinForm.jsp'>회원가입 이동</a></p>");
		}
	%>
</body>
</html>










