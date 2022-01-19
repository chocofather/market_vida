<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>   
<link rel="stylesheet" href="${path}/resources/css/header?after.css" />
<body>
<header>
<c:if test="${crew_id !=null }">
            <ul>
                <li><a href="#">고객센터</a></li>
                <li><a href="../crew/logout">로그아웃</a></li>
                <li><a href="../mypage/main">${crew_id}님 환영합니다</a></li>
            </ul>
            </c:if>
            <c:if test="${empty crew_id }">
           	<ul>
                <li><a href="#">고객센터</a></li>
                <li><a href="../crew/login">로그인</a></li>
                <li><a href="#">회원가입</a></li>
            </ul>
            </c:if>
            <c:if test="${crew_id !=null }">
            <ul>
            	<c:if test="${crew_id !=admin }">
            		<li><a href="../admin/goodsQnaAdmin">상품문의</a></li>
            	</c:if>	
            	<li><a href="../mypage/myCoupon">쿠폰함</a></li>
            	<li><a href="../mypage/myMileage">적립금</a></li> 
            	<li><a href="../mypage/myReviewBefore?crew_no=1">후기</a></li> 
            </ul>
            </c:if>
	<div>
		<a href="./main">
			<img src="${path}/resources/img/title.png" alt="타이틀">
		</a>
	</div>
</header>
<nav>
	<ul>
		<li class="show_category"><a href="#">
				<i class="xi xi-bars"></i> 전체 카테고리
			</a></li>
		<li><a href="#">신상품</a></li>
		<li><a href="#">인기상품</a></li>
		<li><a href="#">타임세일</a></li>
		<li><a href="#">이벤트</a></li>
	</ul>
	<div class="search">
		<input type="text" name="" id="" placeholder="검색어를 입력해주세요"> <input type="image" src="${path}/resources/img/search.png" alt="검색">
	</div>
	<div class="location">
		<a href="#" id="loc">
			<i class="xi xi-maker xi-2x" aria-hidden="true"></i>
		</a>
	</div>
	<div class="cart">
		<a href="#">
			<i class="xi xi-cart-o xi-2x"></i>
		</a>
	</div>
</nav>
        <div class="sub_menu">
            <ul class="inner">
                <li><a href="../goods/goodsList?cat_code=100">채소</a></li>
                <li><a href="../goods/goodsList?cat_code=200">과일&middot;견과&middot;쌀</a></li>
                <li><a href="../goods/goodsList?cat_code=300">수산&middot;해산&middot;건어물</a></li>
                <li><a href="../goods/goodsList?cat_code=400">정육&middot;계란</a></li>
                <li><a href="../goods/goodsList?cat_code=500">국&middot;반찬&middot;메인요리</a></li>
                <li><a href="../goods/goodsList?cat_code=600">샐러드&middot;간편식</a></li>
                <li><a href="../goods/goodsList?cat_code=700">면&middot;양념&middot;오일</a></li>
                <li><a href="../goods/goodsList?cat_code=800">생수&middot;음료&middot;우유</a></li>
                <li><a href="../goods/goodsList?cat_code=900">간식&middot;과자&middot;떡</a></li>
                <li><a href="../goods/goodsList?cat_code=1000">베이커리&middot;치즈&middot;델리</a></li>
                <li><a href="../goods/goodsList?cat_code=1100">비건</a></li>
            </ul>
        </div>
</body>