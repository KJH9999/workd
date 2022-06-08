function showCategory(category) {
	const categories = ['squats', 'benchPress', 'deadLift'];
	const categoryMenu = document
						.querySelector('.ranking-menu')
						.getElementsByTagName('li');
	
	function setShowCategory(category, value) {
		const categoryDocument = document.getElementById(category);
		
		console.log(category, value);
		
		categoryDocument.style.display = (value === true ? 'flex' : 'none');
	}
	
	if(category === 'all') {
		categories.map((c, index) => {
			setShowCategory(c, true);
			categoryMenu[index].style.color = "black";
			categoryMenu[index].style.backgroundColor = 'white';
		})
		categoryMenu[categoryMenu.length - 1].style.color = "white";
		categoryMenu[categoryMenu.length - 1].style.backgroundColor = 'black';
	} else {
		categories.map((c, index) => {
			setShowCategory(c, c === category);
			if(c === category) {
				categoryMenu[index].style.color = "white";
				categoryMenu[index].style.backgroundColor = 'black';
			}
			else {
				categoryMenu[index].style.color = "black";
				categoryMenu[index].style.backgroundColor = 'white';
				categoryMenu[categoryMenu.length - 1].style.color = "black";
				categoryMenu[categoryMenu.length - 1].style.backgroundColor = 'white';
			}
		})
	}
}


function kakaoMap() {
	var container = document.getElementById('map'); // 지도를 담을 영역의 DOM 레퍼런스
	var options = { // 지도를 생성할 때 필요한 기본 옵션
		center : new kakao.maps.LatLng(37.7464345835300, 127.025271619748), // 지도의
																			// 중심좌표.
		level : 2
	// 지도의 레벨(확대, 축소 정도)
	};
	
	var map = new kakao.maps.Map(container, options); // 지도 생성 및 객체 리턴
	
	var markerPosition = new kakao.maps.LatLng(37.7464345835300, 127.025271619748);
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
		position : markerPosition
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
}
	
function makeCalendar() {
	function dateClick({dayEl, dateStr}) {
		 $('.fc-highlight').removeClass('fc-highlight');
         $(dayEl).children('div').addClass("fc-highlight");
	}
	
	document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth',
          width: '700px',
          height: '700px',
          expandRows: true,
          buttonText : {
        	  today : 'Today'
          },
          headerToolbar: {          
        	  left: 'prev,next',          
        	  center: 'title',          
        	  right: 'today'        
          },
          locale: 'ko', 
          dateClick
        });
        calendar.render();
     });
}
makeCalendar();