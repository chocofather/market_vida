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
<link rel="stylesheet" href="${path}/resources/css/friendsBenefit.css" />
<script src="${path}/resources/js/friendsBenefit.js"></script>
</head>
<body>
	<jsp:include page="./banner_form.jsp"></jsp:include>
	<main>
		<div class="membership">
        <div class="title">
                <span>Vida 프렌즈 혜택</span>
                <span>매월 실적에 따라 달라지는 다양한 혜택을 누려보세요</span>
                <span>(각 등급을 눌러 혜택을 확인해보세요)</span>
        </div>
            <hr>
        <div class="grade">
            <ul>
        <c:forEach var="dto" items="${grade }">
            	<li>${dto.grade }</li>
            </c:forEach>
            </ul>
        </div>
        <div class="detail">
        <c:forEach var="dto" items="${benefit }">
        	<div>
        		<span>${dto.grade } : 전월 실적 ${dto.pay}만원 이상</span>
        		<span>적립 : ${dto.accual_rate}%</span>
        		<span>${dto.remark}</span>
        	</div>
        	</c:forEach>
        </div>
    </div>
	</main>
	<jsp:include page="./sidebar.jsp"></jsp:include>
	<jsp:include page="./footer.jsp"></jsp:include>
</body>
</html>