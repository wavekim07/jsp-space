<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>      
<body>
	<div class="container mt-4">
		<h2>로그인</h2>
		<form action="../LoginController" method="post">
			<div class="mb-3">
				<label class="form-label">아이디</label>
				<input type="text" name="mid" class="form-control" required>
			</div>
			<div class="mb-3">
				<label class="form-label">비밀번호</label>
				<input type="password" name="pwd" class="form-control" required>
			</div>
			<button class="btn btn-primary w-100">로그인</button>
		</form>
		<p>아직 회원이 아니신가요? <a href="joinForm.jsp">회원가입</a></p>
	</div>
</body>
</html>