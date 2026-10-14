<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bookshop.BookDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>
</head>
<body>
	<h1>신규 도서 등록</h1>
	<%
		// 입력한 데이터 가져오기
		String title = request.getParameter("title");
		String pubdate = request.getParameter("pubdate");
		int price =Integer.parseInt(request.getParameter("price"));
		double rating = Double.parseDouble(request.getParameter("rating"));
		
		BookDAO bookDAO = new BookDAO();
		boolean isOk = bookDAO.addNewBook(title, pubdate, price, rating);
		if (isOk) {
	%>
	<p>신규 도서 등록 완료 : <%= title %></p>			
	<%	} else { %>
	<p>도서 등록 오류</p>
	<% } %>
	<p><a href="addBook.jsp">도서등록</a>
</body>
</html>









