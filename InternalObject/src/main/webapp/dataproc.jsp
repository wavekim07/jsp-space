<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data Proc</title>
</head>
<body>
	<h1>Request Object</h1>
	<p>getParameter() : 매개변수 1개 값을 가져옴</p>
	<p>getParameterNames() : 모든 매개변수들의 이름을 가져옴. 결과가 배열로 만들어짐</p>
	<p>getParameterMap() : 모든 매개변수들을 맵 구조로 가져옴. 키와 값의 쌍으로 구성</p>
	<h2>getParameter()</h2>
	<%
	request.setCharacterEncoding("utf-8"); // 한글로 입력한 값을 가져오기
	String name = request.getParameter("uname");
	String birth = request.getParameter("birth");
	String[] hobby = request.getParameterValues("hobby");
	String skill = request.getParameter("skill");
	%>
	<p>이름 : <%= name %></p>
	<p>생년월일 : <%= birth %></p>
	<p>수준 : <%= skill %></p>
	<p>취미 :
		<%
		for (String h : hobby) out.println(h + ", ");
		%>
	</p>
	<h2>getParameterNames()</h2>
	<%
	Enumeration<String> names = request.getParameterNames(); // 모든 매개변수 목록
	%>
	<p>
		전달되는 매개변수 목록 :
		<ul>
		<%
		while (names.hasMoreElements()) {
			String paramName = names.nextElement();
			String value = request.getParameter(paramName);
			out.println("<li>" + paramName + " : " + value + "</li>");
		}
		%>
		</ul>
	</p>
	<h2>getParameterMap()</h2>
	<%
	Map<String, String[]> map = request.getParameterMap();
	Set<String> keys = map.keySet(); // 키들의 집합
	for (String key : keys) {
		String[] values = map.get(key); // 키에 해당하는 값을 가져옴
	%>
		<li>
			파라미터 이름(key) : <%= key %>
			값 : 
			<%
				for (String v : values) out.println(v);
			%>
		</li>
	<% } %>
	<h2>클라이언트 정보</h2>
	<p>
		클라이언트 IP 주소 : <%= request.getRemoteAddr() %> / <%= request.getRemotePort() %> <br>
		요청 URL : <%= request.getRequestURL() %>
		요청 메소드 : <%= request.getMethod() %>
	</p>
</body>
</html>