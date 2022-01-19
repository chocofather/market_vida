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
				<td>${dto.coupon_no }</td>
			</tr>
			<tr>
				<th>쿠폰코드</th>
				<td>${dto.coupon_code }</td>
			</tr>
			<tr>
				<th>쿠폰명</th>
				<td>${dto.coupon_name }</td>
			</tr>
			<tr>
				<th>할인률</th>
				<td>${dto.coupon_dc }</td>
			</tr>
			<tr>
				<th>쿠폰유효기간</th>
				<td>${dto.coupon_period }</td>
			</tr>
			<tr>
				<th>쿠폰설명</th>
				<td>${dto.coupon_detail }</td>
			</tr>
			<tr>
				<td colspan="6">
				<a href="couponList" class="btn">목록</a> 
				<a href="modify?coupon_no=${dto.coupon_no}" class="btn">수정</a> 
				<a href="delete?coupon_no=${dto.coupon_no}" class="btn">삭제</a>
				</td>
			</tr>
			<tr>
				<td colspan="6">
					<a href="payments?coupon_no=${dto.coupon_no}" class="btn">쿠폰지급</a>
				</td>
			</tr>
		</table>
	</div>
	</main>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>