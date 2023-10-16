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
			<button type="submit" class="compare" onclick="compareclick()">비교하기</button>
			<span id="compare_list"></span>
		</div>
	</div>
	<!-- 치킨 사진 슬라이드 -->
	<div class="outer">
		<div class="inner-grp">
			<!-- 1번 브랜드 inner 클래스는 브랜드 양식 -->
			<div class="inner">
				<img src="images/Menu_brandlogo/logo-bbq.jpg" class="brand-box">
				<div class="slider">
					<div class="item-wrapper">
					<!-- item 클래스가 메뉴 양식 -->
						<div class="item">
							<div class="item-content">
							<!-- 각메뉴마다 id값에 menu_num값 넣기! -->
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="바삭갈릭" onclick="getCheckboxValue()" id="13"/>
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
									value="단짠갈릭" onclick="getCheckboxValue()" id="14"/>
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
									value="착착갈릭" onclick="getCheckboxValue()" id="15"/>
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
									value="황금올리브" onclick="getCheckboxValue()" id="16"/>
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
									value="황금올리브순살" onclick="getCheckboxValue()" id="17"/>
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
									value="황금올리브닭다리" onclick="getCheckboxValue()" id="18"/>
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
									value="황금올리브속안심" onclick="getCheckboxValue()" id="19"/>
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/황금올리브속안심.png" />
									<div class="info-text">
										<h2>황금올리브속안심</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="황금올리브핫윙" onclick="getCheckboxValue()" id="20"/>
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
									value="황금올리브핫윙(냉장)" onclick="getCheckboxValue()" id="21"/>
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
									value="핫황금올리브크리스피" onclick="getCheckboxValue()" id="22"/>
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
									value="크런치순살크래커" onclick="getCheckboxValue()" id="23"/>
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
									value="파더s치킨(와사비)" onclick="getCheckboxValue()" id="24"/>
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
									value="파더s치킨(로스트갈릭)" onclick="getCheckboxValue()" id="25"/>
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
									value="황금올리브블랙페퍼" onclick="getCheckboxValue()" id="26"/>
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
									value="황금올리브레드착착" onclick="getCheckboxValue()" id="27"/>
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
									value="황금올리브크런치버터" onclick="getCheckboxValue()" id="28"/>
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
									value="자메이카소떡만나" onclick="getCheckboxValue()" id="29"/>
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
									value="자메이카소떡만나콤보" onclick="getCheckboxValue()" id="30"/>
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
									value="자메이카소떡만나순살" onclick="getCheckboxValue()" id="31"/>
								<button class="logobox" name="chickenbrand" value="BBQ">
									<img src="images/chickMenu/BBQ/나자메이카소떡만나순살.png" />
									<div class="info-text">
										<h2>자메이카소떡만나순살</h2>
									</div>
								</button>
							</div>
						</div>
						<div class="item">
							<div class="item-content">
								<input type="checkbox" class="logocheck" name="menuCompare"
									value="오리지널양념" onclick="getCheckboxValue()" id="32"/>
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
									value="오리지널양념순살" onclick="getCheckboxValue()" id="33"/>
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
									value="매운양념치킨" onclick="getCheckboxValue()" id="34"/>
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
									value="황올한깐풍치킨" onclick="getCheckboxValue()" id="35"/>
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
									value="황올한깐풍치킨순살" onclick="getCheckboxValue()" id="36"/>
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
									value="극한왕갈비치킨" onclick="getCheckboxValue()" id="37"/>
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
									value="소이갈릭스" onclick="getCheckboxValue()" id="38"/>
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
									value="소이갈릭스(윙&봉)" onclick="getCheckboxValue()" id="39"/>
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
									value="자메이카통다리구이" onclick="getCheckboxValue()" id="40"/>
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
									value="스모크치킨" onclick="getCheckboxValue()" id="41"/>
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
									value="매달구" onclick="getCheckboxValue()" id="42"/>
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
									value="황금올리브콤보" onclick="getCheckboxValue()" id="43"/>
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
									value="황금올리브크런치버터콤보" onclick="getCheckboxValue()" id="44"/>
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
									value="오리지날양념치킨콤보" onclick="getCheckboxValue()" id="45"/>
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
									value="황금올리브치킨핫크리스피콤보" onclick="getCheckboxValue()" id="46"/>
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
									value="황금올리브블랙페퍼콤보" onclick="getCheckboxValue()" id="47"/>
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
									value="황금올리브레드착착콤보" onclick="getCheckboxValue()" id="48"/>
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
						<button id="left-btn" class="slider-btn">⬅Left</button>
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
	<script type="text/javascript">
	function compareclick(){
		$('input:checkbox[name=menuCompare]').each(function (index) {
			if($(this).is(":checked")==true){
		    	console.log($(this).attr('id'));
		    }
		})
	}
	</script>
</body>
</html>