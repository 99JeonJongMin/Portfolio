// 상단 메뉴바 - 버튼 클릭으로 해당 세션 이동
$('.nav-link').click(function (e) {
    var href = $(this).attr("href");
    var targetTop = $(href).offset().top -60 ;
    $("html").stop().animate({ scrollTop : targetTop }, 300);
    e.preventDefault();
 });
 
 // 상단 메뉴바 - 버튼 상태 업데이트 / 오프셋 값에 따라 
 function Page__updateIndicatorActive() {
    var scrollTop = $(window).scrollTop();
    $($(".section").get().reverse()).each(function (index, node) {
       var offsetTop = parseInt($(this).attr("data-offset-top"));
       if (scrollTop >= offsetTop) { 
          $(".nav-link.active").removeClass("active");
 
          var currentPageIndex = $(this).index();
 
          $(".nav-link").eq(currentPageIndex).addClass("active");
 
          $("html").attr("data-current-page-index", currentPageIndex);
 
          return false;
       }
    });
 }
 
 // 상단 메뉴바 - 버튼 상태 업데이트 / 오프셋 값 변경
 function Page__updateOffsetTop() {    
     $(".section").each(function (index, node) {
          var $page = $(node);
          var offsetTop = $page.offset().top - 60;
          $page.attr("data-offset-top", offsetTop);
     });    
     // 계산이 바뀌었으니까, 다시 상태 업데이트
     Page__updateIndicatorActive();
 }
 
 function Page__init() {
     Page__updateOffsetTop();
 }
 
 // 페이지 초기화로 상단 메뉴바 버튼 업데이트
 Page__init();
 
 // 화면이 리사이즈 할 때 마다, offsetTop을 다시계산
 $(window).resize(Page__updateOffsetTop);
 
 // 스크롤이 될 때 마다, 인디케이터의 상태를 갱신
 $(window).scroll(Page__updateIndicatorActive);
 
 // 참고 출처 : https://codepen.io/kimyangsun/pen/vYEqWee
