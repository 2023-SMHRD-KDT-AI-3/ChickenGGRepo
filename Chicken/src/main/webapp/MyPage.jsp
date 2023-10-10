<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/MyPage.css"></link>
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
		</a> <a href="#"> <i class="fas fa-trophy"></i> 랭킹
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
							<td>
								<button class="login-button">로그인</button>
							</td>
						</tr>
						<tr>
							<td><input type="password" placeholder="비밀번호" name="pw">
							</td>
							<td><a href="Register.jsp"><button
										class="register-button">회원가입</button></a></td>
						</tr>
					</table>
				</form>
			</c:if>
			<c:if test="${!empty info}">
				<h1>${info.nick}님환영합니다!</h1>
			</c:if>
		</div>
	</nav>
	<wrapper class="MP_Container">
		<div class="MP_Content">
			<c:if test="${empty info}">
				<h1>Chicken.GG</h1>
				<form action="login" method="post" class="MP_Login">
					<table>
						<tr>
							<td>
								<input type="text" placeholder="아이디" name="id"></td>
							<td>
								<button class="login-button">로그인</button>
							</td>
						</tr>
						<tr>
							<td><input type="password" placeholder="비밀번호" name="pw">
							</td>
							<td><a href="Register.jsp"><button class="register-button">회원가입</button></a></td>
						</tr>
					</table>
				</form>
			</c:if>
			<c:if test="${!empty info}">
				<h1>${info.nick}님환영합니다!</h1>
			</c:if>
		</div>
	</wrapper>

</body>
</html>