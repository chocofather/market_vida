<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${path}/resources/css/header.css" />
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
				<li><a href="../crew/join">회원가입</a></li>
			</ul>
		</c:if>
		<c:if test="${crew_id !=null }">
			<ul>
				<li><a href="../mypage/myCoupon">쿠폰함</a></li>
				<li><a href="../mypage/myMileage">적립금</a></li>
				<li><a href="../mypage/myReviewBefore?crew_no=1">후기</a></li>
			</ul>
		</c:if>
		<div>
			<a href="../main/main">
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
		<div class="wishList">
			<a href="#">
				<i class="xi-heart-o xi-2x"></i>
			</a>
		</div>
	</nav>
	<div class="sub_menu">
		<ul class="inner">
			<c:forEach var="mainCode" items="${mainCode }">
				<li><a href="../goods/goodsList?cat_code=${ mainCode.main_cat_code}">${mainCode.main_cat_name }</a></li>
			</c:forEach>
		</ul>
	</div>
</body>