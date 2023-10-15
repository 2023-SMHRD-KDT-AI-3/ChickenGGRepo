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
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<title>메뉴 별 치킨연구소</title>
<link rel="stylesheet" href="assets/css/Menu.css"></link>
<link rel="stylesheet" href="assets/css/slick.css"></link>
<link rel="stylesheet" href="assets/css/slick-theme.css"></link>
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
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-1@1.1/Giants-Inline.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

* {
	font-family: GongGothicMedium;
}
</style>
</head>
<body>
	<!-- 왼쪽 고정된 네비게이션 바 -->
	<div class="left-navbar">
		<!-- 로고 넣는곳 -->
		<div class="left-navbar-logo">
			<a href="goMain"><h2
					style="font-size: 30px; ' font-family: 'Giants-Inline'">CHICKEN.GG</h2></a>
		</div>
		<!-- hr 태그는 수평선용임 -->
		<hr class="hrhr"></hr>
		<div class="left-navbar-menu-logo">
			<a href="goMain"> <i class="fas fa-home"></i>&nbsp; 홈
			</a> <a href="Brand.jsp"> <i class="fas fa-list"></i>&nbsp; 브랜드
			</a> <a href="Menu.jsp"> <i class="fas fa-utensils"></i>&nbsp; 메뉴
			</a> <a href="MyPage.jsp"> <i class="fas fa-trophy"></i>&nbsp; 마이페이지
			</a>
		</div>
		<!-- 여기에 추가 메뉴 항목을 추가할 수 있습니다. -->
	</div>

	<!-- 네비게이션 바 만드는곳 -->
	<nav class="navbar">
		<!-- 로고 넣는곳 -->
		<div class="navbar-logo">
			<a href="goMain" id="navbar_logoimg"><img width="100px"
				src="images/하얀닭.png" alt="치킨 연구소 로고"></a>
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
		</div>
	</div>
	<!-- 치킨 사진 슬라이드 -->
	<div class="outer">
		<div class="inner-grp">
			<!-- 1번 브랜드 -->
			<div class="inner">
				<img src="images/Menu_brandlogo/logo-bbq.jpg" class="brand-box">
				<div class="slider">
					<div class="slider-btn-wrapper slider-btn-wrapper-left">
						<!-- 왼쪽 화살표 -->
						<button id="left-btn" class="slider-btn">⬅Left</button>
					</div>
					<div class="item-wrapper">
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="BBQ" onclick="getCheckboxValue()" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/단짠갈릭.jpg" />
									<div class="info-text">
										<h2>황금올리브</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="BBQ" onclick="getCheckboxValue()" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/레드착착.png" />
									<div class="info-text">
										<h2>황금올리브</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="BBQ" onclick="getCheckboxValue()" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/바삭갈릭.jpg" />
									<div class="info-text">
										<h2>황금올리브</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="BBQ" onclick="getCheckboxValue()" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/블랙 페퍼.png" />
									<div class="info-text">
										<h2>황금올리브</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="BBQ" onclick="getCheckboxValue()" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/착착갈릭.jpg" />
									<div class="info-text">
										<h2>황금올리브</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="BBQ" onclick="getCheckboxValue()" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/황올.png" />
									<div class="info-text">
										<h2>황금올리브</h2>
									</div>
								</button>
							</div>
						</div>
					</div>
					<div class="slider-btn-wrapper slider-btn-wrapper-right">
						<!-- 오른쪽 화살표 -->
						<button id="right-btn" class="slider-btn">Right➡</button>
					</div>
				</div>
			</div>
			<!-- 2번 브랜드 -->
			<div class="inner">
				<h2>BHC</h2>
				<div class="slider">
					<div class="slider-btn-wrapper slider-btn-wrapper-left">
						<!-- 왼쪽 화살표 -->
						<button id="left-btn" class="slider-btn">⬅Left</button>
					</div>
					<div class="item-wrapper">
						<div class="item">
							<img src="images/Menu_brandlogo/logo-bhc.png" />
							<div class="info-text">
								<h2>황금올리브</h2>
							</div>
						</div>
						<div class="item">
							<img src="../image/BBQ/착착갈릭.jpg" />
						</div>
						<div class="item">
							<img src="../image/BBQ/블랙 페퍼.png" />
						</div>
						<div class="item">
							<img src="../image/BBQ/바삭갈릭.jpg" />
						</div>
					</div>
					<div class="slider-btn-wrapper slider-btn-wrapper-right">
						<!-- 오른쪽 화살표 -->
						<button id="right-btn" class="slider-btn">Right➡</button>
					</div>
				</div>
			</div>

		</div>
	</div>
	<div class="btn-grp">
		<button class="button-left">⬅Left</button>
		<button class="button-right">Right➡</button>
	</div>
	<script src="assets/js/Menu.js"></script>

</body>
</html>