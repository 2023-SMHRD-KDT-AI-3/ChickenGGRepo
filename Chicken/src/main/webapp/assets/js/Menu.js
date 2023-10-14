/**
 * 
 */

/* 슬라이드 애니메이션 JS */
let imageIndex = 0;
let position = 0;
const Big_Image_Width = 0; /*이따 설정할 이미지 크기만큼 */
const bigBtnPrevious = document.querySelector(".big-Previous");
const bigBtnNext = document.querySelector(".big-Next");
const images = document.querySelector(".images");


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