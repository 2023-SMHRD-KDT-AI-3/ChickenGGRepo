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
			<form action="" method="post" class="sr">
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
			<h1 class="brand">BRAND</h1>
			<span id="compare_list">선택한 브랜드 >> </span>
			<br><br>
			<br>
			<button type="submit" class="compare">비교하기</button><br>
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
	<div id="Brand_Chart" style="width: 500px; margin-left: 250px"></div>
	<script src="assets/js/brand.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script>
		$('.logobox').click(function() {
			console.log(this.value);
			SearchOneBrand(this.value);
		});
		function SearchOneBrand(val) {
			$
					.ajax({
						url : 'OneBrand',
						type : 'post',
						data : {
							'Brand' : val
						},
						success : function(res) {
							// 차트를 만듭니다.
							console.log("Ajax성공!");
							console.log(res);
							makingChart(res);
							contentType: "application/x-www-form-urlencoded; charset=UTF-8";
						},
						error : function(request, status, error) {
							alert("code:" + request.status + "\n" + "message:"
									+ request.responseText + "\n" + "error:"
									+ error);
						}
					})
		}
	</script>
	<!-- Chart.js -->
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@3.0.0/dist/chart.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>
	<script>
		function makingChart(result) {
			document.getElementById("Brand_Chart").innerHTML = '<canvas id="myChart" style="height: 500px; width: 500px"></canvas>'
			console.log(result.Brand);
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
										data : [ result.Calories, 245 ],
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
										data : [ result.Protein, 27 ],
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
										data : [ result.Price, 15000 ],
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
							labels : [ result.Brand, "평균" ]
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
						}
					});
		}
		
		
	</script>

</body>
</html>