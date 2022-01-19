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
<link rel="stylesheet" href="${path}/resources/css/qnaModifyForm.css" />
</head>
<body>
	<jsp:include page="../main/banner_form.jsp"></jsp:include>
	<main>
		<div class="container">
	<form action="./modifyQna" method="post">
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
					<select name="qna_category">
						<option value="배송지연/불만" <c:if test="${dto.qna_category eq '배송지연/불만'}">selected</c:if>>배송지연/불만</option>
						<option value="배송문의" <c:if test="${dto.qna_category eq '배송문의'}">selected</c:if>>배송문의</option>
						<option value="반품문의" <c:if test="${dto.qna_category eq '반품문의'}">selected</c:if>>반품문의</option>
						<option value="환불문의" <c:if test="${dto.qna_category eq '환불문의'}">selected</c:if>>환불문의</option>
						<option value="주문결제문의" <c:if test="${dto.qna_category eq '주문결제문의'}">selected</c:if>>주문결제문의</option>
						<option value="회원정보문의" <c:if test="${dto.qna_category eq '회원정보문의'}">selected</c:if>>회원정보문의</option>
						<option value="교환문의" <c:if test="${dto.qna_category eq '교환문의'}">selected</c:if>>교환문의</option>
						<option value="기타문의" <c:if test="${dto.qna_category eq '기타문의'}">selected</c:if>>기타문의</option>
					</select>
					<input type="hidden" name="qna_no" value="${dto.qna_no }" />
					<input type="hidden" name="crew_no" value="${crew_no}" />
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" id="qna_title" name="qna_title" value="${dto.qna_title }" placeholder="제목 수정"/> </td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="qna_content" cols="80" rows="16" placeholder="내용 수정">${dto.qna_content }</textarea></td>
			</tr>
		</table>
			<input type="submit" value="수정" class="link"/>
	</form>
	</div>
	</main>
	<jsp:include page="../main/sidebar.jsp"></jsp:include>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>