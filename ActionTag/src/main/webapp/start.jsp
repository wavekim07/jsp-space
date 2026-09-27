<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.action.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// Product 객체 리스트 생성
	List<Product> list = new ArrayList<>();
	list.add(new Product("1", "Apple", 3580));
	list.add(new Product("2", "Banana", 8890));
	list.add(new Product("3", "Lemon", 12400));
	list.add(new Product("4", "Mango", 5500));
	list.add(new Product("5", "Jamong", 8890));
	list.add(new Product("6", "Grape", 7840));
	list.add(new Product("7", "Melon", 5000));
	list.add(new Product("8", "Water Melon", 3580));
	// 다른 jsp 페이지로 이동할 때 데이터 전달하기
	session.setAttribute("productList", list); // Object 객체 데이터 형식으로 저장
%>
<jsp:forward page="products.jsp">
	<jsp:param value="<%= list.size() %>" name="productCount"/>
</jsp:forward>
</body>
</html>