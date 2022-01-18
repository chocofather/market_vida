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
<link rel="stylesheet" href="${path}/resources/css/writeQnaAnswerForm.css" />
</head>
<body>
	<jsp:include page="../main/banner_form.jsp"></jsp:include>
	<main>
		<div class="container">
	<form action="./writeQnaAnswer" method="post">
		<div class="title">1:1문의 수정</div>
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
				<td>
					<input type="text" name="qna_category" value="${dto.qna_category }" readonly="readonly" />
					<input type="hidden" name="qna_no" value="${dto.qna_no }" />
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" id="qna_title" name="qna_title" value="${dto.qna_title }" placeholder="제목 수정" readonly="readonly"/> </td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="qna_content" cols="80" rows="16" placeholder="내용 수정" readonly="readonly">${dto.qna_content }</textarea></td>
			</tr>
		</table>
		<table>
			<tr>
				<td>
					<textarea name="qna_answer" id="qna_answer" cols="80" rows="16" placeholder="답변 입력">${dto.qna_answer}</textarea>
					<input type="hidden" name="qna_status" value="1"/>
				</td>
			</tr>
		</table>
			<input type="submit" value="답변등록" class="link"/>
	</form>
	</div>
	</main>
	<jsp:include page="../main/sidebar.jsp"></jsp:include>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>