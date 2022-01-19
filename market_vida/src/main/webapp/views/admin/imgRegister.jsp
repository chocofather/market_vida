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

table {
	margin: 20px;
	padding: 20px;
	margin-left: 450px;
}

.divbtn{
	width: 350px;
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
		<h1 style="margin-top: 30px;">상품이미지 등록</h1>
		<form action="imgwrite" method="post">
			<div>
				<table class="divgoods">
					<tr>
						<th>상품번호</th>
						<td><input type="text" name="goods_no" id="goods_no" /></td>
					</tr>
				</table>
				<table class="divimg">
					<tr>
						<th>이미지등록</th>
						<td><input type="file" name="img_name" id="img_name" /></td>
					</tr>
				</table>
				<table class="divmain">
					<tr>
						<th>메인이미지 여부</th>
						<td><input type="radio" name="img_status" id="img_status"
							value="0" />일반이미지 <input type="radio" name="img_status"
							id="img_status" value="1" />메인이미지</td>
					</tr>
				</table>
				<table class="divbtn">
					<tr>
						<td colspan="3">
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