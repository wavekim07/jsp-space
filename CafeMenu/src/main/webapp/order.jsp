<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="cafe.menu.OrderItem" %>
<%@ page import="cafe.menu.Menu" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Order</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container my-5">
	<h1 class="text-center mb-4">주문 내역</h1>
	<%
		// 세션 객체에서 메뉴 데이터 가져오기
		List<Menu> list = (List<Menu>) session.getAttribute("menudata");
		// 주문 내역을 저장할 리스트 생성
		List<OrderItem> items = new ArrayList<>();
		int total = 0;  // 주문 총금액
		// Querystring으로 전달되는 파라미터를 이름으로 가져오기
		Enumeration<String> names = request.getParameterNames(); // 파라미터 이름들의 집합
		while (names.hasMoreElements()) {
			String name = names.nextElement(); // Americano
			String qty = request.getParameter(name);
			if (qty != null && !qty.isEmpty()) { // 수량이 있으면
				int intQty = Integer.parseInt(qty); // 문자열 --> 정수 변환
				if (intQty > 0) { // 주문한 거
					// OrderItem 객체 생성하고 items에 추가하기
					int price = 0;
					for (Menu m : list) {
						if (m.getMenuName().equals(name)) {
							price = intQty * m.getPrice();
							break;
						}
					}
				/*
					if (name.equals("Americano")) price = intQty * 4900;
					else if (name.equals("Espresso")) price = intQty * 4100;
					else if (name.equals("Cappuchino")) price = intQty * 5500;
					else if (name.equals("Malcha Latte")) price = intQty * 5800;
					else if (name.equals("Green Tea")) price = intQty * 5400;
					else if (name.equals("Jamong Tea")) price = intQty * 5500; */
					// OrderItem 객체 생성
					OrderItem item = new OrderItem(name, intQty, price);
					items.add(item);
					total += price;
				}
			}
		} // while
		if (items.isEmpty()) {
	 %>
	 	<p class="alert alert-warning text-center" role="alert">주문한 음료가 없습니다</p>
	 	<p><a href="menu.jsp" class="btn btn-danger mt-3">메뉴 주문하기</a>
	 
	 <% } else { // if (items.isEmpty()) %>
	 <table class="table table-bordered">
			<thead class="table-info">
				<tr class="text-center">
					<th>번호</th><th>메뉴</th><th>수량</th><th>금액</th>
				</tr>
			</thead>
			<tbody>
			<%
				int no = 1;
				for(OrderItem item : items) {   // foreach
			%>
				<tr class="text-center">
					<td><%= no++ %></td>
					<td><%= item.getMenuName() %></td>
					<td><%= item.getQty() %></td>
					<td class="text-end"><%= item.getPrice() %></td>
				</tr>
			<% } %>
			</tbody>
			<tfoot class="table-light">
				<tr>
					<td colspan="3" class="text-center"><b>주문금액</b></td>
					<td class="text-end"><%= total %></td>
				</tr>
			</tfoot>
	</table>
	<p><a href="menu.jsp" class="btn btn-success mt-3">메뉴 주문하기</a>
	<% } %>
</div>
</body>
</html>