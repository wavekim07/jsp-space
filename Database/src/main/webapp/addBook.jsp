<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book(addBook.jsp)</title>
</head>
<body>
	<h1>신규 도서 등록</h1>
	<form action="addBookProc.jsp" method="get">
		제목 : <input type="text" name="title"> <br>
		출간일 : <input type="date" name="pubdate"> <br>
		가격 : <input type="number" name="price"> <br>
		평점 : <input type="text" name="rating"> <br>
		<br>
		<input type="submit" value="도서등록">
	</form>
	<hr>
	<form action="findBook.jsp" method="get">
		제목 : <input type="text" name="title">
		<input type="submit" value="도서검색">
	</form>
</body>
</html>








