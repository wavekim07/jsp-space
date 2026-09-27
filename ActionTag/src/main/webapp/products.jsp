<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.action.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	
	<div class="container">
		<h2 class="text-center">** Product List **</h2>
		<div class="list-group">
	<%
	// 전달받은 productList 데이터 가져오기
	List<Product> list = (ArrayList<Product>) session.getAttribute("productList");
	int count = Integer.parseInt(request.getParameter("productCount"));
	for (Product p : list) {
	%>
		<h4><a href="product_detail.jsp?pid=<%=p.getId() %>"><%= p.getName() %></a></h4>
		<h5><%= p.getPrice() %>원</h5>
	<% } %>
	
		</div>
	</div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>