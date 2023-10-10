<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
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
		</a> <a href="MyPage.jsp"> <i class="fas fa-trophy"></i> 마이페이지
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

		<div class="login-search">
			<form action="" method="post">
				<select name="sr">
					<option value="chi_brand">브랜드</option>
					<option value="chi_menu">메뉴</option>
					<option value="store_name">가게명</option>
				</select> <input type="text" class="sr-input" name="sr_input"
					placeholder="Search"> <input type="submit" value="검색버튼">
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
					<form action="" method="post">
						<button class="Logout-Btn">로그아웃</button>
					</form>
				</c:if>
			</div>
		</div>
	</nav>


	<div class="brandlogo">
		<div>
			<div>
				<h1>브랜드</h1>
			</div>
		</div>
		<div>
			<div class="firstLine">
				<button type="button" class="logobox"><img alt="bbq" src="images/brandlogo/logo-bbq.jpg" class="logosize"></button>
				<button type="button" class="logobox"><img alt="bhc" src="images/brandlogo/logo-bhc.png" class="logosize"></button>
				<button type="button" class="logobox"><img alt="gyochon" src="images/brandlogo/logo-gyochon.png" class="logosize"></button>
			</div>
			<div class="secondLine">
				<button type="button" class="logobox"><img alt="goobne" src="images/brandlogo/logo-goobne.png" class="logosize"></button>
				<button type="button" class="logobox"><img alt="hosigi" src="images/brandlogo/logo-hosigi.png" class="logosize"></button>
				<button type="button" class="logobox"><img alt="jadam" src="images/brandlogo/logo-jadam.png" class="logosize"></button>
			</div>
			<div class="thirdLine">
				<button type="button" class="logobox"><img alt="ajukeo" src="images/brandlogo/logo-ajukeo.jpg" class="logosize"></button>
				<button type="button" class="logobox"><img alt="mexicana" src="images/brandlogo/logo-mexicana.png" class="logosize"></button>
				<button type="button" class="logobox"><img alt="chickenplus" src="images/brandlogo/logo-chickenplus.png" class="logosize"></button>
			</div>
		</div>
	</div>


</body>
</html>