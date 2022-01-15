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
            <ul>
                <li><a href="#">고객센터</a></li>
                <li><a href="#">로그인</a></li>
                <li><a href="#">회원가입</a></li>
            </ul>
            <ul>
            	<li><a href="../mypage/myCoupon">쿠폰함</a></li>
            	<li><a href="../mypage/myMileage">적립금</a></li>
            	<c:forEach var="dto" end="0" items="${orderlist}">
            	<li><a href="../mypage/reviewDetail?crew_no=${dto.crew_no}">후기</a></li>
            	</c:forEach>
            </ul>
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
        </nav>
        <div class="sub_menu">
            <ul class="inner">
                <li><a href="#">채소</a></li>
                <li><a href="#">과일&middot;견과&middot;쌀</a></li>
                <li><a href="#">수산&middot;해산&middot;건어물</a></li>
                <li><a href="#">정육&middot;계란</a></li>
                <li><a href="#">국&middot;반찬&middot;메인요리</a></li>
                <li><a href="#">샐러드&middot;간편식</a></li>
                <li><a href="#">면&middot;양념&middot;오일</a></li>
                <li><a href="#">생수&middot;음료&middot;우유</a></li>
                <li><a href="#">간식&middot;과자&middot;떡</a></li>
                <li><a href="#">베이커리&middot;치즈&middot;델리</a></li>
                <li><a href="#">비건</a></li>
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
        <div class="sidebar">
            <div class="side_menu">
                <a href="#">상품 등록</a>
                <a href="./benefit">등급별 혜택</a>
                <a href="#">베스트 후기</a>
                <a href="#">맨 위로</a>
            </div>
            
        </div>
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