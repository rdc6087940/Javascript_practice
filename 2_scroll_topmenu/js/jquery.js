
$(function(){
	
	//1. // animate는 {} 가 필요
	$('#intro').animate({
		fontSize : '30px',
		padding : '20px'
	},2000)
	
	
	
	$('#navigation >ul>li').hover(function(){
		$(this).animate({ paddingLeft:'+=15px'},500);
	},function(){
		$(this).animate({ paddingLeft:'-=15px'},500);
	});
	
	// 고정 메뉴원리
	// 스크롤 이벤트는 윈도우의 영역
	$(window).scroll(function(){
		$('#navigation').css('top',$(document).scrollTop())
	})
	// 네비게이션의 top 위치를 document창(페이지 띄어져있는 창)에 맞춘다.
	
})