<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@include file="/WEB-INF/views/includes/header.jsp"
	 	 %>


    <main align="center"  style="margin-top: 100px;">
        <div class="category-container" align="center"></div>
            <div class="category-section">
                <button class="category-button all-button-nation" data-category="전체_나라">전체</button>
                <button class="category-button nation-button" data-category="한식">한식</button>
                <button class="category-button nation-button" data-category="일식">일식</button>
                <button class="category-button nation-button" data-category="중식">중식</button>
                <button class="category-button nation-button" data-category="양식">양식</button>
                <br>
                <button class="category-button all-button-time" data-category="전체_시간">전체</button>
                <button class="category-button time-button" data-category="아침">아침</button>
                <button class="category-button time-button" data-category="점심">점심</button>
                <button class="category-button time-button" data-category="저녁">저녁</button>
                <button class="category-button time-button" data-category="야식">야식</button>
            </div>
           
        </div>

        <button id="recommendButton" style="margin-bottom: 70px;">오늘은이거다!</button> <!-- 버튼 아래 공간 추가 -->

		<div id="menuContainer" style="display: none;">
		    <h2 id="recommendedMenu"></h2>
		</div>
		
		<div id="videoContainer" style="display: none;">
		    <div id="videoContent"></div>
		</div>
    </main>

    <script>
    document.addEventListener("DOMContentLoaded", function() {
        const menuData = [
            { name: '짜장면', categories: ['중식', '점심', '저녁','야식'], video: 'https://www.youtube.com/embed/v8Y_oHBFotE?si=JT7VEX_xBL2rOrkF&amp;start=179' },
            { name: '탕수육', categories: ['중식', '점심', '저녁','야식'], video: 'https://www.youtube.com/embed/xx6HdrulgPM?si=6qom9iCFl-e2XzNP&amp;start=44' },
            { name: '김치찌개', categories: ['한식', '점심', '저녁'], video: 'https://www.youtube.com/embed/fOuPsNp94hA?si=YXqgIjuaMPw-OyQ3&amp;start=93' },
            { name: '비빔밥', categories: ['한식', '점심', '저녁'], video: 'https://www.youtube.com/embed/Nx5vi905knk?si=J4H7bRJL8QB3IHDC&amp;start=123' },
            { name: '라면', categories: ['한식', '점심', '저녁','야식'], video: 'https://www.youtube.com/embed/x94_2x_-p0Q?si=934pY4affgQWJV2d&amp;start=45' },
            { name: '라멘', categories: ['일식', '점심', '저녁'], video: 'https://www.youtube.com/embed/DbkXaZTQK_k?si=ZKMW23S-Nm_yzseZ&amp;start=168' },
            { name: '토스트', categories: ['양식', '아침'], video: 'https://www.youtube.com/embed/TCDPXisHsfA?si=47yZZX7wvjmFYLb1&amp;start=204' },
            { name: '팬케이크', categories: ['양식', '아침'], video: 'https://www.youtube.com/embed/hNfcXgYNS84?si=7WIp9p9wto_KkdSs&amp;start=182' },
            { name: '스테이크', categories: ['양식', '점심','저녁'], video: 'https://www.youtube.com/embed/XX7h3z0me1s?si=Se8z3kKqgveplHRb&amp;start=265' },
        ];

        let selectedCategories = [];
        let selectedTimeCategory = null;

        // 나라별 카테고리 선택 로직
        document.querySelectorAll('.nation-button, .all-button-nation').forEach(button => {
            button.addEventListener('click', function() {
                const category = this.getAttribute('data-category');

                if (category === "전체_나라") {
                    selectedCategories = [];
                    document.querySelectorAll('.nation-button').forEach(btn => btn.classList.remove('selected'));
                    this.classList.add('selected');
                } else {
                    document.querySelector('.all-button-nation').classList.remove('selected');

                    if (this.classList.contains('selected')) {
                        this.classList.remove('selected');
                        selectedCategories = selectedCategories.filter(cat => cat !== category);
                    } else {
                        this.classList.add('selected');
                        selectedCategories.push(category);
                    }
                }
            });
        });

        // 시간별 카테고리 선택 로직
        document.querySelectorAll('.time-button, .all-button-time').forEach(button => {
            button.addEventListener('click', function() {
                const category = this.getAttribute('data-category');

                if (category === "전체_시간") {
                    selectedTimeCategory = null;
                    document.querySelectorAll('.time-button').forEach(btn => btn.classList.remove('selected'));
                    this.classList.add('selected');
                } else {
                    document.querySelector('.all-button-time').classList.remove('selected');

                    if (this.classList.contains('selected')) {
                        this.classList.remove('selected');
                        selectedTimeCategory = null;
                    } else {
                        document.querySelectorAll('.time-button').forEach(btn => btn.classList.remove('selected'));
                        this.classList.add('selected');
                        selectedTimeCategory = category;
                    }
                }
            });
        });

        // 메뉴 추천 버튼 클릭 이벤트
        document.getElementById('recommendButton').addEventListener('click', function() {
            let filteredMenus;

            if (document.querySelector('.all-button-nation').classList.contains('selected')) {
                filteredMenus = menuData;
            } else if (selectedCategories.length > 0) {
                filteredMenus = menuData.filter(menu =>
                    selectedCategories.some(cat => menu.categories.includes(cat))
                );
            } else {
                filteredMenus = menuData;
            }

            if (!document.querySelector('.all-button-time').classList.contains('selected') && selectedTimeCategory) {
                filteredMenus = filteredMenus.filter(menu => menu.categories.includes(selectedTimeCategory));
            }

            if (filteredMenus.length > 0) {
                const randomMenu = filteredMenus[Math.floor(Math.random() * filteredMenus.length)];

                document.getElementById('recommendedMenu').innerText = randomMenu.name;
                document.getElementById('menuContainer').style.display = 'block';

                const iframe = document.createElement('iframe');
                iframe.width = "560";
                iframe.height = "315";
                iframe.src = randomMenu.video;
                iframe.frameBorder = "0";
                iframe.allow = "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture";
                iframe.allowFullscreen = true;

                document.getElementById('videoContent').innerHTML = '';
                document.getElementById('videoContent').appendChild(iframe);
                document.getElementById('videoContainer').style.display = 'block';
            } else {
                alert('선택한 카테고리에 맞는 메뉴가 없습니다.');
            }
        });
    });
    
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
