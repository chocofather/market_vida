<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.review {
	flex-direction: column;
}

img {
	width: 150px;
}

.container {
	margin: 20px;
	padding: 10px;
}

.review {
	width: 1600px;
	margin: 30px;
	border: 1px solid rgba(0, 0, 0, .2);
}

.cell{
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
}

.btn:active {
	transform: translateY(3px);
}

.btn {
	background-color: #000000;
	border-bottom: 5px solid #000000;
}

.btn:active {
	border-bottom: 2px solid #000000;
}

td{
	width: 450px;
}
</style>
</head>
<body>
	<div class="container">
		<c:forEach var="dto" items="${list}">
			<div class="review">
				<table>
					<tr>
						<th><img src="${dto.img_name}" alt="" /></th>
						<th class="cell">${dto.goods_name }</th>
						<th class="cell">${dto.order_qty}개 구매</th>
						<th class="cell">${dto.payment_date}주문완료</th>
						<th class="btntd"><a href="reviewWrite" class="btn">후기쓰기</a></th>
					</tr>
				</table>
			</div>
			<div></div>
		</c:forEach>
	</div>


</body>
</html>