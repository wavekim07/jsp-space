<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Photo Gallery</title>
<style>
	.gallery-container {
		display: flex;
		flex-wrap: wrap;
		gap: 20px;
		justify-content: center;
		padding: 20px;
	}
	.gallery-item {
		border: 1px solid #ddd;
		padding: 10px;
		text-align: center;
	}
	.gallery-item img {
		max-width: 250px;
		height: auto;
		display: block;
		margin-bottom: 10px;
	}
	.image-title {
		font-size: 14px;
		color: #555;
		margin-top: 5px;
	}
</style>
</head>
<body>
	<h1 style="text-align: center">Photo gallery</h1>
	<div class="gallery-container">
		<%
		// 갤러리 페에지의 이미지들과 제목 데이터 생성
		String[] images = {"pic1.jpg", "pic2.jpg", "pic3.jpg", "pic4.jpg", "pic5.jpg"};
		String[] titles = {"Photo 1", "Photo 2", "Photo 3", "Photo 4", "Photo 5"};
		// 이미지들을 반복해서 표시하기
		for (int i=0; i<images.length; i++) {
		%>
		<div class="gallery-item">
			<a href="images/<%= images[i] %>">
				<img src="images/<%= images[i] %>" alt="<%= titles[i] %>">
			</a>
			<p class="image-title"><%= titles[i] %></p>
		</div>
		<% } %>
	</div>
</body>
</html>






