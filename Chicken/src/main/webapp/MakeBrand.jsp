<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.smhrd.model.Brand"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="float: right" class="chart-wrap">
	<canvas id="myChart" style="height: 490px; width: 850px"></canvas>
</div>

<script type="text/javascript">
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