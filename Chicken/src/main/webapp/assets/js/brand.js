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
    result += el.value + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
  });
  
  // 출력
  document.querySelector('#compare_list').innerHTML ='선택한 브랜드 >>&nbsp;&nbsp;&nbsp; ' +  result;
}


