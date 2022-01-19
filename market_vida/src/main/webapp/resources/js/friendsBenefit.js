$(document).ready(function(){
	$('.grade ul li').first().addClass('on');
    $('.membership .detail > div').first().addClass('on');
	
    $('.grade ul li').click(function(){
	    var idx = $(this).index();
        $('.grade ul li').removeClass('on');
        $('.grade ul li').eq(idx).addClass('on');
        $('.membership .detail > div').removeClass('on');
        $('.membership .detail > div').eq(idx).addClass('on');
    })
})