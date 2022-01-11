<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" href="${path}/resources/css/sidebar.css" />
<div class="sidebar">
        <div class="side_menu">
            <a href="#">상품 등록</a>
            <a href="./benefit">등급별 혜택</a>
            <a href="#">베스트 후기</a>
        </div>
        <div class="side_recent">
            최근 본 상품
            <div class="list_goods">
                <ul class="recentViewdItemList"></ul>
            </div>
        </div>
    </div>



