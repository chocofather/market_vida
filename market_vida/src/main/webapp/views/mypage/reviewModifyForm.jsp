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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<!-- <script src="https://code.jquery.com/jquery-3.6.0.js"></script> -->
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
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
}


.text {
	/* width: 800px; */
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
/* 	margin-left: 100px; */
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

#review_title{
 width: 1000px; 
}
</style>
</head>
<body>
	<jsp:include page="../main/banner_form.jsp"></jsp:include>
	<main>
			<form action="./reviewModify?crew_no=${dto.crew_no }" method="post">
		<div id="accordion"
			style="/* width: 1600px; margin-left: 500px; margin-top: 100px; */">
			<h3 class="top">제목 수정은 아래쪽에 해주세요 </h3>
			<div>
			제목 <input type="text" name="review_title" id="review_title" value="${dto.review_title }"/>
			<input type="hidden" name="review_no" value="${dto.review_no }" />
				<p>
				<input type="file" name="review_img" id="review_img" />
				<textarea name="review_contents" id="review_contents" cols="60" rows="10" style="margin-top: 10px;">${dto.review_contents }</textarea>
				작성일 : ${dto.review_date }
				</p>
				<input type="submit" value="수정" class="btn"/>
				<input type="button" value="목록" class="btn" onclick="location.href='./myReviewAfter?crew_no=${dto.crew_no}'"/>
			</div>

		</div>
	</form>
	</main>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>