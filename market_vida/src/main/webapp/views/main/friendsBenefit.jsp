<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/friendsBenefit.css" />
</head>
<body>
	<div class="membership">
        <div class="benefit">
            <div>
                Vida 프렌즈 혜택<br>
                <a>매월 실적에 따라 달라지는 다양한 혜택을 누려보세요</a>
            </div>
            <hr>
        </div>
        <div class="ratio">
            <div><a href="">나무7%</a></div>
            <div><a href="">가지5%</a></div>
            <div><a href="">잎새3%</a></div>
            <div><a href="">새싹1%</a></div>
            <div><a href="">씨앗0.5%</a></div>
        </div>
        <hr>
        <div class="benefit_detail">
            <div class="grade">
                <span>나무</span> <br>
                <a>전월 실적 150만원 이상</a>
            </div>
            <ul class="detail">
                <li>적립7%</li>
                <li>최대 2만원 추가혜택</li>
                <li>(깜짝 쿠폰, 적립 이벤트 등)</li>
            </ul>
            <div>총 적립금 10만원 이상</div>
        </div>
    </div>
</body>
</html>