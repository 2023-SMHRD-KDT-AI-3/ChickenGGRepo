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
			<a href="goMain" id="navbar_logoimg"><img width="100px" src="images/하얀닭.png"
				alt="치킨 연구소 로고"></a>
		</div>

		<div class="login-search">
			<form action="Search" method="post" class="sr">
				<select name="sr" class="select">
					<option selected>선택</option>
					<option value="chi_brand">브랜드</option>
					<option value="chi_menu">메뉴</option>
				</select> 
				<input type="text" class="sr-input" name="sr_input"
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
			<button type="submit" class="compare" id="totalcompare">비교하기</button><br>
		</div>
	</div>
	<div class="line">
		<div>
			<div class="firstLine">
				<input type="checkbox" class="logocheck" name="brandCompare"
					value="BBQ" onclick="getCheckboxValue()" />
				<button class="logobox" name="chickenbrand" value="BBQ">
					<img alt="bbq" src="images/brandlogo/logo-bbq-removebg.png" class="logosize">
				</button>
				<input type="checkbox" class="logocheck" name="brandCompare"
					value="BHC" onclick="getCheckboxValue()" />
				<button class="logobox" name="chickenbrand" value="BHC">
					<img alt="bhc" src="images/brandlogo/logo-bhc-removebg.png" class="logosize">
				</button>
				<input type="checkbox" class="logocheck" name="brandCompare"
					value="교촌" onclick="getCheckboxValue()" />
				<button class="logobox" name="chickenbrand" value="교촌">
					<img alt="gyochon" src="images/brandlogo/logo-gyochon2-removebg-preview.png">

				</button>
			</div>
			<div class="secondLine">
				<input type="checkbox" class="logocheck" name="brandCompare"
					value="굽네치킨" onclick="getCheckboxValue()">
				<button class="logobox" name="chickenbrand" value="굽네치킨">
					<img alt="goobne" src="images/brandlogo/logo-goobne-removebg.png"
						class="logosize">
				</button>
				<input type="checkbox" class="logocheck" name="brandCompare"
					value="호식이두마리치킨" onclick="getCheckboxValue()">
				<button class="logobox" name="chickenbrand" value="호식이두마리치킨">
					<img alt="hosigi" src="images/brandlogo/logo-hosigi-removebg.png"
						class="logosize">
				</button>
				<input type="checkbox" class="logocheck" name="brandCompare"
					value="자담치킨" onclick="getCheckboxValue()">
				<button class="logobox" name="chickenbrand" value="자담치킨">
					<img alt="jadam" src="images/brandlogo/logo-jadam-removebg.png"
						class="logosize">
				</button>
			</div>
			<div class="thirdLine">
				<input type="checkbox" class="logocheck" name="brandCompare"
					value="아주커치킨" onclick="getCheckboxValue()">
				<button class="logobox" name="chickenbrand" value="아주커치킨">
					<img alt="ajukeo" src="images/brandlogo/logo-ajukeo-removebg.png"
						class="logosize">
				</button>
				<input type="checkbox" class="logocheck" name="brandCompare"
					value="멕시카나" onclick="getCheckboxValue()">
				<button class="logobox" name="chickenbrand" value="멕시카나">
					<img alt="mexicana" src="images/brandlogo/logo-mexicana-removebg.png"
						class="logosize">
				</button>
				<input type="checkbox" class="logocheck" name="brandCompare"
					value="치킨플러스" onclick="getCheckboxValue()">
				<button class="logobox" name="chickenbrand" value="치킨플러스">
					<img alt="chickenplus" src="images/brandlogo/logo-chickenplus-removebg.png"
						class="logosize">
				</button>
			</div>
		</div>
	</div>
	<br><br><br><br><br>
	<div id="Brand_Chart1" style="width: 500px; margin-left: 400px; float:left;"></div>
	<div id="Brand_Select" style="float:left"></div>
	<div id="Brand_Chart" style="width: 500px; float:right; margin-right: 150px;"></div>
	<div id="Brand_Between" style="float:right"></div>
	<script src="assets/js/brand.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script>
		$('#totalcompare').click(function() {
			var CBL = $('#compare_list')[0].innerText;
			CBL = CBL.slice(11).trimStart().trimEnd();
			CBL = CBL.split(/\s+/g);
			console.log(CBL);
			if (CBL.length < 2){
				alert("최소 2개는 선택해주세요!")
			}
			else if (CBL.length > 5) {
				alert("최대 5개까지만 선택해주세요!");
			} else {
				SearchManyBrand(CBL);
			}
			
		});
		
		const $bottomBtn = document.querySelector("#totalcompare");
		// 버튼 클릭 시 페이지 하단으로 이동
		$bottomBtn.onclick = () => {
		  window.scrollTo({ 
		    top: document.body.scrollHeight, // <- 페이지 총 Height
		    behavior: "smooth" 
		  });
		};
		
		var smallcal_brand = null;
		var smallprice_brand = null;
		function SearchManyBrand(CBL) {
			$.ajax({
				url : 'ManyBrand',
				type : 'post',
				data:{
					'Brands' : CBL
				},
				success : function(res) {
					console.log("ManyBrandAjax성공!");
					console.log(res);
					ManyBrandChart(res)
					var min_calories = res[0].calories;
					var min_price = res[0].menu_price;
					console.log(min_calories);
					var finalNum = 0;
					var priceNum = 0;
					for (var i = 0; i < res.length; i++) {
						if(res[i].calories < min_calories){
							console.log(res[i].calories);
							min_calories = res[i].calories;
							finalNum = i;
						}
						if(res[i].menu_price < min_price){
							min_price = res[i].min_price;
							priceNum = i;
						}
					}
					console.log(res[finalNum].brand_name);
					console.log(res[priceNum].brand_name);
					smallcal_brand = res[finalNum];
					smallprice_brand = res[priceNum];
					makingChart(res[finalNum]);
				},
				error: function(){
					alert("실패..");
				}
			})
		}
		// 브랜드 비교할 목적 선택시
	    function calories_click() {
	    	makingChart(smallcal_brand);
	    }
		function price_click(){
			makingChart(smallprice_brand);
		}
		function ManyBrandChart(result) {
			document.getElementById("Brand_Chart1").innerHTML = '<canvas id="myChart" style="height: 500px; width: 500px"></canvas>'
			document.getElementById("Brand_Select").innerHTML = 
				'<button id="calories_select" style="background-color: #FFD280; padding: 10px 20px !important; border-radius: 5px; border: none; cursor: pointer;" onclick="calories_click()">칼로리 제일 적은 브랜드</button><br><br><button id="price_select" style="background-color: #FFD280; padding: 10px 20px !important; border-radius: 5px; border: none; cursor: pointer;" onclick="price_click()">가격 제일 적은 브랜드</button>'
			let brand_name = [];
			let brand_price = [];
			let brand_calories = [];
			let brand_protein = [];
			for (var i = 0; i < result.length; i++) {
				brand_name.push(result[i].brand_name);
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
												'rgb(25, 159, 64)'],
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
							labels : brand_name
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

	<!-- 하나만 클릭시 평균과 비교해주는  -->
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
							contentType: "application/x-www-form-urlencoded; charset=UTF-8";
							makingChart(res);
						},
						error : function(request, status, error) {
							alert("찾으시는 브랜드가 없거나 이름이 틀렸습니다!");
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
			document.getElementById("Brand_Between").innerHTML = '선택한 브랜드 : '+result.brand_name+' <br> 단백질 평균: '+result.protein+
			'g <br> 칼로리 평균 : '+result.calories+'Kcal <br> 평균 가격 : '+result.menu_price+'원'
			document.getElementById("Brand_Chart").innerHTML = '<canvas id="myChart2" style="height: 500px; width: 500px"></canvas>'
			console.log(result.brand_name);
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
							labels : [ result.brand_name, "평균" ]
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
	  $(document).ready(function(){
		  var data = '<c:out value="${SearchRes}"/>';
		  console.log(data);
		  setTimeout(function() {
			  if (data) {
				  console.log("왔니?")
				  SearchOneBrand(data);
				}
			}, 300);
	  });
	</script>

</body>
</html>