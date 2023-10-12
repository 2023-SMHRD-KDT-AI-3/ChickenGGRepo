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
		var items = ['비비큐', 'bbq', 'bhc' , '교촌' , '굽네' , '호식이두마리치킨', '자담치킨', '아주커치킨', '멕시카나치킨', '치킨플러스'];

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
