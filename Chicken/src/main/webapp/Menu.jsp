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
			</a> <a href="GoMypage"> <i class="fas fa-trophy"></i>&nbsp; 마이페이지
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
					<option>선택</option>
					<option value="chi_brand">브랜드</option>
					<option selected value="chi_menu">메뉴</option>
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
			<button type="submit" class="compare" id="totalcompare"
				onclick="compareclick()">비교하기</button>
			<span id="compare_list"></span>
		</div>
	</div>
	<div style="float:right">※메뉴 바깥의 좌우버튼을 눌러 브랜드를 선택하고 메뉴 안쪽의 체크박스를 눌러 비교할 메뉴를 선택해 주세요<br>※최소 2개 최대 5개의 메뉴를 선택하고, 비교하기를 눌러 비교해주세요!<br>※메뉴의 정보를 자세히 보고 싶으면, 원하는 메뉴의 사진을 눌러주세요!</div>
	<!-- 치킨 사진 슬라이드 -->
	<div class="outer">
		<div class="inner-grp">
			<!-- 1번 브랜드 inner 클래스는 브랜드 양식 -->
			<div class="inner">
				<div class="slider">
					<div class="item-wrapper BBQ">
						<!-- item 클래스가 메뉴 양식 -->
						<div class="item">
							<div class="item-content">
								<!-- 각메뉴마다 id값에 menu_num값 넣기! -->
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="바삭갈릭" onclick="getCheckboxValue()" id="13" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/바삭갈릭.jpg" />
									<div class="info-text">
										<h2>바삭갈릭</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="단짠갈릭" onclick="getCheckboxValue()" id="14" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/단짠갈릭.jpg" />
									<div class="info-text">
										<h2>단짠갈릭</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="착착갈릭" onclick="getCheckboxValue()" id="15" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/착착갈릭.jpg" />
									<div class="info-text">
										<h2>착착갈릭</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황금올리브" onclick="getCheckboxValue()" id="16" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/황금올리브.png" />
									<div class="info-text">
										<h2>황금올리브</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황금올리브순살" onclick="getCheckboxValue()" id="17" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/황금올리브순살.png" />
									<div class="info-text">
										<h2>황금올리브순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황금올리브닭다리" onclick="getCheckboxValue()" id="18" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/황금올리브닭다리.png" />
									<div class="info-text">
										<h2>황금올리브닭다리</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황금올리브속안심" onclick="getCheckboxValue()" id="19" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/황금올리브 속안심.png" />
									<div class="info-text">
										<h2>황금올리브속안심</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황금올리브핫윙" onclick="getCheckboxValue()" id="20" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/황금올리브핫윙.png" />
									<div class="info-text">
										<h2>황금올리브핫윙</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황금올리브핫윙(냉장)" onclick="getCheckboxValue()" id="21" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/황금올리브핫윙냉장.png" />
									<div class="info-text">
										<h2>황금올리브핫윙(냉장)</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="핫황금올리브크리스피" onclick="getCheckboxValue()" id="22" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/핫황금올리브크리스피.png" />
									<div class="info-text">
										<h2>핫황금올리브크리스피</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="크런치순살크래커" onclick="getCheckboxValue()" id="23" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/크런치순살크래커.png" />
									<div class="info-text">
										<h2>크런치순살크래커</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="파더s치킨(와사비)" onclick="getCheckboxValue()" id="24" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/파더스갈릭.png" />
									<div class="info-text">
										<h2>파더s치킨(와사비)</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="파더s치킨(로스트갈릭)" onclick="getCheckboxValue()" id="25" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/파더스갈릭.png" />
									<div class="info-text">
										<h2>파더s치킨(갈릭)</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황금올리브블랙페퍼" onclick="getCheckboxValue()" id="26" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/블랙 페퍼.png" />
									<div class="info-text">
										<h2>블랙페퍼</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황금올리브레드착착" onclick="getCheckboxValue()" id="27" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/레드착착.png" />
									<div class="info-text">
										<h2>레드착착</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황금올리브크런치버터" onclick="getCheckboxValue()" id="28" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/황금올리브크런치버터.png" />
									<div class="info-text">
										<h2>크런치버터</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="자메이카소떡만나" onclick="getCheckboxValue()" id="29" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/나자메이카소떡만나.png" />
									<div class="info-text">
										<h2>자메이카소떡만나</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="자메이카소떡만나콤보" onclick="getCheckboxValue()" id="30" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/자메이카소떡만나콤보.png" />
									<div class="info-text">
										<h2>자메이카소떡만나콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="자메이카소떡만나순살" onclick="getCheckboxValue()" id="31" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/나자메이카소떡만순살.png" />
									<div class="info-text">
										<h2>자메이카소떡만나순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="오리지널양념" onclick="getCheckboxValue()" id="32" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/오리지널양념.png" />
									<div class="info-text">
										<h2>오리지널양념</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="오리지널양념순살" onclick="getCheckboxValue()" id="33" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/오리지널양념순살.png" />
									<div class="info-text">
										<h2>오리지널양념순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="매운양념치킨" onclick="getCheckboxValue()" id="34" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/매운양념치킨.png" />
									<div class="info-text">
										<h2>매운양념치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황올한깐풍치킨" onclick="getCheckboxValue()" id="35" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/황올한깐풍치킨.png" />
									<div class="info-text">
										<h2>황올한깐풍치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황올한깐풍치킨순살" onclick="getCheckboxValue()" id="36" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/황올한깐풍치킨순살.png" />
									<div class="info-text">
										<h2>황올한깐풍치킨순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="극한왕갈비치킨" onclick="getCheckboxValue()" id="37" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/극한왕갈비치킨.png" />
									<div class="info-text">
										<h2>극한왕갈비치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="소이갈릭스" onclick="getCheckboxValue()" id="38" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/소이갈릭스(윙봉도 이걸로).png" />
									<div class="info-text">
										<h2>소이갈릭스</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="소이갈릭스(윙&봉)" onclick="getCheckboxValue()" id="39" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/소이갈릭스(윙봉도 이걸로).png" />
									<div class="info-text">
										<h2>소이갈릭스(윙&봉)</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="자메이카통다리구이" onclick="getCheckboxValue()" id="40" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/자메이카통다리.png" />
									<div class="info-text">
										<h2>자메이카통다리구이</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="스모크치킨" onclick="getCheckboxValue()" id="41" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/스모크치킨.png" />
									<div class="info-text">
										<h2>스모크치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="매달구" onclick="getCheckboxValue()" id="42" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/매달구.png" />
									<div class="info-text">
										<h2>매달구</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황금올리브콤보" onclick="getCheckboxValue()" id="43" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/황금올리브콤보.png" />
									<div class="info-text">
										<h2>황금올리브콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황금올리브크런치버터콤보" onclick="getCheckboxValue()" id="44" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/황금올리브크런치버터.png" />
									<div class="info-text">
										<h2>황금올리브크런치버터콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="오리지날양념치킨콤보" onclick="getCheckboxValue()" id="45" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/오리지널양념.png" />
									<div class="info-text">
										<h2>오리지날양념치킨콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황금올리브치킨핫크리스피콤보" onclick="getCheckboxValue()" id="46" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/핫황금올리브크리스피.png" />
									<div class="info-text">
										<h2>황금올리브치킨핫크리스피콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황금올리브블랙페퍼콤보" onclick="getCheckboxValue()" id="47" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/블랙 페퍼.png" />
									<div class="info-text">
										<h2>황금올리브블랙페퍼콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황금올리브레드착착콤보" onclick="getCheckboxValue()" id="48" />
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/레드착착.png" />
									<div class="info-text">
										<h2>황금올리브레드착착콤보</h2>
									</div>
								</button>
							</div>
						</div>
					</div>
					<div class="slider-btn-wrapper slider-btn-wrapper-left">
						<!-- 왼쪽 화살표 -->
						<button id="left-BBQ" class="slider-btn">⬅Left</button>
					</div>
					<b class="center-text">BBQ</b>
					<div class="slider-btn-wrapper slider-btn-wrapper-right">
						<!-- 오른쪽 화살표 -->
						<button id="right-BBQ" class="slider-btn">Right➡</button>
					</div>
				</div>
			</div>
			<!-- 2번 브랜드 -->
			<div class="inner">
				<div class="slider">
					<div class="item-wrapper BHC">
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="뿌링클콤보" onclick="getCheckboxValue()" id="1092" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/뿌링클콤보.png" />
									<div class="info-text">
										<h2>뿌링클콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="후라이드콤보" onclick="getCheckboxValue()" id="1093" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/후라이드콤보.png" />
									<div class="info-text">
										<h2>후라이드콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="맛초킹" onclick="getCheckboxValue()" id="1094" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/맛초킹.png" />
									<div class="info-text">
										<h2>맛초킹</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="골드킹" onclick="getCheckboxValue()" id="1095" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/골드킹.png" />
									<div class="info-text">
										<h2>골드킹</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="마법클" onclick="getCheckboxValue()" id="1096" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/마법클.png" />
									<div class="info-text">
										<h2>마법클</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="레드킹콤보" onclick="getCheckboxValue()" id="1097" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/레드킹콤보.png" />
									<div class="info-text">
										<h2>레드킹콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="골드킹콤보" onclick="getCheckboxValue()" id="1098" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/골드킹콤보.png" />
									<div class="info-text">
										<h2>골드킹콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="hot후라이드콤보" onclick="getCheckboxValue()" id="1099" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/핫후라이드콤보.png" />
									<div class="info-text">
										<h2>핫후라이드콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="마법클스틱" onclick="getCheckboxValue()" id="1100" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/마법클스틱.png" />
									<div class="info-text">
										<h2>마법클스틱</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="마법클윙" onclick="getCheckboxValue()" id="1101" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/마법클윙.png" />
									<div class="info-text">
										<h2>마법클윙</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="마법클콤보" onclick="getCheckboxValue()" id="1102" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/마법클콤보.png" />
									<div class="info-text">
										<h2>마법클콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="마법클순살" onclick="getCheckboxValue()" id="1103" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/마법클순살.png" />
									<div class="info-text">
										<h2>마법클순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="더블팝순살양념" onclick="getCheckboxValue()" id="1104" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/더블팝순살양념.png" />
									<div class="info-text">
										<h2>더블팝순살양념</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="더블팝순살후라이드" onclick="getCheckboxValue()" id="1105" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/더블팝순살후라이드.png" />
									<div class="info-text">
										<h2>더블팝순살후라이드</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="스윗킹폭립" onclick="getCheckboxValue()" id="1106" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/스윗킹폭립.png" />
									<div class="info-text">
										<h2>스윗킹폭립</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="레드킹폭립" onclick="getCheckboxValue()" id="1107" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/레드킹폭립.png" />
									<div class="info-text">
										<h2>레드킹폭립</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="고추장직화구이" onclick="getCheckboxValue()" id="1108" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/고추장직화구이.png" />
									<div class="info-text">
										<h2>고추장직화구이</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="치퐁당후라이드" onclick="getCheckboxValue()" id="1109" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/치퐁당후라이드.png" />
									<div class="info-text">
										<h2>치퐁당후라이드</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="치퐁당스틱" onclick="getCheckboxValue()" id="1110" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/치퐁당스틱.png" />
									<div class="info-text">
										<h2>치퐁당스틱</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="치퐁당윙" onclick="getCheckboxValue()" id="1111" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/치퐁당윙.png" />
									<div class="info-text">
										<h2>치퐁당윙</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="치퐁당콤보" onclick="getCheckboxValue()" id="1112" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/치퐁당콤보.png" />
									<div class="info-text">
										<h2>치퐁당콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="하바네로포테킹후라이드" onclick="getCheckboxValue()" id="1113" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/하바네로포테킹.png" />
									<div class="info-text">
										<h2>하바네로포테킹</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="포테킹콤보" onclick="getCheckboxValue()" id="1114" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/포테킹콤보.png" />
									<div class="info-text">
										<h2>포테킹콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="포테킹후라이드" onclick="getCheckboxValue()" id="1115" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/포테킹후라이드.png" />
									<div class="info-text">
										<h2>포테킹후라이드</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="골드킹순살" onclick="getCheckboxValue()" id="1116" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/골드킹순살.png" />
									<div class="info-text">
										<h2>골드킹순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="골드킹스틱" onclick="getCheckboxValue()" id="1117" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/골드킹스틱.png" />
									<div class="info-text">
										<h2>골드킹스틱</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="골드킹 윙" onclick="getCheckboxValue()" id="1118" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/골드킹윙.png" />
									<div class="info-text">
										<h2>골드킹윙</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="커리퀸" onclick="getCheckboxValue()" id="1119" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/커리퀸.png" />
									<div class="info-text">
										<h2>커리퀸</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="커리퀸 스틱" onclick="getCheckboxValue()" id="1120" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/커리퀸.png" />
									<div class="info-text">
										<h2>커리퀸스틱</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="커리퀸 윙" onclick="getCheckboxValue()" id="1121" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/커리퀸.png" />
									<div class="info-text">
										<h2>커리퀸윙</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="커리퀸 순살" onclick="getCheckboxValue()" id="1122" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/커리퀸.png" />
									<div class="info-text">
										<h2>커리퀸순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="레드킹 스틱" onclick="getCheckboxValue()" id="1123" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/레드킹스틱.png" />
									<div class="info-text">
										<h2>레드킹스틱</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="레드킹 윙" onclick="getCheckboxValue()" id="1124" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/레드킹윙.png" />
									<div class="info-text">
										<h2>레드킹윙</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="레드킹" onclick="getCheckboxValue()" id="1125" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/레드킹.png" />
									<div class="info-text">
										<h2>레드킹</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="레드킹순살" onclick="getCheckboxValue()" id="1126" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/레드킹순살.png" />
									<div class="info-text">
										<h2>레드킹순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="맛초킹스틱" onclick="getCheckboxValue()" id="1127" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/맛초킹스틱.png" />
									<div class="info-text">
										<h2>맛초킹스틱</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="맛초킹콤보" onclick="getCheckboxValue()" id="1128" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/맛초킹콤보.png" />
									<div class="info-text">
										<h2>맛초킹콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="맛초킹 윙" onclick="getCheckboxValue()" id="1129" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/맛초킹윙.png" />
									<div class="info-text">
										<h2>맛초킹윙</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="맛초킹 순살" onclick="getCheckboxValue()" id="1130" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/맛초킹순살.png" />
									<div class="info-text">
										<h2>맛초킹순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="뿌링클스틱" onclick="getCheckboxValue()" id="1131" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/뿌링클스틱.png" />
									<div class="info-text">
										<h2>뿌링클스틱</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="뿌링클 윙" onclick="getCheckboxValue()" id="1132" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/뿌링클윙.png" />
									<div class="info-text">
										<h2>뿌링클윙</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="뿌링클순살" onclick="getCheckboxValue()" id="1133" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/뿌링클순살.png" />
									<div class="info-text">
										<h2>뿌링클순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="뿌링클hot순살" onclick="getCheckboxValue()" id="1134" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/핫뿌링클순살.png" />
									<div class="info-text">
										<h2>핫뿌링클순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="뿌링클hot" onclick="getCheckboxValue()" id="1135" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/핫뿌링클.png" />
									<div class="info-text">
										<h2>핫뿌링클</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="뿌링클" onclick="getCheckboxValue()" id="1136" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/뿌링클.png" />
									<div class="info-text">
										<h2>뿌링클</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="hot후라이드윙" onclick="getCheckboxValue()" id="1137" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/핫후라이드윙.png" />
									<div class="info-text">
										<h2>핫후라이드윙</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="hot후라이드스틱" onclick="getCheckboxValue()" id="1138" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/핫후라이드스틱.png" />
									<div class="info-text">
										<h2>핫후라이드스틱</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="후라이드스틱" onclick="getCheckboxValue()" id="1139" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/후라이드스틱.png" />
									<div class="info-text">
										<h2>후라이드스틱</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="후라이드윙" onclick="getCheckboxValue()" id="1140" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/후라이드윙.png" />
									<div class="info-text">
										<h2>후라이드윙</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="바삭클순살" onclick="getCheckboxValue()" id="1141" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/바삭클순살.png" />
									<div class="info-text">
										<h2>바삭클순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="바삭클" onclick="getCheckboxValue()" id="1142" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/바삭클.png" />
									<div class="info-text">
										<h2>바삭클</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="해바라기hot후라이드" onclick="getCheckboxValue()" id="1143" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/핫후라이드.png" />
									<div class="info-text">
										<h2>핫후라이드</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="헤바라기후라이드" onclick="getCheckboxValue()" id="1144" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/후라이드.png" />
									<div class="info-text">
										<h2>후라이드</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="해바라기후라이드 후라이드반/양념반" onclick="getCheckboxValue()"
									id="1145" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/반반치킨.png" />
									<div class="info-text">
										<h2>반반치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="양념치킨" onclick="getCheckboxValue()" id="1146" />
								<button class="logobox" name="chickenbrand" value="BHC">
									<img src="images/chickMenu/BHC/양념치킨.png" />
									<div class="info-text">
										<h2>양념치킨</h2>
									</div>
								</button>
							</div>
						</div>
					</div>
					<div class="slider-btn-wrapper slider-btn-wrapper-left">
						<!-- 왼쪽 화살표 -->
						<button id="left-BHC" class="slider-btn">⬅Left</button>
					</div>
					<b class="center-text">BHC</b>
					<div class="slider-btn-wrapper slider-btn-wrapper-right">
						<!-- 오른쪽 화살표 -->
						<button id="right-BHC" class="slider-btn">Right➡</button>
					</div>
				</div>
			</div>
			<!-- 3번 브랜드 -->
			<div class="inner">
				<div class="slider">
					<div class="item-wrapper gyochon">
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="교촌콤보" onclick="getCheckboxValue()" id="49" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/교촌콤보.png" />
									<div class="info-text">
										<h2>교촌콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="교촌윙" onclick="getCheckboxValue()" id="50" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/교촌윙.png" />
									<div class="info-text">
										<h2>교촌윙</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="교촌오리지날" onclick="getCheckboxValue()" id="51" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/교촌오리지널.png" />
									<div class="info-text">
										<h2>교촌오리지널</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="교촌순살" onclick="getCheckboxValue()" id="52" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/교촌순살.png" />
									<div class="info-text">
										<h2>레드오리지널</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="레드순살" onclick="getCheckboxValue()" id="53" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/레드순살.png" />
									<div class="info-text">
										<h2>레드순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="레드오리지날" onclick="getCheckboxValue()" id="54" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/레드오리지널.png" />
									<div class="info-text">
										<h2>교촌윙</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="레드콤보" onclick="getCheckboxValue()" id="55" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/레드콤보.png" />
									<div class="info-text">
										<h2>레드콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="레드윙" onclick="getCheckboxValue()" id="56" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/레드윙.png" />
									<div class="info-text">
										<h2>레드윙</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="반반오리지날" onclick="getCheckboxValue()" id="57" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/반반오리지널.png" />
									<div class="info-text">
										<h2>반반오리지널</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="반반순살" onclick="getCheckboxValue()" id="58" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/반반순살.png" />
									<div class="info-text">
										<h2>반반순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="반반콤보" onclick="getCheckboxValue()" id="59" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/반반콤보.png" />
									<div class="info-text">
										<h2>반반콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="반반윙" onclick="getCheckboxValue()" id="60" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/반반윙.png" />
									<div class="info-text">
										<h2>반반윙</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="레허반반순살" onclick="getCheckboxValue()" id="61" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/레허반반순살.png" />
									<div class="info-text">
										<h2>레허반반순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="시그니처순살세트" onclick="getCheckboxValue()" id="62" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/시그니처순살세트.png" />
									<div class="info-text">
										<h2>시그니처순살세트</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="허니오리지날" onclick="getCheckboxValue()" id="63" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/허니오리지널.png" />
									<div class="info-text">
										<h2>허니오리지널</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="허니순살" onclick="getCheckboxValue()" id="64" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/허니순살.png" />
									<div class="info-text">
										<h2>허니순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="허니콤보" onclick="getCheckboxValue()" id="65" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/허니콤보.png" />
									<div class="info-text">
										<h2>허니콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="리얼후라이드" onclick="getCheckboxValue()" id="66" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/리얼후라이드.png" />
									<div class="info-text">
										<h2>리얼후라이드</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="살살후라이드" onclick="getCheckboxValue()" id="67" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/살살후라이드.png" />
									<div class="info-text">
										<h2>살살후라이드</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="파채소이살살" onclick="getCheckboxValue()" id="68" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/파채소이살살.png" />
									<div class="info-text">
										<h2>파채소이살살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="블랙시크릿오리지날" onclick="getCheckboxValue()" id="69" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/블랙시크릿오리지널.png" />
									<div class="info-text">
										<h2>블랙시크릿오리지널</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="블랙시크릿콤보" onclick="getCheckboxValue()" id="70" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/블릭시크릿콤보.png" />
									<div class="info-text">
										<h2>블랙시크릿콤보</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="블랙시크릿순살" onclick="getCheckboxValue()" id="71" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/블랙시크릿순살.png" />
									<div class="info-text">
										<h2>블랙시크릿순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="허니점보윙" onclick="getCheckboxValue()" id="72" />
								<button class="logobox" name="chickenbrand" value="교촌">
									<img src="images/chickMenu/교촌/허니점보윙.png" />
									<div class="info-text">
										<h2>허니점보윙</h2>
									</div>
								</button>
							</div>
						</div>
					</div>
					<div class="slider-btn-wrapper slider-btn-wrapper-left">
						<!-- 왼쪽 화살표 -->
						<button id="left-gyochon" class="slider-btn">⬅Left</button>
					</div>
					<b class="center-text">교촌</b>
					<div class="slider-btn-wrapper slider-btn-wrapper-right">
						<!-- 오른쪽 화살표 -->
						<button id="right-gyochon" class="slider-btn">Right➡</button>
					</div>
				</div>
			</div>
			<!-- 4번 브랜드 -->
			<div class="inner">
				<div class="slider">
					<div class="item-wrapper goobne">
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="오리지널" onclick="getCheckboxValue()" id="73" />
								<button class="logobox" name="chickenbrand" value="굽네치킨">
									<img src="images/chickMenu/굽네/오리지널.png" />
									<div class="info-text">
										<h2>오리지널</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="남해마늘바사삭" onclick="getCheckboxValue()" id="74" />
								<button class="logobox" name="chickenbrand" value="굽네치킨">
									<img src="images/chickMenu/굽네/남해마늘바사삭.png" />
									<div class="info-text">
										<h2>남해마늘바사삭</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="고추바사삭" onclick="getCheckboxValue()" id="75" />
								<button class="logobox" name="chickenbrand" value="굽네치킨">
									<img src="images/chickMenu/굽네/고추바사삭.png" />
									<div class="info-text">
										<h2>고추바사삭</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="불금치킨" onclick="getCheckboxValue()" id="76" />
								<button class="logobox" name="chickenbrand" value="굽네치킨">
									<img src="images/chickMenu/굽네/불금치킨.png" />
									<div class="info-text">
										<h2>불금치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="치즈바사삭" onclick="getCheckboxValue()" id="77" />
								<button class="logobox" name="chickenbrand" value="굽네치킨">
									<img src="images/chickMenu/굽네/치즈바사삭.png" />
									<div class="info-text">
										<h2>치즈바사삭</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="볼케이노" onclick="getCheckboxValue()" id="78" />
								<button class="logobox" name="chickenbrand" value="굽네치킨">
									<img src="images/chickMenu/굽네/볼케이노.png" />
									<div class="info-text">
										<h2>볼케이노</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="오븐바사삭" onclick="getCheckboxValue()" id="79" />
								<button class="logobox" name="chickenbrand" value="굽네치킨">
									<img src="images/chickMenu/굽네/오븐바사삭.png" />
									<div class="info-text">
										<h2>오븐바사삭</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="허니멜로" onclick="getCheckboxValue()" id="80" />
								<button class="logobox" name="chickenbrand" value="굽네치킨">
									<img src="images/chickMenu/굽네/허니멜로.png" />
									<div class="info-text">
										<h2>허니멜로</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="갈비천황" onclick="getCheckboxValue()" id="81" />
								<button class="logobox" name="chickenbrand" value="굽네치킨">
									<img src="images/chickMenu/굽네/갈비천왕.png" />
									<div class="info-text">
										<h2>갈비천왕</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="폭립" onclick="getCheckboxValue()" id="82" />
								<button class="logobox" name="chickenbrand" value="굽네치킨">
									<img src="images/chickMenu/굽네/폭립.png" />
									<div class="info-text">
										<h2>폭립</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="양념히어로" onclick="getCheckboxValue()" id="83" />
								<button class="logobox" name="chickenbrand" value="굽네치킨">
									<img src="images/chickMenu/굽네/양념히어로.png" />
									<div class="info-text">
										<h2>양념히어로</h2>
									</div>
								</button>
							</div>
						</div>
					</div>
					<div class="slider-btn-wrapper slider-btn-wrapper-left">
						<!-- 왼쪽 화살표 -->
						<button id="left-goobne" class="slider-btn">⬅Left</button>
					</div>
					<b class="center-text">굽네</b>
					<div class="slider-btn-wrapper slider-btn-wrapper-right">
						<!-- 오른쪽 화살표 -->
						<button id="right-goobne" class="slider-btn">Right➡</button>
					</div>
				</div>
			</div>
			<!-- 5번 브랜드 -->
			<div class="inner">
				<div class="slider">
					<div class="item-wrapper hosigi">
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="요거치즈닝치킨" onclick="getCheckboxValue()" id="561" />
								<button class="logobox" name="chickenbrand" value="호식이두마리치킨">
									<img src="images/chickMenu/호식이/요거치즈닝.png" />
									<div class="info-text">
										<h2>요거치즈닝</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="타코마요치킨" onclick="getCheckboxValue()" id="562" />
								<button class="logobox" name="chickenbrand" value="호식이두마리치킨">
									<img src="images/chickMenu/호식이/타코마요.png" />
									<div class="info-text">
										<h2>타코마요치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="간장 치킨" onclick="getCheckboxValue()" id="563" />
								<button class="logobox" name="chickenbrand" value="호식이두마리치킨">
									<img src="images/chickMenu/호식이/간장.png" />
									<div class="info-text">
										<h2>간장치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="매운 간장 치킨" onclick="getCheckboxValue()" id="564" />
								<button class="logobox" name="chickenbrand" value="호식이두마리치킨">
									<img src="images/chickMenu/호식이/매운간장.png" />
									<div class="info-text">
										<h2>매운간장치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="불짬뽕 치킨" onclick="getCheckboxValue()" id="565" />
								<button class="logobox" name="chickenbrand" value="호식이두마리치킨">
									<img src="images/chickMenu/호식이/불짬뽕.png" />
									<div class="info-text">
										<h2>불짬뽕치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="매운 양념 치킨" onclick="getCheckboxValue()" id="566" />
								<button class="logobox" name="chickenbrand" value="호식이두마리치킨">
									<img src="images/chickMenu/호식이/매운양념.png" />
									<div class="info-text">
										<h2>매운양념치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="스윗츠갈릭 치킨" onclick="getCheckboxValue()" id="567" />
								<button class="logobox" name="chickenbrand" value="호식이두마리치킨">
									<img src="images/chickMenu/호식이/스윗츠갈릭.png" />
									<div class="info-text">
										<h2>스윗츠갈릭치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="청양고추마요 치킨" onclick="getCheckboxValue()" id="568" />
								<button class="logobox" name="chickenbrand" value="호식이두마리치킨">
									<img src="images/chickMenu/호식이/청양고추마요.png" />
									<div class="info-text">
										<h2>청양고추마요치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="땡초불꽃 치킨" onclick="getCheckboxValue()" id="569" />
								<button class="logobox" name="chickenbrand" value="호식이두마리치킨">
									<img src="images/chickMenu/호식이/땡초불꽃.png" />
									<div class="info-text">
										<h2>땡초불꽃치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="양념 치킨" onclick="getCheckboxValue()" id="570" />
								<button class="logobox" name="chickenbrand" value="호식이두마리치킨">
									<img src="images/chickMenu/호식이/양념.png" />
									<div class="info-text">
										<h2>양념치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="후라이드 치킨" onclick="getCheckboxValue()" id="571" />
								<button class="logobox" name="chickenbrand" value="호식이두마리치킨">
									<img src="images/chickMenu/호식이/후라이드.png" />
									<div class="info-text">
										<h2>후라이드치킨</h2>
									</div>
								</button>
							</div>
						</div>
					</div>
					<div class="slider-btn-wrapper slider-btn-wrapper-left">
						<!-- 왼쪽 화살표 -->
						<button id="left-hosigi" class="slider-btn">⬅Left</button>
					</div>
					<b class="center-text">호식이두마리치킨</b>
					<div class="slider-btn-wrapper slider-btn-wrapper-right">
						<!-- 오른쪽 화살표 -->
						<button id="right-hosigi" class="slider-btn">Right➡</button>
					</div>
				</div>
			</div>
			<!-- 6번 브랜드 -->
			<div class="inner">
				<div class="slider">
					<div class="item-wrapper jadam">
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="후라이드치킨" onclick="getCheckboxValue()" id="353" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/후라이드.jpg" />
									<div class="info-text">
										<h2>후라이드치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살치킨" onclick="getCheckboxValue()" id="354" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/순살치킨.jpg" />
									<div class="info-text">
										<h2>순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="핫후라이드치킨" onclick="getCheckboxValue()" id="355" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/핫후라이드치킨.jpg" />
									<div class="info-text">
										<h2>핫후라이드치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="핫순살치킨" onclick="getCheckboxValue()" id="356" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/핫순살.jpg" />
									<div class="info-text">
										<h2>핫순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="양념치킨" onclick="getCheckboxValue()" id="357" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/양념치킨.jpg" />
									<div class="info-text">
										<h2>양념치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="양념순살치킨" onclick="getCheckboxValue()" id="358" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/양념순살.jpg" />
									<div class="info-text">
										<h2>양념순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="간장치킨" onclick="getCheckboxValue()" id="359" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/간장치킨.jpg" />
									<div class="info-text">
										<h2>간장치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="마늘치킨" onclick="getCheckboxValue()" id="360" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/마늘치킨.jpg" />
									<div class="info-text">
										<h2>마늘치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="생그라나치킨" onclick="getCheckboxValue()" id="361" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/생그라나치킨.jpg" />
									<div class="info-text">
										<h2>생그라나치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="생그라나순살치킨" onclick="getCheckboxValue()" id="362" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/생그라나순살.jpg" />
									<div class="info-text">
										<h2>생그라나순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="윙봉스치킨" onclick="getCheckboxValue()" id="363" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/윙봉스.jpg" />
									<div class="info-text">
										<h2>윙봉스치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="휭봉스 간장치킨" onclick="getCheckboxValue()" id="364" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/윙봉스.jpg" />
									<div class="info-text">
										<h2>윙봉스간장치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="휭봉스 마늘치킨" onclick="getCheckboxValue()" id="365" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/윙봉스.jpg" />
									<div class="info-text">
										<h2>윙봉스마늘치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="날다닭치킨" onclick="getCheckboxValue()" id="366" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/날다닭.jpg" />
									<div class="info-text">
										<h2>날다닭치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="날다닭간장치킨" onclick="getCheckboxValue()" id="367" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/날다닭간장.jpg" />
									<div class="info-text">
										<h2>날다닭간장치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="날다닭마늘치킨" onclick="getCheckboxValue()" id="368" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/날다닭마늘.jpg" />
									<div class="info-text">
										<h2>날다닭마늘치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="크리미양파치킨" onclick="getCheckboxValue()" id="369" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/크리미양파.jpg" />
									<div class="info-text">
										<h2>크리미양파치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="맵소이닭치킨" onclick="getCheckboxValue()" id="370" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/맵소이닭.jpg" />
									<div class="info-text">
										<h2>맵소이닭치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="치요링치킨" onclick="getCheckboxValue()" id="371" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/치요링.jpg" />
									<div class="info-text">
										<h2>치요링치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="치요링순살치킨" onclick="getCheckboxValue()" id="372" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/치요링순살.jpg" />
									<div class="info-text">
										<h2>치요링순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="파닭치킨" onclick="getCheckboxValue()" id="373" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/파닭순살.jpg" />
									<div class="info-text">
										<h2>파닭치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="파닭순살치킨" onclick="getCheckboxValue()" id="374" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/파닭순살.jpg" />
									<div class="info-text">
										<h2>파닭순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="맵슐랭치킨(오리지널)" onclick="getCheckboxValue()" id="375" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/맵슐랭.jpg" />
									<div class="info-text">
										<h2>맵슐랭치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="맵슐랭순살치킨" onclick="getCheckboxValue()" id="376" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/맵슐랭순살.jpg" />
									<div class="info-text">
										<h2>맵슐랭순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="스리라차치킨" onclick="getCheckboxValue()" id="377" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/스리라차.jpg" />
									<div class="info-text">
										<h2>스리라차치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="스리라차순살치킨" onclick="getCheckboxValue()" id="378" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/스리라차순살.jpg" />
									<div class="info-text">
										<h2>스리라차순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="불패치킨" onclick="getCheckboxValue()" id="379" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/불패.jpg" />
									<div class="info-text">
										<h2>불패치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="불패순살치킨" onclick="getCheckboxValue()" id="380" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/불패순살.jpg" />
									<div class="info-text">
										<h2>불패순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="소보로치킨" onclick="getCheckboxValue()" id="381" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/소보로.jpg" />
									<div class="info-text">
										<h2>소보로치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="티키타코 순살치킨" onclick="getCheckboxValue()" id="382" />
								<button class="logobox" name="chickenbrand" value="자담치킨">
									<img src="images/chickMenu/자담/티키타코.jpg" />
									<div class="info-text">
										<h2>티키타코순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
					</div>
					<div class="slider-btn-wrapper slider-btn-wrapper-left">
						<!-- 왼쪽 화살표 -->
						<button id="left-jadam" class="slider-btn">⬅Left</button>
					</div>
					<b class="center-text">자담치킨</b>
					<div class="slider-btn-wrapper slider-btn-wrapper-right">
						<!-- 오른쪽 화살표 -->
						<button id="right-jadam" class="slider-btn">Right➡</button>
					</div>
				</div>
			</div>
			<!-- 7번 브랜드 -->
			<div class="inner">
				<div class="slider">
					<div class="item-wrapper ajukeo">
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="후라이드치킨" onclick="getCheckboxValue()" id="528" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/후라이드.jpg" />
									<div class="info-text">
										<h2>후라이드치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="양념치킨" onclick="getCheckboxValue()" id="529" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/양념.jpg" />
									<div class="info-text">
										<h2>양념치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="간장치킨" onclick="getCheckboxValue()" id="530" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/간장.jpg" />
									<div class="info-text">
										<h2>간장치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="매운양념치킨" onclick="getCheckboxValue()" id="531" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/매콤양념.jpg" />
									<div class="info-text">
										<h2>매운양념치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="후라이드순살" onclick="getCheckboxValue()" id="532" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/순살.jpg" />
									<div class="info-text">
										<h2>후라이드순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="양념치킨순살" onclick="getCheckboxValue()" id="533" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/양념순살.jpg" />
									<div class="info-text">
										<h2>양념순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="간장치킨순살" onclick="getCheckboxValue()" id="534" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/간장순살.jpg" />
									<div class="info-text">
										<h2>간장순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="매운양념치킨순살" onclick="getCheckboxValue()" id="535" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/매운양념순살.jpg" />
									<div class="info-text">
										<h2>매운양념순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="후라이드윙봉" onclick="getCheckboxValue()" id="536" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/후라이드윙봉.png" />
									<div class="info-text">
										<h2>후라이드윙봉</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="양념윙봉" onclick="getCheckboxValue()" id="537" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/양념윙봉.png" />
									<div class="info-text">
										<h2>양념치킨윙봉</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="간장치킨윙봉" onclick="getCheckboxValue()" id="538" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/간장윙봉.png" />
									<div class="info-text">
										<h2>간장치킨윙봉</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="매운양념치킨윙봉" onclick="getCheckboxValue()" id="539" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/양념윙봉.png" />
									<div class="info-text">
										<h2>매운양념치킨윙봉</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="갓쓰오양념치킨순살" onclick="getCheckboxValue()" id="540" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/갓쓰오.jpg" />
									<div class="info-text">
										<h2>갓쓰오양념치킨순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="갓쓰오간장치킨순살" onclick="getCheckboxValue()" id="541" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/갓쓰오.jpg" />
									<div class="info-text">
										<h2>갓쓰오간장치킨순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="갓쓰오매운치킨순살" onclick="getCheckboxValue()" id="542" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/갓쓰오.jpg" />
									<div class="info-text">
										<h2>갓쓰오매운치킨순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="버터링양념치킨" onclick="getCheckboxValue()" id="543" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/버터링.jpg" />
									<div class="info-text">
										<h2>버터링양념치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="버터링양념치킨순살" onclick="getCheckboxValue()" id="544" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/버터링.jpg" />
									<div class="info-text">
										<h2>버터링양념치킨순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="버터링양념치킨윙봉" onclick="getCheckboxValue()" id="545" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/버터링.jpg" />
									<div class="info-text">
										<h2>버터링양념치킨윙봉</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="the바삭아주커치킨" onclick="getCheckboxValue()" id="546" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/더바삭후라이드.jpg" />
									<div class="info-text">
										<h2>the바삭후라이드치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="the바삭순살치킨" onclick="getCheckboxValue()" id="547" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/더바삭순살.jpg" />
									<div class="info-text">
										<h2>the바삭순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="the바삭윙봉치킨" onclick="getCheckboxValue()" id="548" />
								<button class="logobox" name="chickenbrand" value="아주커치킨">
									<img src="images/chickMenu/아주커/더바삭윙봉.jpg" />
									<div class="info-text">
										<h2>the바삭윙봉치킨</h2>
									</div>
								</button>
							</div>
						</div>
					</div>
					<div class="slider-btn-wrapper slider-btn-wrapper-left">
						<!-- 왼쪽 화살표 -->
						<button id="left-ajukeo" class="slider-btn">⬅Left</button>
					</div>
					<b class="center-text">아주커치킨</b>
					<div class="slider-btn-wrapper slider-btn-wrapper-right">
						<!-- 오른쪽 화살표 -->
						<button id="right-ajukeo" class="slider-btn">Right➡</button>
					</div>
				</div>
			</div>
			<!-- 8번 브랜드 -->
			<div class="inner">
				<div class="slider">
					<div class="item-wrapper mexicana">
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="치토스치킨" onclick="getCheckboxValue()" id="756" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/치토스.jpg" />
									<div class="info-text">
										<h2>치토스치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살치토스치킨" onclick="getCheckboxValue()" id="757" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/치토스순살.jpg" />
									<div class="info-text">
										<h2>치토스순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="양념치킨" onclick="getCheckboxValue()" id="758" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/양념.jpg" />
									<div class="info-text">
										<h2>양념치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="땡초치킨" onclick="getCheckboxValue()" id="759" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/땡초.jpg" />
									<div class="info-text">
										<h2>땡초치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="고매치킨" onclick="getCheckboxValue()" id="760" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/고매.png" />
									<div class="info-text">
										<h2>고매치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="뿌리새우치킨" onclick="getCheckboxValue()" id="761" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/뿌리새우.jpg" />
									<div class="info-text">
										<h2>뿌리새우치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="깐풍요리치킨" onclick="getCheckboxValue()" id="762" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/깐풍요리.jpg" />
									<div class="info-text">
										<h2>깐풍요리치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="리얼치킨꿔바로우" onclick="getCheckboxValue()" id="763" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/리얼꿔바로우.jpg" />
									<div class="info-text">
										<h2>리얼치킨꿔바로우</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="마늘알마니치킨" onclick="getCheckboxValue()" id="764" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/마늘알마니.png" />
									<div class="info-text">
										<h2>마늘알마니치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="모두의마요치킨" onclick="getCheckboxValue()" id="765" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/모두의마요.jpg" />
									<div class="info-text">
										<h2>모두의마요치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="강정치킨" onclick="getCheckboxValue()" id="766" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/강정.jpg" />
									<div class="info-text">
										<h2>강정치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="후라이드치킨" onclick="getCheckboxValue()" id="767" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/후라이드.png" />
									<div class="info-text">
										<h2>후라이드치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="반반치킨" onclick="getCheckboxValue()" id="768" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/반반.jpg" />
									<div class="info-text">
										<h2>반반치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="뿌리고(눈꽃치즈맛)" onclick="getCheckboxValue()" id="769" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/뿌리고눈꽃치즈.jpg" />
									<div class="info-text">
										<h2>뿌리고(눈꽃치즈맛)</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="간장치킨" onclick="getCheckboxValue()" id="770" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/간장.jpg" />
									<div class="info-text">
										<h2>간장치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="파닭치킨" onclick="getCheckboxValue()" id="771" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/파닭.jpg" />
									<div class="info-text">
										<h2>파닭치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="허니벌꿀치킨" onclick="getCheckboxValue()" id="772" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/허니벌꿀.jpg" />
									<div class="info-text">
										<h2>허니벌꿀치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살깐풍요리치킨" onclick="getCheckboxValue()" id="773" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/깐풍요리순살.jpg" />
									<div class="info-text">
										<h2>순살깐풍요리치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살마늘알마니치킨" onclick="getCheckboxValue()" id="774" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/마늘알마니순살.png" />
									<div class="info-text">
										<h2>순살마늘알마니치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살모두의마요치킨" onclick="getCheckboxValue()" id="775" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/모두의마요순살.jpg" />
									<div class="info-text">
										<h2>모두의마요순살치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살뿌리고(오리지널)" onclick="getCheckboxValue()" id="776" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/뿌리고후라이드순살.jpg" />
									<div class="info-text">
										<h2>순살뿌리고(오리지널)</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살뿌리고(매콤달콤한맛)" onclick="getCheckboxValue()" id="777" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/뿌리고매콤달콤순살.jpg" />
									<div class="info-text">
										<h2>뿌리고(매콤달콤한맛)</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살강정치킨" onclick="getCheckboxValue()" id="778" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/강정순살.jpg" />
									<div class="info-text">
										<h2>순살강정치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살땡초치킨" onclick="getCheckboxValue()" id="779" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/땡초순살.jpg" />
									<div class="info-text">
										<h2>순살땡초치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살후라이드" onclick="getCheckboxValue()" id="780" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/후라이드순살.jpg" />
									<div class="info-text">
										<h2>순살후라이드</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살양념" onclick="getCheckboxValue()" id="781" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/양념순살.jpg" />
									<div class="info-text">
										<h2>순살양념치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살반반치킨" onclick="getCheckboxValue()" id="782" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/반반순살.jpg" />
									<div class="info-text">
										<h2>순살반반치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살뿌리고(눈꽃치즈맛)" onclick="getCheckboxValue()" id="783" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/뿌리고눈꽃치즈순살.jpg" />
									<div class="info-text">
										<h2>순살뿌리고(눈꽃치즈맛)</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살간장치킨" onclick="getCheckboxValue()" id="784" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/간장순살.jpg" />
									<div class="info-text">
										<h2>순살간장치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살파닭" onclick="getCheckboxValue()" id="785" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/파닭순살.jpg" />
									<div class="info-text">
										<h2>순살파닭</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="순살허니벌꿀치킨" onclick="getCheckboxValue()" id="786" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/허니벌꿀순살.jpg" />
									<div class="info-text">
										<h2>순살허니벌꿀치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="멕시윙" onclick="getCheckboxValue()" id="787" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/멕시윙.jpg" />
									<div class="info-text">
										<h2>멕시윙</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="멕시핀" onclick="getCheckboxValue()" id="788" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/멕시핀.jpg" />
									<div class="info-text">
										<h2>멕시핀</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="멕시콤보" onclick="getCheckboxValue()" id="789" />
								<button class="logobox" name="chickenbrand" value="멕시카나">
									<img src="images/chickMenu/멕시카나/멕시콤보.jpg" />
									<div class="info-text">
										<h2>멕시콤보</h2>
									</div>
								</button>
							</div>
						</div>
					</div>
					<div class="slider-btn-wrapper slider-btn-wrapper-left">
						<!-- 왼쪽 화살표 -->
						<button id="left-mexicana" class="slider-btn">⬅Left</button>
					</div>
					<b class="center-text">멕시카나</b>
					<div class="slider-btn-wrapper slider-btn-wrapper-right">
						<!-- 오른쪽 화살표 -->
						<button id="right-mexicana" class="slider-btn">Right➡</button>
					</div>
				</div>
			</div>
			<!-- 9번 브랜드 -->
			<div class="inner">
				<div class="slider">
					<div class="item-wrapper chickenplus">
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="프라임핫쵸킹" onclick="getCheckboxValue()" id="721" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/프라임핫쵸킹.png" />
									<div class="info-text">
										<h2>프라임핫쵸킹</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="바삭담백한 후라이드" onclick="getCheckboxValue()" id="722" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/바삭담백후라이드.png" />
									<div class="info-text">
										<h2>바삭담백후라이드</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="No.1포테이토닥토닭" onclick="getCheckboxValue()" id="723" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/포테이토닭토닭.png" />
									<div class="info-text">
										<h2>No.1포테이토닥토닭</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="아빠의제주깜슐랭" onclick="getCheckboxValue()" id="724" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/아빠제주깜슐랭.png" />
									<div class="info-text">
										<h2>아빠의제주깜슐랭</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="조선레드치킨" onclick="getCheckboxValue()" id="725" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/조선레드.png" />
									<div class="info-text">
										<h2>조선레드치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="꿀잼치킨" onclick="getCheckboxValue()" id="726" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/꿀잼치킨.png" />
									<div class="info-text">
										<h2>꿀잼치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="극장판치킨(고추치즈편)" onclick="getCheckboxValue()" id="727" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/극장판치킨.png" />
									<div class="info-text">
										<h2>극장판치킨(고추치즈편)</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="핫쵸킹" onclick="getCheckboxValue()" id="728" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/핫쵸킹.png" />
									<div class="info-text">
										<h2>핫쵸킹</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="크리스피후라이드" onclick="getCheckboxValue()" id="729" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/크리스피후라이드.png" />
									<div class="info-text">
										<h2>크리스피후라이드</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="크리미어니언" onclick="getCheckboxValue()" id="730" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/크리미어니언.png" />
									<div class="info-text">
										<h2>크리미어니언</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="양념치킨" onclick="getCheckboxValue()" id="731" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/양념.png" />
									<div class="info-text">
										<h2>양념치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="쉑쉑양꼬치킨" onclick="getCheckboxValue()" id="732" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/쉑쉑양꼬.png" />
									<div class="info-text">
										<h2>쉑쉑양꼬치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="마늘스테미나" onclick="getCheckboxValue()" id="733" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/마늘스태미나.png" />
									<div class="info-text">
										<h2>마늘스테미나</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="눈맞은치킨" onclick="getCheckboxValue()" id="734" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/눈맞은치킨.png" />
									<div class="info-text">
										<h2>눈맞은치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="꿔바로우치킨" onclick="getCheckboxValue()" id="735" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/꿔바로우치킨.png" />
									<div class="info-text">
										<h2>꿔바로우치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="강정치킨" onclick="getCheckboxValue()" id="736" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/강정치킨.png" />
									<div class="info-text">
										<h2>강정치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="간장치킨" onclick="getCheckboxValue()" id="737" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/간장.png" />
									<div class="info-text">
										<h2>간장치킨</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="두마리같은한마리치킨주세요" onclick="getCheckboxValue()" id="738" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/두마리한마리.png" />
									<div class="info-text">
										<h2>두마리같은한마리치킨주세요</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="프라임핫쵸킹순살" onclick="getCheckboxValue()" id="739" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/프라임핫쵸킹.png" />
									<div class="info-text">
										<h2>프라임핫쵸킹순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="바삭담백한 후라이드순살" onclick="getCheckboxValue()" id="740" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/바삭담백후라이드.png" />
									<div class="info-text">
										<h2>바삭담백후라이드순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="No.1포테이토닥토닭순살" onclick="getCheckboxValue()" id="741" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/포테이토닭토닭.png" />
									<div class="info-text">
										<h2>No.1포테이토닥토닭순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="아빠의제주깜슐랭순살" onclick="getCheckboxValue()" id="742" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/아빠제주깜슐랭.png" />
									<div class="info-text">
										<h2>아빠의제주깜슐랭순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="조선레드치킨순살" onclick="getCheckboxValue()" id="743" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/조선레드.png" />
									<div class="info-text">
										<h2>조선레드치킨순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="꿀잼치킨순살" onclick="getCheckboxValue()" id="744" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/꿀잼치킨.png" />
									<div class="info-text">
										<h2>꿀잼치킨순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="극장판치킨(고추치즈편)순살" onclick="getCheckboxValue()" id="745" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/극장판치킨.png" />
									<div class="info-text">
										<h2>극장판치킨(고추치즈편)순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="핫쵸킹순살" onclick="getCheckboxValue()" id="746" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/핫쵸킹.png" />
									<div class="info-text">
										<h2>핫쵸킹순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="크리스피후라이드순살" onclick="getCheckboxValue()" id="747" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/크리스피후라이드.png" />
									<div class="info-text">
										<h2>크리스피후라이드순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="크리미어니언순살" onclick="getCheckboxValue()" id="748" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/크리미어니언.png" />
									<div class="info-text">
										<h2>크리미어니언순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="양념치킨순살" onclick="getCheckboxValue()" id="749" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/양념.png" />
									<div class="info-text">
										<h2>양념치킨순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="쉑쉑양꼬치킨순살" onclick="getCheckboxValue()" id="750" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/쉑쉑양꼬.png" />
									<div class="info-text">
										<h2>쉑쉑양꼬치킨순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="마늘스테미나순살" onclick="getCheckboxValue()" id="751" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/마늘스태미나.png" />
									<div class="info-text">
										<h2>마늘스테미나순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="눈맞은치킨순살" onclick="getCheckboxValue()" id="752" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/눈맞은치킨.png" />
									<div class="info-text">
										<h2>눈맞은치킨순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="꿔바로우치킨순살" onclick="getCheckboxValue()" id="753" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/꿔바로우치킨.png" />
									<div class="info-text">
										<h2>꿔바로우치킨순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="강정치킨순살" onclick="getCheckboxValue()" id="754" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/강정치킨.png" />
									<div class="info-text">
										<h2>강정치킨순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="간장치킨순살" onclick="getCheckboxValue()" id="755" />
								<button class="logobox" name="chickenbrand" value="치킨플러스">
									<img src="images/chickMenu/치킨플러스/간장.png" />
									<div class="info-text">
										<h2>간장치킨순살</h2>
									</div>
								</button>
							</div>
						</div>
					</div>
					<div class="slider-btn-wrapper slider-btn-wrapper-left">
						<!-- 왼쪽 화살표 -->
						<button id="left-chickenplus" class="slider-btn">⬅Left</button>
					</div>
					<b class="center-text">치킨플러스</b>
					<div class="slider-btn-wrapper slider-btn-wrapper-right">
						<!-- 오른쪽 화살표 -->
						<button id="right-chickenplus" class="slider-btn">Right➡</button>
					</div>
				</div>
			</div>

		</div>
	</div>
	<div class="btn-grp">
		<button class="button-left">⬅Left</button>
		<button class="button-right">Right➡</button>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<div style="margin-left:400px; display:inline-flex">
		<div id="Brand_Chart1" style="width: 500px;"></div>
		<div id="Brand_Select"></div>
		<div id="Brand_Between"></div>
		<div id="Brand_Chart" style="width: 500px;"></div>
	</div>
	<script src="assets/js/Menu.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script type="text/javascript">
		var smallcal_brand = null;
		var smallprice_brand = null;
		function compareclick() {
			var menu_num = [];
			$('input:checkbox[name=menuCompare]').each(function(index) {
				if ($(this).is(":checked") == true) {
					console.log($(this).attr('id'));
					menu_num.push($(this).attr('id'));
				}
			})
			if (menu_num.length > 5) {
				alert("최대 5개까지만 비교해 주세요!");
			} else if (menu_num.length < 2) {
				alert("최소 2개는 선택해 주세요!");
			} else {
				$.ajax({
					url : 'ManyMenu',
					type : 'post',
					data : {
						'Menus' : menu_num
					},
					success : function(res) {
						console.log("메뉴 Ajax성공!");
						console.log(res);
						ManyBrandChart(res);
						var min_calories = res[0].calories;
						var min_price = res[0].menu_price;
						console.log(min_calories);
						var finalNum = 0;
						var priceNum = 0;
						for (var i = 0; i < res.length; i++) {
							if (res[i].calories < min_calories) {
								console.log(res[i].calories);
								min_calories = res[i].calories;
								finalNum = i;
							}
							if (res[i].menu_price < min_price) {
								min_price = res[i].min_price;
								priceNum = i;
							}
						}
						console.log(res[finalNum].menu_name);
						console.log(res[priceNum].menu_name);
						smallcal_brand = res[finalNum];
						smallprice_brand = res[priceNum];
					},
					error : function() {
						alert("실패..");
					}
				})
			}
		}
		function calories_click() {
			makingChart(smallcal_brand);
		}
		function price_click() {
			makingChart(smallprice_brand);
		}
	</script>
	<!-- 하나만 클릭시 나와주는 함수 -->
	<script>
		$('.logobox').click(function() {
			console.log($(this).prev().attr('id'));
			var menu_number = $(this).prev().attr('id');
			compareone(menu_number);
		});
		function compareone(num) {
			$.ajax({
				url : 'OneMenu',
				type : 'post',
				data : {
					'Menu' : num
				},
				success : function(res) {
					console.log("메뉴 Ajax성공!");
					console.log(res);
					if (res == null) {
						alert("검색결과가 없거나 이름을 틀렸습니다!");
					} else {
						makingChart(res);
					}
				},
				error : function() {
					alert("검색결과가 없거나 이름을 틀렸습니다!");
				}
			})
		}
		// 버튼 요소를 가져오기
		var scrollButton = document.getElementById("totalcompare");

		// 클릭 이벤트에 함수를 연결
		scrollButton.addEventListener("click", function() {
			// 1초(1000 밀리초) 후에 스크롤 함수 실행
			setTimeout(function() {
				scrollDown();
			}, 1000);
		});

		// 스크롤을 내리는 함수 정의
		function scrollDown() {
			// 원하는 스크롤 위치로 스크롤을 내립니다. 여기에서는 500 픽셀 아래로 스크롤합니다.
			window.scrollBy(0, document.body.scrollHeight);
		}
	</script>
	<!-- Chart.js -->
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@3.0.0/dist/chart.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>
	<script>
		function ManyBrandChart(result) {
			document.getElementById("Brand_Chart1").innerHTML = '<canvas id="myChart" style="height: 500px; width: 500px"></canvas>'
			document.getElementById("Brand_Select").innerHTML = '<button id="calories_select" style="background-color: #FFD280; padding: 10px 20px !important; border-radius: 5px; border: none; cursor: pointer;" onclick="calories_click()">칼로리 제일 적은 메뉴</button><br><br><button id="price_select" style="background-color: #FFD280; padding: 10px 20px !important; border-radius: 5px; border: none; cursor: pointer;" onclick="price_click()">가격 제일 적은 메뉴</button>'
			let menu_name = [];
			let brand_price = [];
			let brand_calories = [];
			let brand_protein = [];
			for (var i = 0; i < result.length; i++) {
				menu_name.push(result[i].menu_name);
				brand_price.push(result[i].menu_price);
				brand_calories.push(result[i].calories);
				brand_protein.push(result[i].protein);
			}
			const ctx = document.getElementById('myChart').getContext('2d');
			const myChart = new Chart(
					ctx,
					{
						plugins : [ ChartDataLabels ],
						type : 'doughnut',
						data : {
							datasets : [
									/* Outer doughnut data starts*/
									{
										data : brand_calories,
										backgroundColor : [
												'rgb(255, 99, 132)',
												'rgb(255, 159, 64)',
												'rgb(250, 15, 64)',
												'rgb(105, 130, 32)',
												'rgb(25, 159, 64)' ],
										label : 'Doughnut 1',
										datalabels : {
											formatter : function(value, context) {
												return context.chart.data.datasets[0].data[context.dataIndex]
														+ 'Kcal';
											}
										}
									},
									/* Outer doughnut data ends*/
									/* Inner doughnut data starts*/
									{
										data : brand_protein,
										backgroundColor : [
												'rgb(255, 99, 132)',
												'rgb(255, 159, 64)',
												'rgb(250, 15, 64)',
												'rgb(105, 130, 32)',
												'rgb(25, 159, 64)' ],
										label : 'Doughnut 2',
										datalabels : {
											formatter : function(value, context) {
												return context.chart.data.datasets[1].data[context.dataIndex]
														+ 'g';
											}
										}
									},
									{
										data : brand_price,
										backgroundColor : [
												'rgb(255, 99, 132)',
												'rgb(255, 159, 64)',
												'rgb(250, 15, 64)',
												'rgb(105, 130, 32)',
												'rgb(25, 159, 64)' ],
										label : 'Doughnut 3',
										datalabels : {
											formatter : function(value, context) {
												return context.chart.data.datasets[2].data[context.dataIndex]
														+ '원';
											}
										}
									},
							/* Inner doughnut data ends*/
							],
							labels : menu_name
						},
						options : {
							responsive : true,
							legend : {
								position : 'top',
							},
							title : {
								display : true,
								text : 'Chart.js Doughnut Chart'
							},
							animation : {
								animateScale : true,
								animateRotate : true
							},
							tooltips : {
								callbacks : {
									label : function(item, data) {
										console.log(data.labels, item);
										return data.datasets[item.datasetIndex].label
												+ ": "
												+ data.labels[item.index]
												+ ": "
												+ data.datasets[item.datasetIndex].data[item.index];
									}
								}
							},
						},
					});
			makingChart(result[0]);
		}
	</script>
	<script>
		function makingChart(result) {
			document.getElementById("Brand_Between").innerHTML = '선택한 메뉴 : '
					+ result.menu_name + ' <br> 단백질 : ' + result.protein
					+ 'g <br> 칼로리 : ' + result.calories + 'Kcal <br> 가격 : '
					+ result.menu_price + '원'
			document.getElementById("Brand_Chart").innerHTML = '<canvas id="myChart2" style="height: 500px; width: 500px"></canvas>'
			const ctx = document.getElementById('myChart2').getContext('2d');
			const myChart = new Chart(
					ctx,
					{
						plugins : [ ChartDataLabels ],
						type : 'doughnut',
						data : {
							datasets : [
									/* Outer doughnut data starts*/
									{
										data : [ result.calories, 245 ],
										backgroundColor : [
												'rgb(255, 99, 132)',
												'rgb(255, 159, 64)' ],
										label : 'Doughnut 1',
										datalabels : {
											formatter : function(value, context) {
												return context.chart.data.datasets[0].data[context.dataIndex]
														+ 'Kcal';
											}
										}
									},
									/* Outer doughnut data ends*/
									/* Inner doughnut data starts*/
									{
										data : [ result.protein, 27 ],
										backgroundColor : [
												'rgb(255, 99, 132)',
												'rgb(255, 159, 64)' ],
										label : 'Doughnut 2',
										datalabels : {
											formatter : function(value, context) {
												return context.chart.data.datasets[1].data[context.dataIndex]
														+ 'g';
											}
										}
									},
									{
										data : [ result.menu_price, 15000 ],
										backgroundColor : [
												'rgb(255, 99, 132)',
												'rgb(255, 159, 64)' ],
										label : 'Doughnut 3',
										datalabels : {
											formatter : function(value, context) {
												return context.chart.data.datasets[2].data[context.dataIndex]
														+ '원';
											}
										}
									},
							/* Inner doughnut data ends*/
							],
							labels : [ result.menu_name, "평균" ]
						},
						options : {
							responsive : true,
							legend : {
								position : 'top',
							},
							title : {
								display : true,
								text : 'Chart.js Doughnut Chart'
							},
							animation : {
								animateScale : true,
								animateRotate : true
							},
							tooltips : {
								callbacks : {
									label : function(item, data) {
										console.log(data.labels, item);
										return data.datasets[item.datasetIndex].label
												+ ": "
												+ data.labels[item.index]
												+ ": "
												+ data.datasets[item.datasetIndex].data[item.index];
									}
								}
							},
						},
					});
		}
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			var data = '<c:out value="${SearchRes}"/>';
			var find = 'input[value =' + data + ']';
			setTimeout(function() {
				if (data) {
					console.log($(find).attr("id"));
					var result = $(find).attr("id");
					compareone(result);
				}
			}, 300);
		});
	</script>
</body>
</html>