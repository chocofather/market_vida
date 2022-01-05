$(function () {
            $('.show_category').hover(function(){
                $('.sub_menu').css('display','block')
            },function(){
                $('.sub_menu').css('display','none')
            })

            $('.sub_menu').hover(function(){
                $(this).css('display','block')
            },function(){
                $(this).css('display','none')
            })

            // $('.inner li').hover(function(){
            //     $(this).children().css('display','block')
            // },function(){
            //     $('.inner_menu').css('display','none')
            // })

            // $('.inner_menu').hover(function(){
            //     $(this).css('display','block')
            // },function(){
            //     $(this).css('display','none')
            // })
            
        })