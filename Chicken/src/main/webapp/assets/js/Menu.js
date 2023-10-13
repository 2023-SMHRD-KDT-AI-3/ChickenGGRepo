/**
 * 
 */

/* 슬라이드 애니메이션 JS */
var slideIndex = 1; // 초기 슬라이드 인덱스를 1로 설정

// 초기 슬라이드 표시
showSlides(slideIndex);

// 이전 또는 다음 슬라이드로 이동하는 함수
function plusSlides(n) {
    showSlides(slideIndex += n);
}

function showSlides(n) {
    var slides = document.getElementsByClassName("mySlides");
    var i;

    // 슬라이드 인덱스가 범위를 벗어나면 처음 슬라이드로 돌아감
    if (n > slides.length) {
        slideIndex = 1;
    }
    if (n < 1) {
        slideIndex = slides.length;
    }

    // 모든 슬라이드를 숨김
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }

    // 현재 슬라이드 그룹을 보이게 함
    for (i = slideIndex - 1; i < slideIndex + 2; i++) {
        if (i >= slides.length) {
            break;
        }
        slides[i].style.display = "block";
    }
}



//brand checkbox 목록 기능

function getCheckboxValue() {
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
	document.querySelector('#compare_list').innerText = result;
}