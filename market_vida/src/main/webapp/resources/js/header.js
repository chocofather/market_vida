$(function() {
		$('.show_category').hover(function() {
			$('.sub_menu').css('display', 'block')
			$('.sub_menu').css({
				'position' : 'sticky',
				'top' : '50px'
			})
		}, function() {
			$('.sub_menu').css('display', 'none')
		})

		$('.sub_menu').hover(function() {
			$(this).css('display', 'block')
		}, function() {
			$(this).css('display', 'none')
		})

	})
	