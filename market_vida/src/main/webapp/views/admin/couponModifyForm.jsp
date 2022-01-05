<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/coupon.css" />
<style>
	.container{
		margin-top: 280px;
	}
</style>
</head>
<body>
	<div class="container">
		<form action="modify" method="post">
		<input type="hidden" name="coupon_no" value="${dto.coupon_no }" />
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
					<td><input type="text" name="coupon_name" id=""
						value="${dto.coupon_name}" /></td>
				</tr>
				<tr>
					<th>할인률</th>
					<td><input type="text" name="coupon_dc" id=""
						value="${dto.coupon_dc}" /></td>
				</tr>
				<tr>
					<th>쿠폰유효기간</th>
					<td><input type="date" name="coupon_period" id=""
						value="${dto.coupon_period}" /></td>
				</tr>
				<tr>
					<th>쿠폰설명</th>
					<td><input type="text" name="coupon_detail" id=""
						value="${dto.coupon_detail}" /></td>
				</tr>
				<tr>
					<td colspan="6">
					<a href="couponList" class="btn">목록</a>
					<input type="submit" value="수정" class="btn" />
				</tr>
			</table>
		</form>
	</div>
</body>
</html>