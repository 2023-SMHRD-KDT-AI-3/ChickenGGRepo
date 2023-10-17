/**
 * 
 */

/* 슬라이드 애니메이션 JS */
/* 큰 슬라이드 */
const outer = document.querySelector(".outer");
const innerGrp = document.querySelector(".inner-grp");
const inners = document.querySelectorAll(".inner");

let currentIndex = 0;

inners.forEach(inner => {
    inner.style.width = `${outer.clientWidth}px`;
    console.log(outer.clientWidth);
});

innerGrp.style.width = `${outer.clientWidth * inners.length}px`;

// Event Listener

const buttonLeft = document.querySelector(".button-left");
const buttonRight = document.querySelector(".button-right");

buttonLeft.addEventListener("click", () => {
    currentIndex--;
    currentIndex = currentIndex < 0 ? 0 : currentIndex;
    innerGrp.style.marginLeft = `-${outer.clientWidth * currentIndex}px`;
});

buttonRight.addEventListener("click", () => {
    currentIndex++;
    currentIndex =
        currentIndex >= inners.length ? inners.length - 1 : currentIndex;
    innerGrp.style.marginLeft = `-${outer.clientWidth * currentIndex}px`;
});



/* 작은 슬라이드 */
(function () { // A   
    const itemWrapperEl = document.querySelector('.BBQ'),
        leftBtnEl = document.getElementById('left-BBQ'),
        rightBtnEl = document.getElementById('right-BBQ');

    function moveSlides(direction) { // B
        const item = itemWrapperEl.querySelector('.item'),
            itemMargin = parseFloat(getComputedStyle(item).marginRight);
        itemWidth = itemMargin + item.offsetWidth + 2;

        let itemCount = Math.round(itemWrapperEl.scrollLeft / itemWidth);

        if (direction === 'left') {
            itemCount = itemCount - 1;
        } else {
            itemCount = itemCount + 1;
        }
        itemWrapperEl.scrollLeft = itemWidth * itemCount;
    }

    leftBtnEl.addEventListener("click", e => moveSlides("left")); // C
    rightBtnEl.addEventListener("click", e => moveSlides("right"));
})();

(function () { // A   
    const itemWrapperEl = document.querySelector('.BHC'),
        leftBtnEl = document.getElementById('left-BHC'),
        rightBtnEl = document.getElementById('right-BHC');

    function moveSlides(direction) { // B
        const item = itemWrapperEl.querySelector('.item'),
            itemMargin = parseFloat(getComputedStyle(item).marginRight);
        itemWidth = itemMargin + item.offsetWidth + 2;

        let itemCount = Math.round(itemWrapperEl.scrollLeft / itemWidth);

        if (direction === 'left') {
            itemCount = itemCount - 1;
        } else {
            itemCount = itemCount + 1;
        }
        itemWrapperEl.scrollLeft = itemWidth * itemCount;
    }

    leftBtnEl.addEventListener("click", e => moveSlides("left")); // C
    rightBtnEl.addEventListener("click", e => moveSlides("right"));
})();

(function () { // A   
    const itemWrapperEl = document.querySelector('.gyochon'),
        leftBtnEl = document.getElementById('left-gyochon'),
        rightBtnEl = document.getElementById('right-gyochon');

    function moveSlides(direction) { // B
        const item = itemWrapperEl.querySelector('.item'),
            itemMargin = parseFloat(getComputedStyle(item).marginRight);
        itemWidth = itemMargin + item.offsetWidth + 2;

        let itemCount = Math.round(itemWrapperEl.scrollLeft / itemWidth);

        if (direction === 'left') {
            itemCount = itemCount - 1;
        } else {
            itemCount = itemCount + 1;
        }
        itemWrapperEl.scrollLeft = itemWidth * itemCount;
    }

    leftBtnEl.addEventListener("click", e => moveSlides("left")); // C
    rightBtnEl.addEventListener("click", e => moveSlides("right"));
})();

(function () { // A   
    const itemWrapperEl = document.querySelector('.goobne'),
        leftBtnEl = document.getElementById('left-goobne'),
        rightBtnEl = document.getElementById('right-goobne');

    function moveSlides(direction) { // B
        const item = itemWrapperEl.querySelector('.item'),
            itemMargin = parseFloat(getComputedStyle(item).marginRight);
        itemWidth = itemMargin + item.offsetWidth + 2;

        let itemCount = Math.round(itemWrapperEl.scrollLeft / itemWidth);

        if (direction === 'left') {
            itemCount = itemCount - 1;
        } else {
            itemCount = itemCount + 1;
        }
        itemWrapperEl.scrollLeft = itemWidth * itemCount;
    }

    leftBtnEl.addEventListener("click", e => moveSlides("left")); // C
    rightBtnEl.addEventListener("click", e => moveSlides("right"));
})();

(function () { // A   
    const itemWrapperEl = document.querySelector('.hosigi'),
        leftBtnEl = document.getElementById('left-hosigi'),
        rightBtnEl = document.getElementById('right-hosigi');

    function moveSlides(direction) { // B
        const item = itemWrapperEl.querySelector('.item'),
            itemMargin = parseFloat(getComputedStyle(item).marginRight);
        itemWidth = itemMargin + item.offsetWidth + 2;

        let itemCount = Math.round(itemWrapperEl.scrollLeft / itemWidth);

        if (direction === 'left') {
            itemCount = itemCount - 1;
        } else {
            itemCount = itemCount + 1;
        }
        itemWrapperEl.scrollLeft = itemWidth * itemCount;
    }

    leftBtnEl.addEventListener("click", e => moveSlides("left")); // C
    rightBtnEl.addEventListener("click", e => moveSlides("right"));
})();
//brand checkbox 목록 기능

function getCheckboxValue() {
    // 선택된 목록 가져오기
    const query = 'input[name="menuCompare"]:checked';
    const selectedEls =
        document.querySelectorAll(query);

    // 선택된 목록에서 value 찾기
    let result = '';
    selectedEls.forEach((el) => {
        result += el.value + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
    });

    // 출력
    document.querySelector('#compare_list').innerHTML = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+result;
}


