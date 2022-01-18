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
<link rel="stylesheet" href="${path}/resources/css/qnaBoard.css" />
</head>
<body>
	<jsp:include page="../main/banner_form.jsp"></jsp:include>
	<main>
		<div>
			<div class="title"><a href="./qna">1:1문의 게시판</a></div>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>카테고리</th>
				<th>문의날짜</th>
				<th>답변상태</th>
			</tr>
			<c:forEach var="dto" items="${list}">
				<tr>
					<td>${dto.qna_no}</td>
					<td>
						<a href="./detail?qna_no=${dto.qna_no }">&nbsp;${dto.qna_title }</a>
					</td>
					<td>${dto.qna_category }</td>
					<td>${dto.qna_date }</td>
					<c:if test="${dto.qna_status eq 0}">
					<td>답변대기</td>
					</c:if>
					<c:if test="${dto.qna_status eq 1}">
					<td style="color: #006f00; font-weight:600; font-style: italic;">답변완료</td>
					</c:if>
				</tr>
			</c:forEach>
		</table>
		<c:if test="${crew_id ne 'admin' }">
			<a href="./writeQna" class="link">1:1문의 등록</a>
		</c:if>
		</div>
	</main>
	<jsp:include page="../main/sidebar.jsp"></jsp:include>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>