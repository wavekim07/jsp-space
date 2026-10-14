<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bookshop.BookDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>북쇼핑몰</title>
</head>
<body>
	<h1>도서 삭제</h1>
	<%
	int bookid = Integer.parseInt(request.getParameter("bookid"));
	BookDAO bookDAO = new BookDAO();
	boolean isOk = bookDAO.deleteBook(bookid);
	if (isOk) {
	%>
	<p>도서 삭제완료</p>			
	<%	} else { %>
	<p>도서 삭제 오류</p>
	<% } %>
	<p><a href="index.jsp">도서관리</a>
</body>
</html>