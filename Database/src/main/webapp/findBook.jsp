<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bookshop.BookDAO" %>   
<%@ page import="com.bookshop.BookDTO" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서검색</title>
</head>
<body>
	<h1>도서 검색</h1>
	<%
		String title = request.getParameter("title");
		BookDAO bookDAO = new BookDAO();
		BookDTO book = bookDAO.findBookByTitle(title);
		if (book != null) {
	%>
	<p>도서 검색 완료 : <%= book.getTitle() %></p>			
	<%	} else { %>
	<p>도서 검색 오류</p>
	<% } %>
	<p><a href="addBook.jsp">도서등록</a>
</body>
</html>