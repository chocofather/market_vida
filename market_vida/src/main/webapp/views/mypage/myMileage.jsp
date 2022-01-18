<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container {
	width: 900px;
	margin-left: 800px;
	margin-top: 200px;
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
<link rel="stylesheet" href="../resources/css/paging.css" />
</head>
<body>
	<div class="container">
		<table class="type10">
			<thead>
				<tr>
					<th scope="cols">적립일</th>
					<th scope="cols">내용</th>
					<th scope="cols">유효기간</th>
					<th scope="cols">금액</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${list }">
					<tr>
						<td>${dto.accumulate_date }</td>
						<td>${dto.point_detail }</td>
						<td>${dto.ex_period }</td>
						<td>${dto.accumulate_point }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="5">
						<nav>
							<div class="page_wrap">
								<div class="page_nation">
									<c:if test="${map.prev}">
									<a class="arrow prev" href="myCoupon?currentPage=${map.currentPage-10}"><</a>
									</c:if>
								<c:forEach var="i" begin="${map.startPageNo}"
									end="${map.endPageNo}">
									<a class="active" style="background: white; color: black;" href="myCoupon?currentPage=${i}">${i}</a>
								</c:forEach>
								<c:if test="${map.next}">
									<a class="arrow next" href="myCoupon?currentPage=${map.currentPage+10}">></a>
								</c:if>
								</div>
							</div>
						</nav>
					</td>
				</tr>
			</tbody>
		</table>

	</div>
</body>
</html>
