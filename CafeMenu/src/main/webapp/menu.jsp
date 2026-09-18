<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="cafe.menu.Menu" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cafe Menu</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
	table {
		border-collapse: collapse;
		width: 70%;
		text-align: center;
		margin-bottom: 10px;
	}
	th, td {
		border: 1px solid black;
	}	
</style>
</head>
<body>
<%
	// Menu 객체 리스트 생성
	ArrayList<Menu> list = new ArrayList<>(); // 가변길이배열을 만드는 컬렉션 객체 생성
	list.add(new Menu("Americano", 4900));
	list.add(new Menu("Espresso", 4100));
	list.add(new Menu("Cappuchino", 5500));
	list.add(new Menu("Malcha Latte", 5800));
	list.add(new Menu("Green Tea", 5400));
	list.add(new Menu("Jamong Tea", 5500));
	list.add(new Menu("Yogurt", 6200));
	// 메뉴 데이터를 세션 객체에 저장하기 - 다른 페이지에서 데이터 읽기 가능
	session.setAttribute("menudata", list); // 내장객체
%>
<div class="container my-5">
	<h1 class="text-center mb-4">까페 메뉴</h1>
	<form action="order.jsp" method="get"> <!--  get / post -->
		<table class="table table-hover table-striped">
			<thead class="table-dark">
				<tr>
					<th>번호</th><th>메뉴</th><th>가격</th><th>수량</th>
				</tr>
			</thead>
			<tbody>
			<%
				//for (int i=0; i<list.size(); i++) {
				int no = 1;
				for(Menu m : list) {   // foreach
			%>
				<tr>
					<td><%= no++ %></td>
					<td><%= m.getMenuName() %></td>
					<td><%= m.getPrice() %></td>
					<td>
						<input type="number" name="<%= m.getMenuName() %>" value="0" min="0" max="20">
					</td>
				</tr>
			<% } %>
			</tbody>
		</table>
		<div class="d-grid gap-2">
			<input type="submit" value="Order" class="btn btn-primary btn-lg">
		</div>
	</form>
</div>
</body>
</html>






