<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="${path}/resources/css/header.css" />
<script src="${path}/resources/js/header.js"></script>
<style>
main div {
	text-align: center;
	flex-grow: 1;
}

table {
	margin: 10px;
	margin-left: 450px;
	margin-top: 30px;
}

.container {
	margin-top: 30px;
	margin-bottom: 20px;
}

td {
	height: 30px;
}


input[type="text"], input[type="date"] {
	padding: 5px 30px;
}

.btn {
	text-decoration: none;
	font-size: 20px;
	color: white;
	padding: 5px 10px 5px 10px;
	margin: 20px;
	display: inline-block;
	border-radius: 10px;
	transition: all 0.1s;
	text-shadow: 0px -2px rgba(0, 0, 0, 0.44);
}

.btn:active {
	transform: translateY(3px);
}

.btn {
	background-color: #006f00;
	border-bottom: 5px solid #006f00;
}

.btn:active {
	border-bottom: 2px solid #006f00;
}

</style>
</head>
<body>
	<jsp:include page="../main/banner_form.jsp"></jsp:include>
	<main>
		<div class="container">
			<h1>쿠폰등록</h1>
			<form action="write" method="post">
				<div>
					<table>
						<tr>
							<th>쿠폰코드</th>
							<td><input type="text" name="coupon_code" id="coupon_code"
								maxlength="12" /></td>
						</tr>
						<tr>
							<th>쿠폰명</th>
							<td><input type="text" name="coupon_name" id="coupon_name" /></td>
						</tr>
						<tr>
							<th>할인률</th>
							<td><input type="text" name="coupon_dc" id="coupon_dc"
								maxlength="2" /></td>
						</tr>
						<tr>
							<th>유효기간</th>
							<td><input type="date" name="coupon_period"
								id="coupon_period" /></td>
						</tr>
						<tr>
							<th>쿠폰설명</th>
							<td><input type="text" name="coupon_detail"
								id="coupon_detail" /></td>
						</tr>
						<tr>
							<td colspan="6">
								<button type="submit" class="btn">등록</button>
								<button type="button" class="btn" onclick="location.href='./couponList'">목록</button>
							</td>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</main>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>