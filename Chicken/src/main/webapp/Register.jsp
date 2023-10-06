<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <title>치킨 연구소 회원가입</title>
    <link rel="stylesheet" href="assets/css/Register.css">
</head>
<body>
    <!-- 왼쪽 고정된 네비게이션 바 -->
    <div class="left-navbar">
        <!-- 로고 넣는곳 -->
        <div class="navbar-logo">
            <a href="goMain"><h2>🅒🅗🅘🅒🅚🅔🅝.🅖🅖</h2></a>
        </div>
        <a href="goMain">
            <i class="fas fa-home"></i>
            홈
        </a>
        <a href="#">
            <i class="fas fa-list"></i>
            브랜드
        </a>
        <a href="#">
            <i class="fas fa-utensils"></i>
            메뉴
        </a>
        <a href="#">
            <i class="fas fa-trophy"></i>
            랭킹
        </a>
        <a href="#">
            <i class="fas fa-map-marker-alt"></i>
            지도
        </a>
        <!-- 여기에 추가 메뉴 항목을 추가할 수 있습니다. -->
    </div>

    <!-- 회원가입 양식 -->
    <form action="Register" method="post">
        <div class="wrapper">
            <div class="title">
                <h1>회원가입</h1>
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
                <label for="confirmPassword">비밀번호 확인:</label>
                <input id="confirmPassword" type="password" placeholder="비밀번호를 다시 입력하세요." required>
                <div id="passwordMatchError" class="error"></div>
            </div>
            <div class="form-group">
                <label for="nickname">닉네임:</label>
                <input id="nickname" type="text" name="nick" placeholder="닉네임을 입력하세요." required>
                <div id="nicknameError" class="error"></div>
            </div>
            <div class="form-group">
                <button id="signUpButton" disabled>가입하기</button>
            </div>
        </div>
    </form>
    
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script type="text/javascript">
    $(document).ready(function(){
    	console.log("테스트!")
		var input = $('#username')
		input.on('input', UserCheck);
	});
	// UserCheck 기능 생성
	function UserCheck(){
		// 입력된 값이 실제 DB에 들어있는 값인지 판단!
		var value= $(this).val();
		$.ajax({
			url : 'CheckUser',
			type : 'post',
			data : {'id':value},
			success : function(res){
				// 성공에대한 처리작업
				// 성공시 돌아오는 res 변수는 String 값!
				
				// p태그의 위치 찾아오기!
				var p = $('#usernameError')
				console.log(res)
				if(res == "false"){
					p.html("사용이 가능한 아이디 입니다").css("color", "green")
				}else{
					p.html("사용이 불가능한 아이디 입니다").css("color", "red")
				}
			},
			error : function(e){
				alert('통신 실패!')
			}
			
		});
	}
    </script>
    
    <script src="assets/js/Register.js"></script>
</body>
</html>
