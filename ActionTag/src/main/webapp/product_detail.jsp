<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.action.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Detail</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	
	<div class="container my-6">
		<h2 class="text-center">Product Info</h2>
		<%
		// 전달되는 파라미터 pid 가져오기
		String pid = request.getParameter("pid");
		List<Product> list = (ArrayList<Product>) session.getAttribute("productList");
		Product prod = null;
		// list에서 pid와 일치하는 상품 객체 탐색
		for (Product p : list) {
			if (p.getId().equals(pid)) {
				prod = p;
				break;
			}
		}
		if (prod == null) {
		%>
			<jsp:forward page="error.jsp" />
		<% } else { %>
			<h4 class="text-primary"><%= prod.getName() %></h4>
			<h5 class="text-danger"><%= prod.getPrice() %>원</h5>
		<% } %>
	</div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>