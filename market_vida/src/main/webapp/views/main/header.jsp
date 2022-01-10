<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="${path}/resources/css/header.css" />
<script src="${path}/resources/js/header.js"></script>

	<div class="container">
        <header>
            <ul>
                <li><a href="#">고객센터</a></li>
                <li><a href="#">로그인</a></li>
                <li><a href="#">회원가입</a></li>
            </ul>
            <div><a href="#"><img src="${path}/resources/img/title.png" alt="타이틀"></a></div>
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
                <li><a href="#">채소</a>
                    <ul class="inner_menu">
                        <li><a href="#">고구마&middot;감자&middot;당근</a></li>
                        <li><a href="#">시금치&middot;쌈채소&middot;나물</a></li>
                        <li><a href="#">브로콜리&middot;파프리카&middot;양배추</a></li>
                        <li><a href="#">양파&middot;대파&middot;마늘&middot;배추</a></li>
                        <li><a href="#">오이&middot;호박&middot;고추</a></li>
                    </ul>
                </li>
                <li><a href="#">과일&middot;견과&middot;쌀</a>
                    <ul class="inner_menu">
                        <li><a href="#">제철과일</a></li>
                        <li><a href="#">국산과일</a></li>
                        <li><a href="#">수입과일</a></li>
                        <li><a href="#">간편과일</a></li>
                        <li><a href="#">냉동&middot;건과일</a></li>
                    </ul>
                </li>
                <li><a href="#">수산&middot;해산&middot;건어물</a>
                    <ul class="inner_menu">
                        <li><a href="#">생선류</a></li>
                        <li><a href="#">굴비&middot;반건류</a></li>
                    </ul>
                </li>
                <li><a href="#">정육&middot;계란</a>
                    <ul class="inner_menu">
                        <li><a href="#">국내산 소고기</a></li>
                        <li><a href="#">수입산 소고기</a></li>
                        <li><a href="#">돼지고기</a></li>
                    </ul>
                </li>
                <li><a href="#">국&middot;반찬&middot;메인요리</a>
                    <ul class="inner_menu">
                        <li><a href="#">국&middot;탕&middot;찌개</a></li>
                        <li><a href="#">밑반찬</a></li>
                        <li><a href="#">김치&middot;젓갈&middot;장류</a></li>
                    </ul>
                </li>
                <li><a href="#">샐러드&middot;간편식</a>
                    <ul class="inner_menu">
                        <li><a href="#">샐러드&middot;닭가슴살</a></li>
                        <li><a href="#">도시락&middot;밥류</a></li>
                        <li><a href="#">파스타&middot;면류</a></li>
                    </ul>
                </li>
                <li><a href="#">면&middot;양념&middot;오일</a>
                    <ul class="inner_menu">
                        <li><a href="#">식초&middot;소스</a></li>
                        <li><a href="#">양념&middot;액젓</a></li>
                        <li><a href="#">소금&middot;설탕&middot;향신료</a></li>
                    </ul>
                </li>
                <li><a href="#">생수&middot;음료&middot;우유</a>
                    <ul class="inner_menu">
                        <li><a href="#">음료&middot;주스</a></li>
                        <li><a href="#">우유&middot;두유&middot;요거트</a></li>
                    </ul>
                </li>
                <li><a href="#">간식&middot;과자&middot;떡</a>
                    <ul class="inner_menu">
                        <li><a href="#">과자&middot;스낵</a></li>
                        <li><a href="#">초콜릿&middot;캔디&middot;젤리</a></li>
                    </ul>
                </li>
                <li><a href="#">베이커리&middot;치즈&middot;델리</a>
                    <ul class="inner_menu">
                        <li><a href="#">식빵&middot;빵류</a></li>
                        <li><a href="#">잼&middot;버터&middot;스프레드</a></li>
                        <li><a href="#">케이크&middot;파이</a></li>
                    </ul>
                </li>
                <li><a href="#">비건</a>
                    <ul class="inner_menu">
                        <li><a href="#">샐러드</a></li>
                        <li><a href="#">대체육</a></li>
                        <li><a href="#">간식</a></li>
                        <li><a href="#">음료</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>