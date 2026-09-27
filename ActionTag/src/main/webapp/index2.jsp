<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>사용자 프로필 입력</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style> body { display: flex; flex-direction: column; min-height: 100vh; } .content { flex: 1; } </style>
</head>
<body class="bg-light">
    <jsp:include page="header.jsp" />

    <div class="container content py-5">
        <div class="card p-4 mx-auto" style="max-width: 450px;">
            <h4 class="card-title text-center mb-4">프로필 정보 입력</h4>
            <form action="profile_proc.jsp" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">이름</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">이메일</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">프로필 생성</button>
                    <a href="start.jsp" class="btn btn-danger">Product List</a>
                </div>
            </form>
        </div>
    </div>

    <jsp:include page="footer.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>