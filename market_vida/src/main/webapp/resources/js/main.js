$(function() {
	$('.show_category').hover(function() {
		$('.sub_menu').css('display', 'block')
		$('.sub_menu').css({ 'position': 'sticky', 'top': '50px' })
	}, function() {
		$('.sub_menu').css('display', 'none')
	})

	$('.sub_menu').hover(function() {
		$(this).css('display', 'block')
	}, function() {
		$(this).css('display', 'none')
	})


})
setInterval(function time() {
	var d = new Date();
	var hours = 24 - d.getHours();
	var min = 60 - d.getMinutes();
	var sec = 60 - d.getSeconds();
	if (min == '00') {
		hours = 24 - d.getHours();
	} else {
		hours = 23 - d.getHours();
	}
	if (sec == '00') {
		min = 60 - d.getMinutes();
	} else {
		min = 59 - d.getMinutes();
	}
	if ((hours + '').length == 1) {
		hours = '0' + hours;
	}
	if ((min + '').length == 1) {
		min = '0' + min;
	}
	if ((sec + '').length == 1) {
		sec = '0' + sec;
	}
	$('.time_text p').html
		('<span class="t_hour">' + hours + '</span>' +
			'<span class="t_colon">:</span>' +
			'<span class="t_min">' + min + '</span>' +
			'<span class="t_colon">:</span>' +
			'<span class="t_sec">' + sec + '</span>')
}, 1000);