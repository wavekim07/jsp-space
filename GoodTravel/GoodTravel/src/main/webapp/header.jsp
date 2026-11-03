<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.travel.dto.MemberDTO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Good Travel</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%
	MemberDTO member = (MemberDTO) session.getAttribute("USER");
%>
<nav class="navbar navbar-expand-lg navbar-primary bg-primary">
	<div class="container">
		<a class="navbar-brand text-white fw-bold" href="MainController">TravelNow</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ms-auto">
			<%
			if (member == null) {
			%>
				<li class="nav-item"><a class="nav-link text-white" href="member/login.jsp">로그인</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="member/joinForm.jsp">회원가입</a></li>
			<% } else { %>
				<li class="nav-item"><a class="nav-link text-white" href="">
						<%= member.getName() %></a></li>
				<li class="nav-item"><a class="nav-link text-white" href="logout">로그아웃</a></li>
			<% } %>
			</ul>
		</div>
	</div>
</nav>
</body>
</html>











