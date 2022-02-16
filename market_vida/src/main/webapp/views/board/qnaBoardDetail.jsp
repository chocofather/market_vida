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
<link rel="stylesheet" href="${path}/resources/css/qnaBoardDetail.css" />
</head>
<body>
	<jsp:include page="../main/banner_form.jsp"></jsp:include>
	<main>
		<div class="container">
	<div class="title">1:1문의 내역</div>
	<table>
		<tr>
			<th>질문번호</th>
			<td>${dto.qna_no }</td>
		</tr>
		<tr>
			<th>문의날짜</th>
			<td>${dto.qna_date }</td>
		</tr>
		<tr>
			<th>카테고리</th>
			<td>${dto.qna_category}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${dto.qna_title }</td>
		</tr>
		<tr class="contents">
			<th>내용</th>
			<td>${dto.qna_content }</td>
		</tr>
	</table>
	<table>
			<tr>
				<th>답변내용</th>
				<td>${dto.qna_answer }</td>
			</tr>
		</table>
	<div class="link_div">
	<c:if test="${crew_id eq 'admin' }">
		<a href="./qnaAnswer" class="link">목록으로</a>
		<c:if test="${dto.qna_answer eq null }">
		<a href="./writeQnaAnswer?qna_no=${dto.qna_no }" class="link">답변등록</a>
		</c:if>
		</c:if>
		<c:if test="${crew_id ne 'admin' }">
		<a href="./qna?crew_no=${crew_no }" class="link">목록으로</a>
		<c:if test="${dto.qna_answer eq null }">
		<a href="./modifyQna?qna_no=${dto.qna_no }" class="link">수정</a>
		<a href="./deleteQna?qna_no=${dto.qna_no }" class="link">삭제</a>
		</c:if>
		<c:if test="${dto.qna_answer ne null }">
		<a href="./deleteQna?qna_no=${dto.qna_no }" class="link">삭제</a>
		</c:if>
		</c:if>
	</div>
	</div>
	</main>
	<jsp:include page="../main/sidebar.jsp"></jsp:include>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>