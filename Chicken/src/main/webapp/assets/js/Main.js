/**
 * 
 */
// 연관검색어


$(function() {
	$(".sr-input").keyup(function() {

		const recommendBox = document.querySelector("#suggestion_box");

		// invisible을 지워준다.
		recommendBox.classList.remove('invisible');
		const input_name = document.getElementById(".sr-input");

		// 기존 검색 추천 데이터 지우고, 새로 넣어주기 안 그러면 계속 추가됨
		recommendBox.innerHTML = "";

		const suggestedItems = document.createElement('div')
		suggestedItems.id = "suggested_items"

		recommendBox.appendChild(suggestedItems);

		// item별 리스트
		var items = ['강백호', '박해민', '이정후', '원태인', '구자욱', '오승환'];

		// for문 돌면서 item 추가
		for (var i in items) {

			var player_content = document.createTextNode(items[i]);
			var suggestedItem = document.createElement('div')
			suggestedItem.className = "item"

			suggestedItem.addEventListener('click', function(e) {
				document.getElementById("input_text").value = this.textContent;
				recommendBox.classList.add('invisible');
			});

			suggestedItem.appendChild(player_content);
			suggestedItems.appendChild(suggestedItem);
		}

	})
})
