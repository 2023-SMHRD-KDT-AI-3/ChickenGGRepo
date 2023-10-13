/**
 * 
 */

/* 슬라이드 애니메이션 JS */



//brand checkbox 목록 기능

function getCheckboxValue() {
	// 선택된 목록 가져오기
	const query = 'input[name="menuCompare"]:checked';
	const selectedEls =
		document.querySelectorAll(query);

	// 선택된 목록에서 value 찾기
	let result = '';
	selectedEls.forEach((el) => {
		result += el.value + ' ';
	});

	// 출력
	document.querySelector('#compare_list').innerText = result;
}