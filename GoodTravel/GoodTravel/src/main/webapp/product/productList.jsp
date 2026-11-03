<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.travel.dto.Product" %>
<%@ page import="java.util.*" %>
<%@ include file="../header.jsp" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-4">
		<h2 class="mt-4">여행 상품</h2>
		<div class="row">
		<%
		List<Product> list = (ArrayList<Product>) request.getAttribute("productList");
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
			<p class="text-muted">여행 상품이 없습니다.</p>
		<% } %>
		</div>
	</div>
</body>
</html>