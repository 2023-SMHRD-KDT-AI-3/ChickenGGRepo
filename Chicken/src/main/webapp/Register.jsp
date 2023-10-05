<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <title>치킨 연구소 회원가입</title>
    <link rel="stylesheet" href="assets/css/Register.css">
</head>
<body>
    <!-- 왼쪽 고정된 네비게이션 바 -->
    <div class="left-navbar">
        <!-- 로고 넣는곳 -->
        <div class="navbar-logo">
            <a href="goMain"><h2>🅒🅗🅘🅒🅚🅔🅝.🅖🅖</h2></a>
        </div>
        <a href="goMain">
            <i class="fas fa-home"></i>
            홈
        </a>
        <a href="#">
            <i class="fas fa-list"></i>
            브랜드
        </a>
        <a href="#">
            <i class="fas fa-utensils"></i>
            메뉴
        </a>
        <a href="#">
            <i class="fas fa-trophy"></i>
            랭킹
        </a>
        <a href="#">
            <i class="fas fa-map-marker-alt"></i>
            지도
        </a>
        <!-- 여기에 추가 메뉴 항목을 추가할 수 있습니다. -->
    </div>

    <!-- 회원가입 양식 -->
    <form action="Register" method="post">
        <div class="wrapper">
            <div class="title">
                <h1>회원가입</h1>
            </div>
            <div class="form-group">
                <label for="username">아이디:</label>
                <input id="username" type="text" name="id" placeholder="아이디를 입력하세요." required>
                <div id="usernameError" class="error"></div>
            </div>
            <div class="form-group">
                <label for="password">비밀번호:</label>
                <input id="password" type="password" name="pw" placeholder="비밀번호를 입력하세요." required>
            </div>
            <div class="form-group">
                <label for="confirmPassword">비밀번호 확인:</label>
                <input id="confirmPassword" type="password" placeholder="비밀번호를 다시 입력하세요." required>
                <div id="passwordMatchError" class="error"></div>
            </div>
            <div class="form-group">
                <label for="nickname">닉네임:</label>
                <input id="nickname" type="text" name="nick" placeholder="닉네임을 입력하세요." required>
                <div id="nicknameError" class="error"></div>
            </div>
            <div class="form-group">
                <button id="signUpButton" disabled>가입하기</button>
            </div>
        </div>
    </form>
    <script src="assets/js/Register.js"></script>
</body>
</html>
