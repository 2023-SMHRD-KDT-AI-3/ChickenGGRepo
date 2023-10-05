// 가입부분 체크

function signUpCheck(){

  let id = document.getElementById("id").value
  let password = document.getElementById("password").value
  let passwordCheck = document.getElementById("passwordCheck").value
  let check = true;

  // id확인
  if(id.includes('@')){
    let ㅑㅇId = ㅑㅇ.split('@')[0]
    let ㅑㅇServer = ㅑㅇ.split('@')[1]
    if(ㅑㅇId === "" || ㅑㅇServer === ""){
      document.getElementById("ㅑㅇError").innerHTML="이메일이 올바르지 않습니다."
      check = false
    }
    else{
      document.getElementById("ㅑㅇError").innerHTML=""
    }
  }else{
    document.getElementById("ㅑㅇError").innerHTML="이메일이 올바르지 않습니다."
    check = false
  }

  // 비밀번호 확인
  if(password !== passwordCheck){
    document.getElementById("passwordError").innerHTML=""
    document.getElementById("passwordCheckError").innerHTML="비밀번호가 동일하지 않습니다."
    check = false
  }else{
    document.getElementById("passwordError").innerHTML=""
    document.getElementById("passwordCheckError").innerHTML=""
  }

  if(password===""){
    document.getElementById("passwordError").innerHTML="비밀번호를 입력해주세요."
    check = false
  }else{
    //document.getElementById("passwordError").innerHTML=""
  }
  if(passwordCheck===""){
    document.getElementById("passwordCheckError").innerHTML="비밀번호를 다시 입력해주세요."
    check = false
  }else{
    //document.getElementById("passwordCheckError").innerHTML=""
  }


  // 지역선택 확인
  if(area === "지역을 선택하세요."){
    document.getElementById("areaError").innerHTML="지역을 선택해주세요."
    check = false
  }else{
    document.getElementById("areaError").innerHTML=""
  }

  // 성별체크확인
  if(!gender_man && !gender_woman){
    document.getElementById("genderError").innerHTML="성별을 선택해주세요."
    check = false
  }else{
    document.getElementById("genderError").innerHTML=""
  }
  
  if(check){
    document.getElementById("idError").innerHTML=""
    document.getElementById("passwordError").innerHTML=""
    document.getElementById("passwordCheckError").innerHTML=""
    document.getElementById("areaError").innerHTML=""
    document.getElementById("genderError").innerHTML=""
    
    //비동기 처리이벤트
    setTimeout(function() {
      alert("가입이 완료되었습니다.")
  },0);
  }
}