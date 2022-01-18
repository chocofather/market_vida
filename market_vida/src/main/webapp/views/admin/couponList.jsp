<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>couponList</title>
<link rel="stylesheet" href="../resources/css/coupon.css" />
</head>
<body>
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
</body>
</html>