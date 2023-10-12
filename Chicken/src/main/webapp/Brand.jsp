<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/3a115195d8.js" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<title>치킨연구소 브랜드 페이지</title>
<link rel="stylesheet" href="assets/css/Brand.css"></link>
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
			</a> <a href="#"> <i class="fas fa-utensils"></i> 메뉴
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
				</select> 
				<input type="text" class="sr-input" name="sr_input"
					placeholder="Search" autocomplete="off">
  				<button type="submit" class="sr-input-btn"><i class="fa-solid fa-drumstick-bite fa-2xl"></i></button>
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

	<form action="#" method="post">
		<div >
			<div>
				<div class="brandlogo">
					<h1 class="brand">BRAND</h1>
					<button type="submit" class="compare">비교하기</button>
					<span id="compare_list"></span>
					<hr>
				</div>
			</div>
			<div class="line">
				<div class="firstLine">
					<input type="checkbox" class="logocheck" name="brandCompare"
						value="BBQ" onclick="getCheckboxValue()" />
					<button class="logobox" name="chickenbrand" value="bbq">
						<img alt="bbq" src="images/brandlogo/logo-bbq.jpg"
							class="logosize">
					</button>
					<input type="checkbox" class="logocheck" name="brandCompare"
						value="BHC" onclick="getCheckboxValue()" />
					<button class="logobox" name="chickenbrand" value="bhc">
						<img alt="bhc" src="images/brandlogo/logo-bhc.png"
							class="logosize">
					</button>
					<input type="checkbox" class="logocheck" name="brandCompare"
						value="교촌" onclick="getCheckboxValue()" />
					<button class="logobox" name="chickenbrand" value="gyochon">
						<img alt="gyochon" src="images/brandlogo/logo-gyochon.png"
							class="logosize">
					</button>
				</div>
				<div class="secondLine">
					<input type="checkbox" class="logocheck" name="brandCompare"
						value="굽네" onclick="getCheckboxValue()">
					<button class="logobox" name="chickenbrand" value="goobne">
						<img alt="goobne" src="images/brandlogo/logo-goobne.png"
							class="logosize">
					</button>
					<input type="checkbox" class="logocheck" name="brandCompare"
						value="호식이" onclick="getCheckboxValue()">
					<button class="logobox" name="chickenbrand" value="hosigi">
						<img alt="hosigi" src="images/brandlogo/logo-hosigi.png"
							class="logosize">
					</button>
					<input type="checkbox" class="logocheck" name="brandCompare"
						value="자담" onclick="getCheckboxValue()">
					<button class="logobox" name="chickenbrand" value="jadam">
						<img alt="jadam" src="images/brandlogo/logo-jadam.png"
							class="logosize">
					</button>
				</div>
				<div class="thirdLine">
					<input type="checkbox" class="logocheck" name="brandCompare"
						value="아주커" onclick="getCheckboxValue()">
					<button class="logobox" name="chickenbrand" value="ajukeo">
						<img alt="ajukeo" src="images/brandlogo/logo-ajukeo.jpg"
							class="logosize">
					</button>
					<input type="checkbox" class="logocheck" name="brandCompare"
						value="멕시카나" onclick="getCheckboxValue()">
					<button class="logobox" name="chickenbrand" value="mexicana">
						<img alt="mexicana" src="images/brandlogo/logo-mexicana.png"
							class="logosize">
					</button>
					<input type="checkbox" class="logocheck" name="brandCompare"
						value="치킨플러스" onclick="getCheckboxValue()">
					<button class="logobox" name="chickenbrand" value="chickenplus">
						<img alt="chickenplus" src="images/brandlogo/logo-chickenplus.png"
							class="logosize">
					</button>
				</div>
			</div>
		</div>

		<script src="assets/js/brand.js"></script>
</body>
</html>