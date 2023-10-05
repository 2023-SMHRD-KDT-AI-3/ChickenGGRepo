// 비밀번호 확인 및 오류 메시지 표시
function checkPasswordMatch() {
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;
    var passwordMatchError = document.getElementById("passwordMatchError");

    if (confirmPassword === "") {
        passwordMatchError.innerHTML = "비밀번호를 한번 더 입력하세요.";
        passwordMatchError.style.display = "block";
        document.getElementById("signUpButton").disabled = true;
    } else if (password !== confirmPassword) {
        passwordMatchError.innerHTML = "비밀번호가 일치하지 않습니다.";
        passwordMatchError.style.display = "block";
        document.getElementById("signUpButton").disabled = true;
    } else {
        passwordMatchError.style.display = "none";
        document.getElementById("signUpButton").disabled = false;
    }
}
//비밀번호입력란 값이 변경될 때 함수 호출
document.getElementById("password").addEventListener("input", checkPasswordMatch);
document.getElementById("confirmPassword").addEventListener("input", checkPasswordMatch);
