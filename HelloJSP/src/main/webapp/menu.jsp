<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hello.Menu" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Happy Menu</title>
</head>
<body>
	<%
	Menu[] menus = new Menu[3]; // 고정길이배열 생성
	menus[0] = new Menu("라면", 4500);
	menus[1] = new Menu("김밥", 6000);
	menus[2] = new Menu("돈까스", 11500);
	
	ArrayList<Menu> menus2 = new ArrayList<>(); // 가변배열
	menus2.add(new Menu("라면", 4500));
	menus2.add(new Menu("김밥", 6000));
	menus2.add(new Menu("돈까스", 11500));
	%>
	<h1>해피분식의 대표메뉴</h1>
	<ul>
		<%
		for (Menu m : menus2) {	// foreach 구문
		%>
		<li><%= m.getName() %> (<%= m.getPrice() %>원)</li>
		<% } %>
	<%--
		<%
		for (int i =0; i<menus.length; i++) {
		%>
		<li><%= menus[i].getName() %> (<%= menus[i].getPrice() %>원)</li>
		<% } %>
	--%>
	</ul>
</body>
</html>