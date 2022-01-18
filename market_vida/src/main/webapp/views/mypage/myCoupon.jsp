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
table.type10 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	margin: 20px 10px;
}

table.type10 thead th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #006F00;
	margin: 20px 10px;
}

table.type10 tbody th {
	width: 150px;
	padding: 10px;
	border-bottom: 1px solid;
}

table.type10 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid;
}
</style>
</head>
<body>
	<jsp:include page="../main/banner_form.jsp"></jsp:include>
	<main>
		<div class="container">
		<table class="type10">
			<thead>
				<tr>
					<th scope="cols">쿠폰명</th>
					<th scope="cols">쿠폰번호</th>
					<th scope="cols">할인</th>
					<th scope="cols">쿠폰설명</th>
					<th scope="cols">사용가능기간</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${list }">
					<tr>
						<td>${dto.coupon_name }</td>
						<td>${dto.coupon_code }</td>
						<td>${dto.coupon_dc }</td>
						<td>${dto.coupon_detail }</td>
						<td>${dto.coupon_period }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="5">
						<nav>
							<ul id="page-ul">
								<c:if test="${map.prev}">
									<li class="page-item">
										<a href="myCoupon?currentPage=${map.currentPage-10}">Previous</a></li>
								</c:if>
								<c:forEach var="i" begin="${map.startPageNo}"
									end="${map.endPageNo}">
									<li><a href="myCoupon?currentPage=${i}">${i}</a></li>
								</c:forEach>
								<c:if test="${map.next}">
									<li class="page-item">
										<a href="myCoupon?currentPage=${map.currentPage+10}">Next</a></li>
								</c:if>
							</ul>
						</nav>
					</td>
				</tr>
			</tbody>
		</table>

	</div>
	</main>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>