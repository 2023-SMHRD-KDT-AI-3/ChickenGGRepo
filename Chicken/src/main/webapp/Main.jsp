<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.smhrd.model.Brand"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<title>치킨 연구소</title>
<link rel="stylesheet" href="assets/css/main.css"></link>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<!-- 왼쪽 고정된 네비게이션 바 -->
	<div class="left-navbar">
		<!-- 로고 넣는곳 -->
		<div class="navbar-logo">
			<a href="goMain"><h2>🅒🅗🅘🅒🅚🅔🅝.🅖🅖</h2></a>
		</div>
		<a href="goMain"> <i class="fas fa-home"></i> 홈
		</a> <a href="Brand.jsp"> <i class="fas fa-list"></i> 브랜드
		</a> <a href="#"> <i class="fas fa-utensils"></i> 메뉴
		</a> <a href="MyPage.jsp"> <i class="fas fa-trophy"></i> 마이페이지
		</a>
		<!-- 여기에 추가 메뉴 항목을 추가할 수 있습니다. -->
	</div>

	<!-- 네비게이션 바 만드는곳 -->
	<nav class="navbar">
		<!-- 로고 넣는곳 -->
		<div class="navbar-logo">
			<a href="goMain" id="navbar_logoimg">
				<img src="images/하얀닭.png"alt="치킨 연구소 로고">
			</a>
		</div>

		<!-- 로그인 및 검색 부분 -->
		<div class="login-search">
			<form action="" method="post">
				<select name="sr">
					<option value="chi_brand" name="brand_search">브랜드</option>
					<option value="chi_menu" name="menu_search">메뉴</option>
				</select> 
				<input type="text" class="sr-input" name="sr_input" placeholder="Search" autocomplete="off">
				<input type="submit" value="검색버튼">
				<!-- 추천창 -->
				<div id="suggestion_box" class="invisible">
					<div id=suggested_items></div>
				</div>
			</form>
			
			<c:if test="${empty info}">
				<form action="login" method="post" class="login-input">
					<table>
						<tr>
							<td>
								<input type="text" placeholder="아이디" name="id">
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

	<!-- 페이지 콘텐츠 -->
	<div class="content">
		<!-- 여기에 페이지 콘텐츠를 추가합니다. -->
		<div id="map" style="float: left"></div>
		<!-- 여기는 마이차트 부분입니다 -->
		<div style="float: right">
			<canvas id="myChart" style="height: 490px; width: 850px"></canvas>
		</div>
		<div id="Chart2" style="height: 490px; width: 850px">
			
		</div>
	</div>
	<!-- 검색추천, 자동완성  js문 -->
	<script src="assets/js/Main.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7e2b526848581a881e6fb021763237d6"></script>

	<script>
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center : new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
			level : 3
		//지도의 레벨(확대, 축소 정도)
		};

		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	</script>

	<script>
      const ctx = document.getElementById('myChart').getContext('2d');
      const myChart = new Chart(ctx, {
         type : 'bar',
         data : {
            labels : [ //브랜드 이름 가져와서 X축에 넣기
				<c:forEach var="brand" items="${FinalBrand}" varStatus="status">
				'${brand.brand_name}',
				</c:forEach>
            	],
            datasets : [ {
               data : [ //브랜드 이름별 평균 가격 가져와서 Y축에 넣기
   				<c:forEach var="brand" items="${FinalBrand}" varStatus="status">
				${brand.min_price},
				</c:forEach>
               ],
               backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
                     'rgba(54, 162, 235, 0.2)',
                     'rgba(255, 206, 86, 0.2)',
                     'rgba(75, 192, 192, 0.2)',
                     'rgba(153, 102, 255, 0.2)'],
               borderColor : [ 'rgba(255, 99, 132, 1)',
                     'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
                     'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)'],
               borderWidth : 1
            } ]
         },
         options : {
            scales : {
                yAxes: [
                    {
                      ticks: { // 최소값, 최대값, 틱범위
                        min: 13000,
                        max: 25000,
                        stepSize: 3000
                      }
                    }]
            	}
         		}
      });
      document.getElementById("myChart").onclick = function(evt) {
          var activePoints = myChart.getElementsAtEvent(evt);

          if(activePoints.length > 0)
          {
              var clickedElementindex = activePoints[0]["_index"];
              var label = myChart.data.labels[clickedElementindex];
              console.log("label : " + label);
          }
	  

      // 클릭시 getChart 만들기
	  makeChart2(label)
      }
      function makeChart2(label){
	      console.log(label)
	      var finallabel;
	      var finalmin;
	      var finalavg;
	      console.log(${brand[0].brand_name})
	      var arr = new Array();
		  <c:forEach var="brand" items="${FinalBrand}" varStatus="status">
		     arr.push({brand_name:"${brand.brand_name}",
		    	      min_price:"${brand.min_price}",
		    		  avg_price:"${brand.avg_price}"})
		  </c:forEach>
          for (var i = 0; i < 5; i++) {
			if(label == arr[i].brand_name){
        		finallabel = arr[i].brand_name
        		finalmin = arr[i].min_price
        		finalavg = arr[i].avg_price
        		console.log(arr[i].brand_name)
				}
			}

          document.getElementById("Chart2").innerHTML = '<canvas id="getChart" style="height: 200px; width: 450px; margin-left: 250px;"></canvas>'
              const gct = document.getElementById('getChart').getContext('2d');
              const myChart = new Chart(gct, {
                 type : 'bar',
                 data : {
                    labels : [ //브랜드 이름 가져와서 X축에 넣기
						finallabel+'최소값평균' , '치킨최소값평균' , finallabel+'평균값' , '치킨평균값'
                    	],
                    datasets : [ {
                       data : [ //브랜드 이름별 평균 가격 가져와서 Y축에 넣기
							finalmin , 15000 , finalavg , 18000
                       ],
                       backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
                             'rgba(54, 162, 235, 0.2)',
                             'rgba(255, 206, 86, 0.2)',
                             'rgba(75, 192, 192, 0.2)',
                             'rgba(153, 102, 255, 0.2)'],
                       borderColor : [ 'rgba(255, 99, 132, 1)',
                             'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
                             'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)'],
                       borderWidth : 1
                    } ]
                 },
                 options : {
                    scales : {
                        yAxes: [
                            {
                              ticks: { // 최소값, 최대값, 틱범위
                                min: 13000,
                                max: 25000,
                                stepSize: 3000
                              }
                            }]
                    	}
                 		}
              });
      }
      

   </script>

</body>
</html>
