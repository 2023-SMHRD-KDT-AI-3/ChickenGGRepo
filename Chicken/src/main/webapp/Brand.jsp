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
			<h1 class="brand">BRAND</h1>
			<button type="submit" class="compare">비교하기</button>
			<span id="compare_list"></span>
			<hr>
		</div>
	</div>
	<div class="line">
		<div>
			<div class="firstLine">
				<input type="checkbox" class="logocheck" name="brandCompare"
					value="BBQ" onclick="getCheckboxValue()" />
				<button class="logobox" name="chickenbrand" value="BBQ">
					<img alt="bbq" src="images/brandlogo/logo-bbq.jpg" class="logosize">
				</button>
				<input type="checkbox" class="logocheck" name="brandCompare"
					value="BHC" onclick="getCheckboxValue()" />
				<button class="logobox" name="chickenbrand" value="BHC">
					<img alt="bhc" src="images/brandlogo/logo-bhc.png" class="logosize">
				</button>
				<input type="checkbox" class="logocheck" name="brandCompare"
					value="교촌" onclick="getCheckboxValue()" />
				<button class="logobox" name="chickenbrand" value="교촌">
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
	<div id="Brand_Chart"></div>
	<script src="assets/js/brand.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script>
		$('.logobox').click(function() {
			console.log(this.value);
			SearchOneBrand(this.value);
		});
		function SearchOneBrand(val) {
			$.ajax({
				url : 'OneBrand',
				type : 'post',
				data : {
					'Brand' : val
				},
				success : function(res) {
					// 차트를 만듭니다.
					console.log("Ajax성공!");
					console.log(res);
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:"
							+ request.responseText + "\n" + "error:" + error);
				}
			})
		}
	</script>
	<script>
		function makingChart(result) {
			console.log(result[0].brand_name);
			let brand_listname = [];
			let brand_listprice = [];
			let brand_listmin = [];
			let brand_sunsal = [];
			for (var i = 0; i < result.length; i++) {
				brand_listname.push(result[i].brand_name);
				brand_listprice.push(result[i].avg_price);
				brand_listmin.push(result[i].min_price);
				brand_sunsal.push(result[i].boneless);
			}
			document.getElementById("myChart1").innerHTML = '<canvas id="myChart" style="height: 490px; width: 850px"></canvas>'
			const ctx = document.getElementById('myChart').getContext('2d');
			const myChart = new Chart(ctx, {
				plugins : [ ChartDataLabels ],
				type : 'bar',
				data : {
					labels : brand_listname, //브랜드 이름 가져와서 X축에 넣기
					datasets : [
							{
								data : brand_listprice,
								backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
										'rgba(54, 162, 235, 0.2)',
										'rgba(255, 206, 86, 0.2)',
										'rgba(75, 192, 192, 0.2)',
										'rgba(153, 102, 255, 0.2)' ],
								borderColor : [ 'rgba(255, 99, 132, 1)',
										'rgba(54, 162, 235, 1)',
										'rgba(255, 206, 86, 1)',
										'rgba(75, 192, 192, 1)',
										'rgba(153, 102, 255, 1)' ],
								borderWidth : 1
							},
							{
								data : brand_listmin,
								backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
										'rgba(54, 162, 235, 0.2)',
										'rgba(255, 206, 86, 0.2)',
										'rgba(75, 192, 192, 0.2)',
										'rgba(153, 102, 255, 0.2)' ],
								borderColor : [ 'rgba(255, 99, 132, 1)',
										'rgba(54, 162, 235, 1)',
										'rgba(255, 206, 86, 1)',
										'rgba(75, 192, 192, 1)',
										'rgba(153, 102, 255, 1)' ],
								borderWidth : 1
							} ]
				},
				options : {
					scales : {
						yAxes : [ {
							ticks : { // 최소값, 최대값, 틱범위
								min : 13000,
								max : 25000,
								stepSize : 3000
							}
						} ]
					}

				}
			});
		}
	</script>

</body>
</html>