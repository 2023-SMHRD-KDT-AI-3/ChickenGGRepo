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
<title>치킨 연구소 마이페이지</title>
<link rel="stylesheet" href="assets/css/MyPage.css"></link>
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
				<a href="GoMypage"><button class="login-button">로그인</button></a>
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
	<wrapper class="MP_Container">
	<div class="MP_Content">
		<c:if test="${empty info}">
			<div class="non-LogIn">
				<form action="login" method="post">
					<div class="wrapper">
						<div class="title">
							<h2>로그인</h2>
						</div>
						<div class="form-group">
							<label for="username">아이디:</label> <input id="username"
								type="text" name="id" placeholder="아이디를 입력하세요." required>
							<div id="usernameError"></div>
						</div>
						<div class="form-group">
							<label for="password">비밀번호:</label> <input id="password"
								type="password" name="pw" placeholder="비밀번호를 입력하세요." required>
						</div>
						<div class="form-group">
							<div class="logInButton-Container">
								<button id="logInButton">로그인버튼</button>
							</div>
						</div>
						<span class="slideshow-container">
							<div class="Slidesbackground">
								<div class="mySlides fade">
									<img src="images/chickPromotion/bbq 광고.png"
										class="slideshow-image">
								</div>
								<div class="mySlides fade">
									<img src="images/chickPromotion/bhc 광고.png"
										class="slideshow-image">
								</div>
								<div class="mySlides fade">
									<img src="images/chickPromotion/교촌 광고.png"
										class="slideshow-image">
								</div>
								<div class="mySlides fade">
									<img src="images/chickPromotion/굽네 광고.png"
										class="slideshow-image">
								</div>
								<div class="mySlides fade">
									<img src="images/chickPromotion/멕시카나 광고.png"
										class="slideshow-image">
								</div>
								<div class="mySlides fade">
									<img src="images/chickPromotion/호식이 광고.png"
										class="slideshow-image">
								</div>
							</div>
						</span>
					</div>
				</form>
			</div>
		</c:if>
		<c:if test="${!empty info}">
			<!-- 로그인 마이페이지 내용 부분 -->
			<div class="MP-LogIn-Container">
				<div class="MP-LogIn-Frame">
					<div class="Profile-Complex">
						<div class="Complex-Header">
							<div class="Complex-Header-Text">
								<h3>My Account</h3>
							</div>
						</div>
						<hr class="MP-HR"></hr>
						<div class="Complex-Content">
							<div class="Complex-ID">
								<div class="ID-Text">
									<h5>아이디</h5>
								</div>
								<div class="Complex-ID-Container">${info.id}</div>
								<hr class="MP-HR"></hr>
								<div class="PW-Text">
									<h5>비밀번호</h5>
								</div>
								<div class="Complex-PW-Container">${info.pw}</div>
								<hr class="MP-HR"></hr>
								<div class="Fix-Frame">
									<form action="PWFix" method="post">
										<div class="Fix-Container">
											<div class=".Fix-PW-Input">
												<input type="text" name="pw" required> <label>비밀번호
													수정</label> <span></span>
											</div>
										</div>
										<div class="Fix-PW-Btn">
											<button class="PW-BtnFloat">비밀번호 수정</button>
										</div>
									</form>
								</div>
								<hr class="MP-HR"></hr>
								<div class="Nick-Text">
									<h5>nick</h5>
								</div>
								<div class="Complex-Nick-Container">${info.nick}</div>
								<hr class="MP-HR"></hr>
								<div class="Fix-Frame">
									<form action="NickFix" method="post">
										<div class="Fix-Container">

											<div class="Fix-Nick-Input">
												<input type="text" name="nick" required> <label>닉네임수정</label>
												<span></span>

											</div>
										</div>
										<div class="Fix-Nick-Btn">
											<button class="Nick-BtnFloat">닉네임 수정</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="Profile-Summary">
						<div class="Profile-Image">
							<img src="images/기본 프로필 이미지.png">
							<div class=Profile-nick>${info.nick}</div>
						</div>
						<div class="Profile-text">

							<div>
								<div calss="Profile-date">
									<h4>가입일</h4>
									<div class="Profile-Summary-Text">
										<div>${info.created_at}</div>
									</div>
								</div>
								<div>
									<h4>한줄평 작성</h4>
								</div>
								<div>
									<form action="review" method="post">
										<div>
											<textarea class="textarea" name="review_text">${Review_Content}</textarea>
										</div>
										<div class="Fix-textarea">
											<button class="textarea-button">한줄평 제출</button>
										</div>
									</form>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
		</c:if>
	</div>
	</wrapper>

	<script src="assets/js/MyPage.js"></script>

</body>
</html>