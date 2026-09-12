<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test.jsp</title>
</head>
<body>
	<h1>스크립트 태그 학습</h1>
	<%!
		// 선언 태그 : 클래스의 멤버변수와 메소드를 정의하는 곳 
		int w, h;
		private int getSize() {
			return w * h;
		}
	%>
	<%
		// 스크립틀릿 태그 : _jspService() 메소드의 내용으로 들어감 
		w = 7;
		h = 11;
		int size = getSize();
	%>
	<h3>사각형 면적 = <%= size %></h3>
	<%
		int w2 = w * w;
		out.println("<h3>w2 = " + w2 + "</h3>");
	%>
	<h3>w2 = <%= w2 %></h3>
</body>
</html>