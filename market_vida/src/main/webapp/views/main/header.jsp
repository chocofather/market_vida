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
	border: solid 1px black;
	margin: 5px;
	font-size: 24px;
	text-align: center;
	height: 800px;
	flex-grow: 1;
}
</style>
</head>
<body>
	<jsp:include page="./banner_form.jsp"></jsp:include>
	<main>
		<div>컨텐츠 입력란 (지우고 사용) - 이 부분 css는 바로 위에 있음</div>
	</main>
</body>
</html>