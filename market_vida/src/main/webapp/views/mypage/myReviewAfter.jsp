<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="${path}/resources/css/header.css" />
<script src="${path}/resources/js/header.js"></script>
<script>
	$(function() {
		$("#accordion").accordion();
	});
</script>
<style>
main div {
	text-align: center;
	flex-grow: 1;
}

.top {
	background: #006f00;
	color: white;
	text-align: left;
}

img {
	width: 150px;
	margin-right: 50px;
}

 .text {
	width: 550px; 
	height: 150px;
	/* float: left; */
	text-align: left;
}

.date {
	width: 200px;
	float: left;
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
	margin-left: 0px;
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
	 width: 570px;
	text-align: center;
	/* float: left; */
	height: 30px;
}

.topbtn:active {
	transform: translateY(3px);
}

.topbtn:active {
	border-bottom: 2px solid white;
}

.topmenu {
	margin-top: 30px; 
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<jsp:include page="../main/banner_form.jsp"></jsp:include>
	<main>
		<div class="container">
		<c:forEach var="dto" end="0" items="${relist}">
			<div class="topmenu">
				<a href="myReviewBefore?crew_no=${dto.crew_no }" class="topbtn"
					style="/* margin-left: 500px; */">작성가능후기</a> <a href="" class="topbtn"
					style="border-left: 2px solid white;">작성완료후기</a>
			</div>
		</c:forEach>
		<div id="accordion" style="/* width: 1600px; margin-left: 500px; margin-top: 30px; */">
			<c:forEach var="dto" items="${reviewlist}">
				<h3 class="top">${dto.review_title }</h3>
				<div>
					<table>
						<tr>
							<th><img src="../resources/img/${dto.review_img}" alt="" /></th>
							<th class="text">${dto.review_contents}</th>
							<th class="date">${dto.review_date}작성</th>
							<td colspan="2"><a
								href="./reviewModify?review_no=${dto.review_no }&&crew_no=${dto.crew_no}"
								class="btn" style="color: white;">수정</a> <a
								href="./reviewDelete?review_no=${dto.review_no }&&crew_no=${dto.crew_no}"
								class="btn" style="color: white;">삭제</a></td>
						</tr>
					</table>
				</div>
			</c:forEach>
		</div>
		</div>
	</main>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>