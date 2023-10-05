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
    <link rel="stylesheet" href="Register.css"></link>
    <script src="Register.js"></script>

</head>

<body>
    <div class="wrapper">
        <div class="title"><h1 style="font-size: 21px;">회원가입</h1></div>
        <div class="id">
            <input id="id" type="text" placeholder="id를 입력해 주세요.">
            <div id="idError" class="error"></div>
        </div>
        <div class="password">
            <input id="password" type="password" placeholder="비밀번호를 입력해 주세요.">
            <div id="passwordError" class="error"></div>
        </div>
        <div class="passwordCheck">
            <input id="passwordCheck" type="password" placeholder="비밀번호를 다시 입력해 주세요.">
            <div id="passwordCheckError" class="error"></div>
        </div>
        <div class="line">
            <hr>
        </div>
        <div class="signUp">
            <button id="signUpButton" disabled onclick="signUpCheck()">가입하기</button>
        </div>
    </div>

</body>

</html>