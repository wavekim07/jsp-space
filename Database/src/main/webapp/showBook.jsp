<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bookshop.BookDAO" %>  
<%@ page import="com.bookshop.BookDTO" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>북쇼핑몰</title>
</head>
<body>
	<h1>도서 상세 정보</h1>
	<%
	String title = request.getParameter("title");
	BookDAO bookDAO = new BookDAO();
	BookDTO book = bookDAO.findBookByTitle(title);
	if (book != null) {
	%>
	<p>제목 : <%= book.getTitle() %></p>
	<p>출판일 : <%= book.getPubdate() %></p>
	<p>가격 : <%= book.getPrice() %></p>
	<p>평점 : <%= book.getRating() %></p>
	<p><a href="deleteBook.jsp?bookid=<%= book.getBookid() %>">도서 삭제</a></p>
	<% } else { %>
	<p>도서 정보 검색 오류</p>
	<% } %>
	<p><a href="listBooks.jsp">도서 목록</a></p>
</body>
</html>














