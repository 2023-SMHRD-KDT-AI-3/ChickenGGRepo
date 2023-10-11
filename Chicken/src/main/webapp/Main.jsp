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
<style>
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}
</style>
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
			<a href="goMain" id="navbar_logoimg"> <img src="images/하얀닭.png"
				alt="치킨 연구소 로고">
			</a>
		</div>

		<!-- 로그인 및 검색 부분 -->
		<div class="login-search">
			<form action="" method="post">
				<select name="sr">
					<option value="chi_brand" name="brand_search">브랜드</option>
					<option value="chi_menu" name="menu_search">메뉴</option>
				</select> <input type="text" class="sr-input" name="sr_input"
					placeholder="Search" autocomplete="off"> <input
					type="submit" value="검색버튼">
				<!-- 추천창 -->
				<div id="suggestion_box" class="invisible">
					<div id=suggested_items></div>
				</div>
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
							<td><input type="password" placeholder="비밀번호" name="pw">
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
		<div class="map_wrap" style="float:left">
			<div id="map"></div>

			<div id="menu_wrap" class="bg_white" style="display: none">
				<div class="option">
					<div>

					</div>
				</div>
				<hr>
				<ul id="placesList"></ul>
				<div id="pagination"></div>
			</div>
			<form onsubmit="searchPlaces(); return false;">
				키워드 : <input type="text" value="치킨집" id="keyword" size="15">
				<button type="submit">검색하기</button>
			</form>
			<div style="float: right">
				<canvas id="myChart" style="height: 490px; width: 850px"></canvas>
			</div>
		</div>
		<!-- 여기는 마이차트 부분입니다 -->
		<div id="Chart2" style="height: 490px; width: 850px"></div>
	</div>
	<!-- 검색추천, 자동완성  js문 -->
	<script src="assets/js/Main.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7e2b526848581a881e6fb021763237d6&libraries=services"></script>

	<script>
		var markers = [];
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
		        center: new kakao.maps.LatLng(35.110553, 126.877824), // 지도의 중심좌표
		        level: 3,
		        radius : 1000
		//지도의 레벨(확대, 축소 정도)
		};

		var map = new kakao.maps.Map(container, options, {useMapBounds:true}); //지도 생성 및 객체 리턴
		
		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();  

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({zIndex:1});
		var bounds = map.getBounds();
		var center = map.getCenter();
		ps.keywordSearch('치킨', placesSearchCB, {location : center}); 
		
		function searchPlaces() {

		    var keyword = document.getElementById('keyword').value;
		    var latlng = map.getCenter();
		    if (!keyword.replace(/^\s+|\s+$/g, '')) {
		        alert('키워드를 입력해주세요!');
		        return false;
		    }

		    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
		    ps.keywordSearch(keyword, placesSearchCB, {location : latlng}); 
		}
		
		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
		    if (status === kakao.maps.services.Status.OK) {
		        // 정상적으로 검색이 완료됐으면
		        // 검색 목록과 마커를 표출합니다
		        displayPlaces(data);
		        for (var i=0; i<data.length; i++ ){
		        	console.log((data[i].place_name).substr(0,3));
		        }
		        
		        
		        // 차트를 만듭니다.
		        makingChart();
		        // 페이지 번호를 표출합니다
		        displayPagination(pagination);

		    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

		        alert('검색 결과가 존재하지 않습니다.');
		        return;

		    } else if (status === kakao.maps.services.Status.ERROR) {

		        alert('검색 결과 중 오류가 발생했습니다.');
		        return;

		    }
		}

		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {

		    var listEl = document.getElementById('placesList'), 
		    menuEl = document.getElementById('menu_wrap'),
		    fragment = document.createDocumentFragment(), 
		    bounds = new kakao.maps.LatLngBounds(), 
		    listStr = '';

		    // 검색 결과 목록에 추가된 항목들을 제거합니다
		    removeAllChildNods(listEl);

		    // 지도에 표시되고 있는 마커를 제거합니다
		    removeMarker();
		    
		    for ( var i=0; i<places.length; i++ ) {

		        // 마커를 생성하고 지도에 표시합니다
		        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
		            marker = addMarker(placePosition, i), 
		            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		        // LatLngBounds 객체에 좌표를 추가합니다
		        bounds.extend(placePosition);

		        // 마커와 검색결과 항목에 mouseover 했을때
		        // 해당 장소에 인포윈도우에 장소명을 표시합니다
		        // mouseout 했을 때는 인포윈도우를 닫습니다
		        (function(marker, title) {
		            kakao.maps.event.addListener(marker, 'mouseover', function() {
		                displayInfowindow(marker, title);
		            });

		            kakao.maps.event.addListener(marker, 'mouseout', function() {
		                infowindow.close();
		            });

		            itemEl.onmouseover =  function () {
		                displayInfowindow(marker, title);
		            };

		            itemEl.onmouseout =  function () {
		                infowindow.close();
		            };
		        })(marker, places[i].place_name);

		        fragment.appendChild(itemEl);
		    }

		    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
		    listEl.appendChild(fragment);
		    menuEl.scrollTop = 0;

		    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		    map.setBounds(bounds);
		}

		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

		    var el = document.createElement('li'),
		    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
		                '<div class="info">' +
		                '   <h5 class="placeName">' + places.place_name + '</h5>';

		    if (places.road_address_name) {
		        itemStr += '    <span>' + places.road_address_name + '</span>' +
		                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
		    } else {
		        itemStr += '    <span>' +  places.address_name  + '</span>'; 
		    }
		                 
		      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
		                '</div>';           

		    el.innerHTML = itemStr;
		    el.className = 'item';

		    return el;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
		    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
		        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
		        imgOptions =  {
		            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
		            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
		            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
		        },
		        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
		            marker = new kakao.maps.Marker({
		            position: position, // 마커의 위치
		            image: markerImage 
		        });

		    marker.setMap(map); // 지도 위에 마커를 표출합니다
		    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

		    return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
		    for ( var i = 0; i < markers.length; i++ ) {
		        markers[i].setMap(null);
		    }   
		    markers = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
		    var paginationEl = document.getElementById('pagination'),
		        fragment = document.createDocumentFragment(),
		        i; 

		    // 기존에 추가된 페이지번호를 삭제합니다
		    while (paginationEl.hasChildNodes()) {
		        paginationEl.removeChild (paginationEl.lastChild);
		    }

		    for (i=1; i<=pagination.last; i++) {
		        var el = document.createElement('a');
		        el.href = "#";
		        el.innerHTML = i;

		        if (i===pagination.current) {
		            el.className = 'on';
		        } else {
		            el.onclick = (function(i) {
		                return function() {
		                    pagination.gotoPage(i);
		                }
		            })(i);
		        }

		        fragment.appendChild(el);
		    }
		    paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
		    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

		    infowindow.setContent(content);
		    infowindow.open(map, marker);
		}

		 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {   
		    while (el.hasChildNodes()) {
		        el.removeChild (el.lastChild);
		    }
		}
	</script>

	<script>
	function makingChart(){
		console.log("하고있니?");
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
	}
   </script>

</body>
</html>
