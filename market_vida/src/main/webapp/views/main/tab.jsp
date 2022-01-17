<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
.container {
	width: 700px;
}

.tab_title li {
	list-style: none;
	float: left;
	width: 100px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	border: 1px solid #bebebe;
}

.tab_title li a {
	width: 100%;
	height: 100%;
	display: block;
}

.tab_title li.on {
	background-color: #ffb715;
	font-weight: 600;
}

.tab_content {
	clear: both;
	border: 1px solid #dedede;
	height: 130px;
	background-color: #cecece;
}

.tab_content div {
	display: none;
	text-align: center;
}

.tab_content div.on {
	display: block;
}
</style>
<script>
$(document).ready(function () {
    $('.tab_title li').removeClass('on');
    $('.tab_title li').first().addClass('on');

    var $tablink = $('.tab_title li').click(function () {
        var idx = $tablink.index(this);
        $('.tab_title li').removeClass('on');
        $('.tab_title li').eq(idx).addClass('on');
        $('.tab_content > div').hide();
        $('.tab_content > div').eq(idx).show();
        
        
    	})
    })
    
})
</script>
</head>
<body>
	<div class="container">
		<c:forEach var="dto" items="${list}">
		<ul class="tab_title">
			<li class="on"><a href="./detail?grade=${dto.grade}">${dto.grade}</a></li>
		</ul>
		</c:forEach>
		<div class="tab_content">
			<div class="on">${dto.accual_rate}</div>
		</div>
	</div>
</body>
</html>