<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="${path}/resources/css/header.css" />
<script src="${path}/resources/js/header.js"></script>
<style>
main div {
	text-align: center;
	flex-grow: 1;
}
       ul,li{
            list-style: none;
        }
        .grade ul{
        	display: flex;
        	justify-content: space-evenly;
            height: 50px;
            align-items: center;
            padding: 0;
        }
        .grade ul li{
            width: 100px;
            height: 100%;
            cursor: pointer;
            text-align: center;
            line-height: 50px;
            border-radius: 10px;
        }
        .grade ul li:nth-child(1){
            border: 1px solid #006f00;
        }
        .grade ul li:nth-child(2){
            border: 1px solid #309330;
        }
        .grade ul li:nth-child(3){
            border: 1px solid #69C369;
        }
        .grade ul li:nth-child(4){
            border: 1px solid #8FD88F;
        }
        .grade ul li:nth-child(5){
            border: 1px solid #BBF2BB;
        }
        .grade ul li.on{
            background-color: #006f00;
            transition: background-color .3s ease-in-out;
            color: #fff;
        }
        .membership .detail div{
            height: 300px;
            margin: 0 auto;
            margin-top: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            display: none;
            width: 800px;
            border: 1px solid #006f00;
        }
        .membership .detail span{
            text-align: center;
            margin: 10px;
            font-size: 24px;
        }
        .membership .detail div.on{
            display: flex;
            transition: color .3s ease-in-out;
            transition: background-color .3s ease-in-out;
        }
        .membership .title{
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 100px;
        }
        .membership .title span:nth-child(1){
            font-weight: 600;
            font-size: 30px;
            margin-bottom: 20px;
        }
        .membership .title span:nth-child(2){
            font-size: 16px;
            margin-bottom: 20px;
            color: #4c4c4c;
        }
        .grade ul li.on:nth-child(1){
            background-color: #006f00;
        }
        .grade ul li.on:nth-child(2){
            background-color: #309330;
        }
        .grade ul li.on:nth-child(3){
            background-color: #69C369;
        }
        .grade ul li.on:nth-child(4){
            background-color: #8FD88F;
        }
        .grade ul li.on:nth-child(5){
            background-color: #BBF2BB;
        }
        .membership .detail div.on:nth-child(1), .membership .detail div {
            color: #006f00;
            border: 1px solid #006f00;
        }
        .membership .detail div.on:nth-child(2), .membership .detail div{
            color: #309330;
            border: 1px solid #309330;
        }
        .membership .detail div.on:nth-child(3), .membership .detail div.on:nth-child(4), .membership .detail div.on:nth-child(5), .membership .detail div {
            color: #69C369;
            border: 1px solid #69C369;
        }
        hr{
            width: 800px;
            margin: 0 auto;
            margin-bottom: 70px;
        }
        .membership .detail div.on:nth-child(1) span:nth-child(2){
            background-color: #006f00;
            color: #fff;
        }
        .membership .detail div.on:nth-child(2) span:nth-child(2){
            background-color: #309330;
            color: #fff;
        }
        .membership .detail div.on:nth-child(3) span:nth-child(2){
            background-color: #69C369;
            color: #fff;
        }
        .membership .detail div.on:nth-child(4) span:nth-child(2){
            background-color: #8FD88F;
            color: #fff;
        }
        .membership .detail div.on:nth-child(5) span:nth-child(2){
            background-color: #BBF2BB;
            color: #fff;
        }
</style>
<script>
$(document).ready(function(){
    $('.grade ul li').click(function(){
        var idx = $(this).index();
        $('.grade ul li').removeClass('on');
        $('.grade ul li').eq(idx).addClass('on');
        $('.membership .detail > div').removeClass('on');
        $('.membership .detail > div').eq(idx).addClass('on');
    })
})
</script>
</head>
<body>
	<jsp:include page="./banner_form.jsp"></jsp:include>
	<main>
		<div class="membership">
        <div class="title">
                <span>Vida 프렌즈 혜택</span>
                <span>매월 실적에 따라 달라지는 다양한 혜택을 누려보세요</span>
        </div>
            <hr>
        <div class="grade">
            <ul>
            	<li class="on">나무</li>
            	<li>가지</li>
            	<li>잎새</li>
            	<li>새싹</li>
            	<li>씨앗</li>
            </ul>
        </div>
        <div class="detail">
        	<div class="on">
        		<span>나무 : 전월 실적 100만원 이상</span>
        		<span>적립7%</span>
        		<span>최대 2만원 추가혜택(깜짝 쿠폰, 적립 이벤트 등)</span>
        	</div>
        	<div>
        		<span>가지 : 전월 실적 50만원 이상</span>
        		<span>적립5%</span>
        		<span>최대 1만원 추가혜택(깜짝 쿠폰, 적립 이벤트 등)</span>
        	</div>
        	<div>
        		<span>잎새 : 전월 실적 30만원 이상</span>
        		<span>적립3%</span>
        		<span>최대 5천원 추가혜택(깜짝 쿠폰, 적립 이벤트 등)</span>
        	</div>
        	<div>
        		<span>새싹 : 전월 실적 15만원 이상</span>
        		<span>적립1%</span>
        	</div>
        	<div>
        		<span>씨앗 : 전월 실적 15만원 미만</span>
        		<span>적립0.5%</span>
        	</div>
        </div>
    </div>
	</main>
	<jsp:include page="./sidebar.jsp"></jsp:include>
	<jsp:include page="./footer.jsp"></jsp:include>
</body>
</html>