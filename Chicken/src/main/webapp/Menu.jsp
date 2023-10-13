<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/3a115195d8.js"
	crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<title>메뉴 별 치킨연구소</title>
<link rel="stylesheet" href="assets/css/Menu.css"></link>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
</head>
<body>
	<!-- 왼쪽 고정된 네비게이션 바 -->
	<div class="left-navbar">
		<!-- 로고 넣는곳 -->
		<div class="left-navbar-logo">
			<a href="goMain"><h2>🅒🅗🅘🅒🅚🅔🅝.🅖🅖</h2></a>
		</div>
		<!-- hr 태그는 수평선용임 -->
		<hr class="hrhr"></hr>
		<div class="left-navbar-menu-logo">
			<a href="goMain"> <i class="fas fa-home"></i> 홈
			</a> <a href="Brand.jsp"> <i class="fas fa-list"></i> 브랜드
			</a> <a href="Menu.jsp"> <i class="fas fa-utensils"></i> 메뉴
			</a> <a href="MyPage.jsp"> <i class="fas fa-trophy"></i> 마이페이지
			</a>
		</div>
		<!-- 여기에 추가 메뉴 항목을 추가할 수 있습니다. -->
	</div>

	<!-- 네비게이션 바 만드는곳 -->
	<nav class="navbar">
		<!-- 로고 넣는곳 -->
		<div class="navbar-logo">
			<a href="goMain" id="navbar_logoimg"><img src="images/하얀닭.png"
				alt="치킨 연구소 로고"></a>
		</div>

		<div class="login-search">
			<form action="" method="post" class="sr">
				<select name="sr" class="select">
					<option selected>선택</option>
					<option value="chi_brand">브랜드</option>
					<option value="chi_menu">메뉴</option>
				</select> <input type="text" class="sr-input" name="sr_input"
					placeholder="Search" autocomplete="off">
				<button type="submit" class="sr-input-btn">
					<i class="fa-solid fa-drumstick-bite fa-2xl"></i>
				</button>
			</form>
		</div>
		<div class="regi-login">
			<c:if test="${empty info}">
				<a href="MyPage.jsp"><button class="login-button">로그인</button></a>
				<a href="Register.jsp"><button class="register-button">회원가입</button></a>
			</c:if>
		</div>
		<div class="Logout-Container">
			<c:if test="${!empty info}">
				<h1>${info.nick}님환영합니다!</h1>
				<form action="Logout" method="post">
					<button class="Logout-Btn">로그아웃</button>
				</form>
			</c:if>
		</div>

	</nav>
	<div>
		<div class="brandlogo">
			<h1 class="brand">MENU</h1>
			<button type="submit" class="compare">비교하기</button>
			<span id="compare_list"></span>
			<hr>
		</div>
	</div>
	<!-- 치킨 사진 슬라이드 -->
	<div class="slideshow-container">
		<div class="Slidesbackground">
			<div class="mySlides">
				<input type="checkbox" class="logocheck" name="menuCompare" value="교촌순살" onclick="getCheckboxValue()" />
				<img src="images/chickMenu/교촌/교촌순살.png">
			</div>
			<div class="mySlides">
				<input type="checkbox" class="logocheck" name="menuCompare" value="교촌오리지널" onclick="getCheckboxValue()" />
				<img src="images/chickMenu/교촌/교촌오리지널.png">
			</div>
			<div class="mySlides">
				<input type="checkbox" class="logocheck" name="menuCompare" value="교촌윙" onclick="getCheckboxValue()" />
				<img src="images/chickMenu/교촌/교촌윙.png">
			</div>
			<div class="mySlides">
				<img src="images/chickMenu/교촌/교촌콤보.png">
			</div>
			<div class="mySlides">
				<img src="images/chickMenu/교촌/레드순살.png">
			</div>
			<div class="mySlides">
				<img src="images/chickMenu/교촌/레드오리지널.png">
			</div>
			<div class="mySlides">
				<img src="images/chickMenu/교촌/레드윙.png">
			</div>
			<div class="mySlides">
				<img src="images/chickMenu/교촌/레드콤보.png">
			</div>
			<div class="mySlides">
				<img src="images/chickMenu/교촌/반반오리지널.png">
			</div>
			<div class="mySlides">
				<img src="images/chickMenu/교촌/블랙시크릿순살.png">
			</div>
			<div class="mySlides">
				<img src="images/chickMenu/교촌/블랙시크릿오리지널.png">
			</div>
			<div class="mySlides">
				<img src="images/chickMenu/교촌/블랙시크릿콤보.png">
			</div>
			<div class="mySlides">
				<img src="images/chickMenu/교촌/허니순살.png">
			</div>
			<div class="mySlides">
				<img src="images/chickMenu/교촌/허니오리지널.png">
			</div>
			<div class="mySlides">
				<img src="images/chickMenu/교촌/허니점보윙.png">
			</div>
			<div class="mySlides">
				<img src="images/chickMenu/교촌/허니콤보.png">
			</div>
		</div>
		<div class="Menu-Slide-Button">
			<button class="prev" onclick="plusSlides(-1)">이전</button>
			<button class="next" onclick="plusSlides(1)">다음</button>
		</div>
	</div>
	<div style="text-align: center; margin-top: 5px;">치킨사진 모음관</div>
	<script src="assets/js/Menu.js"></script>
</body>
</html>