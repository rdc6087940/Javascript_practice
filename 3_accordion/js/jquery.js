$(function(){
	
	let aco = $('.accordion');
	let dt = $('.accordion > dt');
	let dd = $('.accordion > dd');
	let ctn = 0;
	aco.each(function(){
		// $(this) -> <dl>
		var allDt = $(this).find('dt');
		var allDd = $(this).find('dd');
		
		allDd.hide();
		
		// dt 요소에 손가락 커서 만들고 클릭이벤트 지정
		allDt.css("cursor","pointer").click(function(){
				$(this).next().toggle();
				
		})
	})
	
	
})