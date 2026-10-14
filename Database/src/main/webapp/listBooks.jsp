<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bookshop.BookDAO" %>  
<%@ page import="com.bookshop.BookDTO" %> 
<%@ page import="java.util.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>북쇼핑몰</title>
</head>
<body>
	<h1>도서 목록</h1>
	<%
	BookDAO bookDAO = new BookDAO();
	ArrayList<BookDTO> books = bookDAO.getAllBooks();
	int no = 1;
	if (books.size() > 0) {
		for (BookDTO b : books) {
	%>
		<p>[<%= no++ %>] <a href="showBook.jsp?title=<%= b.getTitle() %>"><%= b.getTitle() %></a> / <%= b.getPubdate() %> /
			<%= b.getPrice() %> / <%= b.getRating() %></p>
	<% } // for %>
	<% } else { %>
		<p>등록된 도서가 없습니다.</p>
	<% } // if %>
</body>
</html>












