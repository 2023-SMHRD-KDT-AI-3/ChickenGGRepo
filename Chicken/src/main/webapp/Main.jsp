<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <title>치킨 연구소</title>
    <link rel="stylesheet" href="assets/css/main.css"></link>
</head>
<body>
    <!-- 왼쪽 고정된 네비게이션 바 -->
    <div class="left-navbar">
        <!-- 로고 넣는곳 -->
        <div class="navbar_logo">
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

    <!-- 네비게이션 바 만드는곳 -->
    <nav class="navbar">
        <!-- 로고 넣는곳 -->
        <div class="navbar_logo">
            <a href="goMain" id="navbar__logoimg"><img src="images/하얀닭.png" alt="치킨 연구소 로고"></a>
        </div>

        <!-- 로그인 및 검색 부분 -->
        <div class="login-search">
            <form action="" method="post">
                <select name="sk">
                    <option value="chi_brand">브랜드</option>
                    <option value="chi_menu">메뉴</option>
                    <option value="store_name">가게명</option>
                </select>
                <input type="text" class="sr_input" name="sr_input" placeholder="Search">
                <input type="submit" value="검색버튼">
            </form>

            <form action="login" method="post" class="login-input">
                <input type="text" placeholder="아이디" name="id">
                <input type="password" placeholder="비밀번호" name="pw">
                <button class="login-button">로그인</button>
            </form>
        </div>
    </nav>

    <!-- 페이지 콘텐츠 -->
    <div class="content">
        <!-- 여기에 페이지 콘텐츠를 추가합니다. -->
        <div id="map"></div>
    </div>

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7e2b526848581a881e6fb021763237d6"></script>

    <script>
        var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
        var options = { //지도를 생성할 때 필요한 기본 옵션
	    center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	    level: 3 //지도의 레벨(확대, 축소 정도)
        };

        var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
    </script>
</body>
</html>
