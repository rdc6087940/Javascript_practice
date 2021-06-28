
$(function() {
		
		// 변수 선언 : var, let / const(변경 불가능 상수)
		
	var img = $('#intro');
	var hide_btn =$('#hideButton');
	var show_btn =$('#showButton');
	var toggle_btn =$('#toggleButton');
	
	
	
	/*hide_btn.click(function() {
		img.fadeOut(2000);
	});
	
	show_btn.click(function() {
		img.fadeIn(2000);
	});
	
	toggle_btn.click(function() {
		
		img.toggle(2000);
		
	});*/
	
	$('#celebs tr').hover(function(){
		$(this).addClass('td_mouseover');
	},function(){
		$(this).removeClass('td_mouseover');
	});
	
	
		
	})