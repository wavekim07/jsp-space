<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.travel.dao.ProductDAO" %>  
<%@ page import="com.travel.dto.Product" %>
<%@ page import="java.util.*" %>
<%@ include file="header.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-4">
		<div class="jumbotron p-5 bg-success text-white rounded">
			<h1 class="display-5">Good Travel</h1>
			<p class="lead">당신의 행복한 여정이 시작되는 곳</p>
			<hr class="my-4">
			<p><a href="ProductList" class="btn btn-light" role="button">상품 보러가기</a>
		</div>
		<h3 class="mt-4">추천 상품</h3>
		<div class="row">
		<%
		ProductDAO dao = new ProductDAO();
		List<Product> list = dao.getTopProducts();
		if (list != null) {
			for (Product p : list) {
		%>
			<div class="col-md-3 mb-3">
				<div class="card h-100">
					<img src="images/<%= p.getImage() %>" class="card-img-top"
						style="height:160px; object-fit:cover">
					<div class="card-body">
						<h4 class="card-title"><%= p.getTitle() %></h4>
						<p class="card-text"><%= p.getRegion() %></p>
						<p class="text-danger fw-bold">
							<%= String.format("%,d원", p.getPrice()) %></p>
						<a href="" class="btn btn-outline-primary btn-sm">상세보기</a>
					</div>
				</div>
			</div>
		<%
			}
		} else {
		%>
			<p class="text-muted">추천 상품이 없습니다.</p>
		<% } %>
		</div>
	</div>
</body>
</html>









