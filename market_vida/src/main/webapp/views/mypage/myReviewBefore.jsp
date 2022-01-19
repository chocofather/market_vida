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

.review {
	flex-direction: column;
}

img {
	width: 150px;
}

.container {
	margin: 20px;
	padding: 10px;
	/* margin-left: 500px; */
	margin-top: 30px;
}

.review {
	/* width: 1600px; */
	margin: 30px;
	border: 1px solid rgba(0, 0, 0, .2);
}

.cell {
	width: 350px;
}

.btn {
	text-decoration: none;
	font-size: 15px;
	color: white;
	padding: 5px 10px 5px 10px;
	margin: 20px;
	display: inline-block;
	border-radius: 10px;
	transition: all 0.1s;
	text-shadow: 0px -2px rgba(0, 0, 0, 0.44);
	margin-left: 100px;
	width: 100px;
}

.btn:active {
	transform: translateY(3px);
}

.btn {
	background-color: #006f00;
	border-bottom: 5px solid #006f00;
}

.btn:active {
	border-bottom: 2px solid white;
}

td {
	width: 450px;
}

.topbtn {
	text-decoration: none;
	font-size: 20px;
	color: white;
	padding: 5px 10px 5px 10px;
	display: inline-block;
	transition: all 0.1s;
	text-shadow: 0px -2px rgba(0, 0, 0, 0.44);
	background-color: #006f00;
	border-bottom: 5px solid #006f00;
	 width: 520px; 
	text-align: center;
	float: left;
	height: 30px;
}

.topbtn:active {
	transform: translateY(3px);
}

.topbtn:active {
	border-bottom: 2px solid white;
}

.topmenu {
	margin-bottom: 100px;
}
</style>
</head>
<body>
	<jsp:include page="../main/banner_form.jsp"></jsp:include>
	<main>
			<div class="container">
		<c:forEach var="dto" end="0" items="${relist}">
		<div class="topmenu">
			<a href="" class="topbtn" style="margin-left: 30px;">작성가능후기</a> <a
				href="myReviewAfter?crew_no=${dto.crew_no}" class="topbtn"
				style="border-left: 2px solid white;">작성완료후기</a>
		</div>
		 </c:forEach>
		<c:forEach var="dto" items="${list}">
			<div class="review">
				<table>
					<tr>
						<th><img src="${dto.img_name}" alt="" /></th>
						<th class="cell">${dto.goods_name }</th>
						<th class="cell">${dto.order_qty}개구매</th>
						<th class="cell">${dto.payment_date}주문완료</th>
						<th class="btntd">
						<a href="reviewWrite?crew_no=${dto.crew_no}&&goods_no=${dto.goods_no}&&order_no=${dto.order_no}" class="btn">후기쓰기</a></th>
					</tr>
				</table>
			</div>
			<div></div>
		</c:forEach>
	</div>
	</main>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>