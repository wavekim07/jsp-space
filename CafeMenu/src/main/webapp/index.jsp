<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>환영합니다 - 우리 동네 카페</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .hero-section {
            /* 배경 이미지를 중앙에 배치하고 전체 화면을 채우도록 설정 */
            background: url('images/bg-image.jpg') no-repeat center center;
            background-size: cover;
            background-position: center;
            /* 높이를 뷰포트의 100%로 설정 */
            height: 100vh;
            /* 텍스트와 버튼이 중앙에 오도록 Flexbox 설정 */
            display: flex;
            justify-content: center;
            align-items: center;
            /* 텍스트를 더 잘 보이게 하기 위해 어두운 오버레이 추가 */
            position: relative;
            color: white;
            text-align: center;
        }
        /* 오버레이 효과 */
        .hero-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* 검은색 반투명 오버레이 */
        }
        /* 콘텐츠가 오버레이 위에 올라오도록 z-index 설정 */
        .hero-content {
            position: relative;
            z-index: 10;
        }
    </style>
</head>
<body>
    <div class="hero-section">
        <div class="hero-content">
            <h1 class="display-1 fw-bold mb-3">Welcome to Our Cafe</h1>
            <p class="lead mb-4">
                신선한 원두로 내린 특별한 커피를 만나보세요.<br>
                따뜻한 분위기에서 편안하게 머물다 가세요.
            </p>
            <a href="menu.jsp" class="btn btn-primary btn-lg rounded-pill px-5">
                메뉴 보러가기
            </a>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>