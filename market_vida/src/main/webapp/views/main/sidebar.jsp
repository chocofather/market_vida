<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${path}/resources/css/sidebar.css" />
 <c:if test="${crew_id == 'admin' }">
        <div class="sidebar">
            <div class="side_menu">
                <a href="../admin/goodswrite">상품 등록</a>
                <a href="../main/benefit">등급별 혜택</a>
                <a href="#">베스트 후기</a>
                <a href="#">맨 위로</a>
            </div>
        </div>
                </c:if>
                <c:if test="${crew_id != 'admin' || empty crew_id }">
                <div class="sidebar">
            <div class="side_menu">
                <a href="../main/benefit">등급별 혜택</a>
                <a href="#">베스트 후기</a>
                <a href="#">맨 위로</a>
            </div>
        </div>
                </c:if>