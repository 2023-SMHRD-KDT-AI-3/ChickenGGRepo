/**
 * 
 */
//brand checkbox 목록 기능

function getCheckboxValue()  {
  // 선택된 목록 가져오기
  const query = 'input[name="brandCompare"]:checked';
  const selectedEls = 
      document.querySelectorAll(query);
  
  // 선택된 목록에서 value 찾기
  let result = '';
  selectedEls.forEach((el) => {
    result += el.value + ' ';
  });
  
  // 출력
  document.getElementById('result').innerText
    = result;
}
let compare_list = document.getElementById("compare_list")
let logobox = document.getElementsByName("brandCompare")
$("input:checkbox[name=brandCompare]:checked").each(function(){
	var checkVal = $(this).val();
	compare_list.innerHTML+=`<span>${checkVal}</span>`
})