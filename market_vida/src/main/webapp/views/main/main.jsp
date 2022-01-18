<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/main.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="${path}/resources/js/main.js"></script>
</head>
<body>
<div class="container">
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
            <div><a href="./main"><img src="${path}/resources/img/title.png" alt="타이틀"></a></div>
        </header>
        <nav>
            <ul>
                <li class="show_category"><a href="#"><i class="xi xi-bars"></i> 전체 카테고리</a></li>
                <li><a href="#">신상품</a></li>
                <li><a href="#">인기상품</a></li>
                <li><a href="#">타임세일</a></li>
                <li><a href="#">이벤트</a></li>
            </ul>
            <div class="search">
                <input type="text" name="" id="" placeholder="검색어를 입력해주세요">
                <input type="image" src="${path}/resources/img/search.png" alt="검색">
            </div>
            <div class="location">
                <a href="#" id="loc"><i class="xi xi-maker xi-2x" aria-hidden="true"></i></a>
            </div>
            <div class="cart">
                <a href="#"><i class="xi xi-cart-o xi-2x"></i></a>
            </div>
            <div class="wishList">
            	<a href="#"><i class="xi-heart-o xi-2x"></i></a>
            </div>
        </nav>
        <div class="sub_menu">
            <ul class="inner">
            <c:forEach var="mainCode" items="${mainCode }">
                <li><a href="../goods/goodsList?cat_code=${ mainCode.main_cat_code}">${mainCode.main_cat_name }</a></li>
            </c:forEach>
            </ul>
        </div>
        <div class="slide">
            <ul>
              <li><a href=""><img src="${path}/resources/img/welcome.png"></a></li>
              <li><a href=""><img src="${path}/resources/img/vegan.png"></a></li>
              <li><a href=""><img src="${path}/resources/img/sale.png"></a></li>
              <li><a href=""><img src="${path}/resources/img/2022.png"></a></li>
            </ul>
        </div>
            <c:if test="${crew_id == 'admin' }">
        <div class="sidebar">
            <div class="side_menu">
                <a href="../admin/goodswrite">상품 등록</a>
                <a href="./benefit">등급별 혜택</a>
                <a href="#">베스트 후기</a>
                <a href="#">맨 위로</a>
            </div>
        </div>
                </c:if>
                <c:if test="${crew_id != 'admin' || empty crew_id }">
                <div class="sidebar">
            <div class="side_menu">
                <a href="./benefit">등급별 혜택</a>
                <a href="#">베스트 후기</a>
                <a href="#">맨 위로</a>
            </div>
        </div>
                </c:if>
            
        <main>
            <div class="post_item">
                <div class="text">
                    <a href="">신상품</a>
                </div>
                <div class="post_area">
                    <div class="post"><a href="#"><img src="${path}/resources/img/apple.jpg" alt=""></a></div>
                    <div class="post"><a href="#"><img src="${path}/resources/img/banana.jpg" alt=""></a></div>
                    <div class="post"><a href="#"><img src="${path}/resources/img/carrot.jpg" alt=""></a></div>
                    <div class="post"><a href="#"><img src="${path}/resources/img/cutting_pine.jpg" alt=""></a></div>
                </div>
                <div class="item_area">
                	<ul>
                		<li><a href="">고당도 사과</a></li>
                		<li><a href="">바나나</a></li>
                		<li><a href="">신선 당근</a></li>
                		<li><a href="">슬라이스 파인애플</a></li>
                	</ul>
                	<ul>
                		<li><span>20%</span>5,900원</li>
                		<li><span>20%</span>4,800원</li>
                		<li><span>20%</span>3,840원</li>
                		<li><span>20%</span>6,200원</li>
                	</ul>
                	<ul>
                		<li>10,000원</li>
                		<li>10,000원</li>
                		<li>10,000원</li>
                		<li>10,000원</li>
                	</ul>
                </div>
            </div>
            <div class="time">
                <div class="time_text">
                    <a href="">타임세일</a>
                    <a>오늘의 한정 특가</a>
                    <i class="xi-alarm xi-2x"></i>
                    <p>
                        <span class="t_hour"></span>
                        <span class="t_colon"></span>
                        <span class="t_min"></span>
                        <span class="t_colon"></span>
                        <span class="t_sec"></span>
                    </p>
                </div>
                <div class="time_img">
                    <a href="#"><img src="${path}/resources/img/yellow_paprika_main.jpg" alt=""></a>
                </div>
            </div>
            <div class="price">
                <p>유기농 파프리카</p>
                <span>20%</span><span>5,000원</span>
                <span>10,000원</span>
            </div>
            <div class="post_item">
                <div class="text">
                    <a href="">인기상품</a>
                </div>
                <div class="post_area">
                    <div class="post"><a href="#"><img src="${path}/resources/img/strawberry.jpg" alt=""></a></div>
                    <div class="post"><a href="#"><img src="${path}/resources/img/green_grape.jpg" alt=""></a></div>
                    <div class="post"><a href="#"><img src="${path}/resources/img/orange.jpg" alt=""></a></div>
                    <div class="post"><a href="#"><img src="${path}/resources/img/spring_onion.jpg" alt=""></a></div>
                </div>
                <div class="item_area">
                	<ul>
                		<li><a href="">딸기</a></li>
                		<li><a href="">청포도</a></li>
                		<li><a href="">오렌지</a></li>
                		<li><a href="">대파</a></li>
                	</ul>
                	<ul>
                		<li><span>20%</span>3,000원</li>
                		<li><span>20%</span>3,000원</li>
                		<li><span>20%</span>3,000원</li>
                		<li><span>20%</span>3,000원</li>
                	</ul>
                	<ul>
                		<li>10,000원</li>
                		<li>10,000원</li>
                		<li>10,000원</li>
                		<li>10,000원</li>
                	</ul>
                </div>
            </div>
        </main>
        <footer class="footer">
            <div class="menu">
                <ul>
                    <li><a href="./main">홈으로</a></li>
                    <li><a href="#">마켓정보</a></li>
                    <li><a href="#">고객센터</a></li>
                    <li><a href="#">공지사항</a></li>
                </ul>
            </div>
    
            <div class="copyright">
                <hr>
                <p id="copyright-text">&copy; MarketVida Inc. All Rights Reserved</p>
            </div>
            <div class="sns">
                <div class="sns_img">
                    <a href="https://www.facebook.com/"><img src="${path}/resources/img/facebook.png" alt="페이스북"></a>
                    <a href="https://www.instagram.com/"><img src="${path}/resources/img/insta.png"></a>
                    <a href="https://twitter.com/"><img src="${path}/resources/img/twitter.png"></a>
                </div>
            </div>
        </footer>
    </div>
</body>
</html>