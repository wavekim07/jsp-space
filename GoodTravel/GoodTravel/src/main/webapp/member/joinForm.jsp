<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Good Travel</title>
</head>
<body>
<div class="container mt-5">
	<h3>회원가입</h3>
	<form action="../JoinController" method="post">
		<table>
			<tr>
				<td>아이디:</td>
				<td>
					<input type="text" name="mid" required>
				</td>
			</tr>
			<tr>
				<td>이름:</td>
				<td>
					<input type="text" name="name" required>
				</td>
			</tr>
			<tr>
				<td>비밀번호:</td>
				<td>
					<input type="password" name="pwd" required>
				</td>
			</tr>
			<tr>
				<td>이메일:</td>
				<td>
					<input type="text" name="email" required>
				</td>
			</tr>
			<tr>
				<td>전화번호:</td>
				<td>
					<input type="text" name="telno" placeholder="-없이 입력">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="회원가입">
					<input type="reset" value="입력취소">
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>