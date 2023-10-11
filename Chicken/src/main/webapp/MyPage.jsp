<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<title>치킨 연구소 마이페이지</title>
<link rel="stylesheet" href="assets/css/MyPage.css"></link>
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
			<a href="goMain"> <i class="fas fa-home"></i> 홈</a> 
			<a href="Brand.jsp"> <i class="fas fa-list"></i> 브랜드</a> 
			<a href="#"> <i class="fas fa-utensils"></i> 메뉴</a> 
			<a href="MyPage.jsp"> <i class="fas fa-trophy"></i> 마이페이지</a>
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

		<!-- 로그인 및 검색 부분 -->
		<div class="login-search">
			<form action="" method="post">
				<select name="sr">
					<option value="chi_brand">브랜드</option>
					<option value="chi_menu">메뉴</option>
					<option value="store_name">가게명</option>
				</select> 
				<input type="text" class="sr-input" name="sr_input" placeholder="Search" autocomplete="off">
				<button type="submit" class="sr-input-btn">검색버튼</button>
			</form>
			<c:if test="${empty info}">
				<form action="login" method="post" class="login-input">
					<table>
						<tr>
							<td><input type="text" placeholder="아이디" name="id">
							</td>
							<td rowspan="2">
								<button class="login-button">로그인</button>
							</td>
						</tr>
						<tr>
							<td>
								<input type="password" placeholder="비밀번호" name="pw">
							</td>
						</tr>
					</table>
				</form>
				<a href="Register.jsp"><button class="register-button">회원가입</button></a>
			</c:if>
			<div class="Logout-Container">
				<c:if test="${!empty info}">
					<h1>${info.nick}님환영합니다!</h1>
					<form action="Logout" method="post">
						<button class="Logout-Btn">로그아웃</button>
					</form>
				</c:if>
			</div>
		</div>
	</nav>
	<wrapper class="MP_Container">
		<div class="MP_Content">
			<c:if test="${empty info}">
				<div class="non-LogIn">
					<form action="Register" method="post">
        			<div class="wrapper">
            			<div class="title">
            				<h2>로그인</h2>
            			</div>
            			<div class="form-group">
                			<label for="username">아이디:</label>
                			<input id="username" type="text" name="id" placeholder="아이디를 입력하세요." required>
                			<div id="usernameError"></div>
            			</div>
            			<div class="form-group">
                			<label for="password">비밀번호:</label>
                			<input id="password" type="password" name="pw" placeholder="비밀번호를 입력하세요." required>
            			</div>
            			<div class="form-group">
                			<button id="logInButton" disabled>로그인버튼</button>
            			</div>
            			<span class="slideshow-container">
                 <div class="Slidesbackground">
                    <div class="mySlides fade">
                    <img src="images/chickPromotion/bbq 광고.png" class="slideshow-image">
                    </div>
                    <div class="mySlides fade">
                        <img src="images/chickPromotion/bhc 광고.png" class="slideshow-image">
                    </div>
                    <div class="mySlides fade">
                        <img src="images/chickPromotion/교촌 광고.png" class="slideshow-image">
                    </div>
                    <div class="mySlides fade">
                        <img src="images/chickPromotion/굽네 광고.png" class="slideshow-image">
                    </div>
                    <div class="mySlides fade">
                        <img src="images/chickPromotion/멕시카나 광고.png" class="slideshow-image">
                    </div>
                    <div class="mySlides fade">
                        <img src="images/chickPromotion/호식이 광고.png" class="slideshow-image">
                    </div>
                </div>
             </span>
        			</div>
   					</form>
   				</div>
			</c:if>
			<c:if test="${!empty info}">
				<div class="MyPage">
					<div class="MyPage-Container">
						<div class="My-Profile">
							<div class="Profile-Img">
								<img src="images/images.png">
							</div>
							<div class="MyPage-Content">
								<p>id</p>
								<p>pw</p>
								<p>nick</p>
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