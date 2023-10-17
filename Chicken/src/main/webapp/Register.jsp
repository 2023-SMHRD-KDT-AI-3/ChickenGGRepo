<%@ page language="java" contentType="text/html; charset=UTF-8"
   isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://kit.fontawesome.com/3a115195d8.js"
   crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<title>치킨 연구소 회원가입</title>
<link rel="stylesheet" href="assets/css/Register.css">
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
         <a href="goMain"><h2
               style="font-size: 30px; ' font-family: 'Giants-Inline'">CHICKEN.GG</h2></a>
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
         <a href="goMain" id="navbar_logoimg"><img width="100px"
            src="images/하얀닭.png" alt="치킨 연구소 로고"></a>
      </div>



   </nav>

   <!-- 회원가입 양식 -->
   <form action="Register" method="post">
      <div class="wrapper">
         <div class="title">
            <h1>회원가입</h1>
         </div>
         <div class="form-group">
            <label for="username">아이디:</label> <input id="username" type="text"
               name="id" placeholder="아이디를 입력하세요." required>
            <div id="usernameError"></div>
         </div>
         <div class="form-group">
            <label for="password">비밀번호:</label> <input id="password"
               type="password" name="pw" placeholder="비밀번호를 입력하세요." required>
         </div>
         <div class="form-group">
            <label for="confirmPassword">비밀번호 확인:</label> <input
               id="confirmPassword" type="password" placeholder="비밀번호를 다시 입력하세요."
               required>
            <div id="passwordMatchError" class="error"></div>
         </div>
         <div class="form-group">
            <label for="nickname">닉네임:</label> <input id="nickname" type="text"
               name="nick" placeholder="닉네임을 입력하세요." required>
            <div id="nicknameError" class="error"></div>
         </div>
         <div class="form-group">
            <button id="signUpButton" disabled>가입하기</button>
         </div>
      </div>
   </form>

   <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
   <script type="text/javascript">
      $(document).ready(function() {
         console.log("테스트!")
         var input = $('#username')
         input.on('input', UserCheck);
      });
      // UserCheck 기능 생성
      function UserCheck() {
         // 입력된 값이 실제 DB에 들어있는 값인지 판단!
         var value = $(this).val();
         $.ajax({
            url : 'CheckUser',
            type : 'post',
            data : {
               'id' : value
            },
            success : function(res) {
               // 성공에대한 처리작업
               // 성공시 돌아오는 res 변수는 String 값!

               // p태그의 위치 찾아오기!
               var p = $('#usernameError')
               console.log(res)
               if (res == "false") {
                  p.html("사용이 가능한 아이디 입니다").css("color", "green")
               } else {
                  p.html("사용이 불가능한 아이디 입니다").css("color", "red")
               }
            },
            error : function(e) {
               alert('통신 실패!')
            }

         });
      }
   </script>

   <script src="assets/js/Register.js"></script>
</body>
</html>