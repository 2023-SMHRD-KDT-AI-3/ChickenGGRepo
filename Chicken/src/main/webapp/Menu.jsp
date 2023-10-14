<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/3a115195d8.js"
	crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<title>메뉴 별 치킨연구소</title>
<link rel="stylesheet" href="assets/css/Menu.css"></link>
<style>
@font-face {
	font-family: 'GongGothicMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/GongGothicMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
    font-family: 'Giants-Inline';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-1@1.1/Giants-Inline.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

* {
	font-family: GongGothicMedium;
}
</style>
<link rel="stylesheet" href="assets/css/Menu.css"></link>
<link rel="stylesheet" href="assets/css/slick.css"></link>
<link rel="stylesheet" href="assets/css/slick-theme.css"></link>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<!-- 왼쪽 고정된 네비게이션 바 -->
	<div class="left-navbar">
		<!-- 로고 넣는곳 -->
		<div class="left-navbar-logo">
			<a href="goMain" ><h2 style="font-size : 30px; 'font-family:'Giants-Inline'">CHICKEN.GG</h2></a>
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
			<a href="goMain" id="navbar_logoimg"><img width="100px" src="images/하얀닭.png"
				alt="치킨 연구소 로고"></a>
		</div>

		<div class="login-search">
			<form action="Search" method="post" class="sr">
				<select name="sr" class="select">
					<option selected>선택</option>
					<option value="chi_brand">브랜드</option>
					<option value="chi_menu">메뉴</option>
				</select> <input type="text" class="sr-input" name="sr_input"
					placeholder="&nbsp;&nbsp;&nbsp;&nbsp;Search" autocomplete="off">
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
	<div class="main-slider">
		<div class="item item-1">
			<img src="images/Menu_brandlogo/logo-bbq.jpg" class="Menu-Slide-Logo">
			<div class="inner-slider">
				<div class="goods bbq-1">
					<img src="images/chickMenu/BBQ/레드착착.png">
				</div>
				<div class="goods bbq-2"></div>
				<div class="goods bbq-3"></div>
				<div class="goods bbq-4"></div>
			</div>
		</div>
		<div class="item item-2">
			<img src="images/Menu_brandlogo/logo-bhc.png" class="Menu-Slide-Logo">
			<div class="inner-slider">
				<div class="goods bhc-1"></div>
				<div class="goods bhc-2"></div>
				<div class="goods bhc-3"></div>
				<div class="goods bhc-4"></div>
			</div>
		</div>
		<div class="item item-3">
			<img src="images/Menu_brandlogo/logo-kyochon.jpg" class="Menu-Slide-Logo">
			<div class="inner-slider">
				<div class="goods kyochon-1">
					<img src="images/chickMenu/교촌/교촌순살.png">
				</div>
				<div class="goods kyochon-2">
					<img src="images/chickMenu/교촌/교촌오리지널.png">
				</div>
				<div class="goods kyochon-3">
					<img src="images/chickMenu/교촌/교촌윙.png">
				</div>
				<div class="goods kyochon-4">
					<img src="images/chickMenu/교촌/교촌콤보.png">
				</div>
				<div class="goods kyochon-5">
					<img src="images/chickMenu/교촌/레드순살.png">
				</div>
				<div class="goods kyochon-6">
					<img src="images/chickMenu/교촌/레드오리지널.png">
				</div>
			</div>
		</div>
		<div class="item item-4">
			<img src="images/Menu_brandlogo/logo-goobne.png" class="Menu-Slide-Logo">
			<div class="inner-slider">
				<div class="goods goods-1"></div>
				<div class="goods goods-2"></div>
				<div class="goods goods-3"></div>
				<div class="goods goods-4"></div>
			</div>
		</div>
		<div class="item item-5">
			<img src="images/Menu_brandlogo/logo-hosigi.png" class="Menu-Slide-Logo">
			<div class="inner-slider">
				<div class="goods goods-1"></div>
				<div class="goods goods-2"></div>
				<div class="goods goods-3"></div>
				<div class="goods goods-4"></div>
			</div>
		</div>
		<div class="item item-6">
			<img src="images/Menu_brandlogo/logo-jadam.png" class="Menu-Slide-Logo">
			<div class="inner-slider">
				<div class="goods goods-1"></div>
				<div class="goods goods-2"></div>
				<div class="goods goods-3"></div>
				<div class="goods goods-4"></div>
			</div>
		</div>
		<div class="item item-7">
			<img src="images/Menu_brandlogo/logo-ajukeo.jpg" class="Menu-Slide-Logo">
			<div class="inner-slider">
				<div class="goods goods-1"></div>
				<div class="goods goods-2"></div>
				<div class="goods goods-3"></div>
				<div class="goods goods-4"></div>
			</div>
		</div>
		<div class="item item-8">
			<img src="images/Menu_brandlogo/logo-mexicana.png" class="Menu-Slide-Logo">
			<div class="inner-slider">
				<div class="goods goods-1"></div>
				<div class="goods goods-2"></div>
				<div class="goods goods-3"></div>
				<div class="goods goods-4"></div>
			</div>
		</div>
		<div class="item item-9">
			<img src="images/Menu_brandlogo/logo-chickenplus.png" class="Menu-Slide-Logo">
			<div class="inner-slider">
				<div class="goods goods-1"></div>
				<div class="goods goods-2"></div>
				<div class="goods goods-3"></div>
				<div class="goods goods-4"></div>
			</div>
		</div>
	</div>
	<script src="assets/js/Menu.js"></script>
	<script src="assets/js/slick.js"></script>
	<script src="assets/js/slick.min.js"></script>

	<!-- 슬라이더 애니메이션 -->
	<script type="text/javascript">
		var mainSlider = $('.main-slider');
		var innerSlider = $('.inner-slider');

		mainSlider.slick({
			slidesToShow : 1,
			dots : true,
		});

		innerSlider.slick({
			slidesToShow : 3,
		})
	</script>
</body>
</html>