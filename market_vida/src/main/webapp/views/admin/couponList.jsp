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
</style>
<link rel="stylesheet" href="../resources/css/coupon.css?after2" />
</head>
<body>
	<jsp:include page="../main/banner_form.jsp"></jsp:include>
	<main>
		<div class="container">
		<table>
			<caption style="font-size: 30px; margin-bottom: 10px;">CouponList</caption>
			<tr>
				<th>쿠폰번호</th>
				<th>쿠폰코드</th>
				<th>쿠폰명</th>
				<th>할인률</th>
				<th>쿠폰유효기간</th>
				<th>쿠폰설명</th>
			</tr>
			<c:forEach var="dto" items="${list}">
				<tr>
					<td>${dto.coupon_no }</td>
					<td>${dto.coupon_code }</td>
					<td><a href="detail?coupon_no=${dto.coupon_no}">${dto.coupon_name }</a></td>
					<td>${dto.coupon_dc }</td>
					<td>${dto.coupon_period }</td>
					<td>${dto.coupon_detail }</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="6"><a href="write" class="btn">쿠폰등록</a></td>
			</tr>
		</table>
	</div>
	</main>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>