<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>브랜드 별 치킨연구소</title>
<link rel="stylesheet" href="assets/css/Brand.css"></link>
</head>
<body>
	<!-- 왼쪽 고정된 네비게이션 바 -->
	<div class="left-navbar">
		<!-- 로고 넣는곳 -->
		<div class="navbar-logo">
			<a href="goMain"><h2>🅒🅗🅘🅒🅚🅔🅝.🅖🅖</h2></a>
		</div>
		<a href="goMain"> <i class="fas fa-home"></i> 홈
		</a> <a href="#"> <i class="fas fa-list"></i> 브랜드
		</a> <a href="#"> <i class="fas fa-utensils"></i> 메뉴
		</a> <a href="#"> <i class="fas fa-trophy"></i> 마이페이지
		</a> <a href="#"> <i class="fas fa-map-marker-alt"></i> 지도
		</a>
		<!-- 여기에 추가 메뉴 항목을 추가할 수 있습니다. -->
	</div>

	<!-- 네비게이션 바 만드는곳 -->
	<nav class="navbar">
		<!-- 로고 넣는곳 -->
		<div class="navbar-logo">
			<a href="goMain" id="navbar_logoimg"><img src="images/하얀닭.png"
				alt="치킨 연구소 로고"></a>
		</div>

		<!-- 로그인 및 검색 부분 -->
		<div class="login-search">
			<form action="" method="post">
				<select name="sk">
					<option value="chi_brand">브랜드</option>
					<option value="chi_menu">메뉴</option>
					<option value="store_name">가게명</option>
				</select> <input type="text" class="sr-input" name="sr_input"
					placeholder="Search"> <input type="submit" value="검색버튼">
			</form>

			<form action="login" method="post" class="login-input">
				<input type="text" placeholder="아이디" name="id"> <input
					type="password" placeholder="비밀번호" name="pw">
				<button class="login-button">로그인</button>
			</form>
			<form action="register" method="post" class="register-input">
				<button class="register-button">회원가입</button>
			</form>
		</div>
	</nav>
	
	<a href="brand.jsp" id="newPage">브랜드</a>
	
	<div class="brandlogo">
		<div class="logobox">
			<a href="#" id="bbqbox"><img alt="bbq" src="../../images/brandlogo/logo-bbq.jpg"></a>
		</div>
	</div>

</body>
</html>