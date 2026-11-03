<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>      
<body>
	<%
	String msg = (String) request.getAttribute("ERROR");
	%>
	<div class="container mt-4 text-center">
		<h1>회원가입 실패</h1>
		<p>회원가입이 실패하였습니다. 원인 : <%= msg %></p>
		<p><a href="member/joinForm.jsp">회원가입</a></p>
	</div>
</body>
</html>