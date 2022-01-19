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
<link rel="stylesheet" href="${path}/resources/css/writeQnaForm.css" />
</head>
<body>
	<jsp:include page="../main/banner_form.jsp"></jsp:include>
	<main>
		<div class="container">
			<form action="writeQna" method="post">
	<div class="title">1:1문의 작성</div>
		<table>
			<tr>
				<th>카테고리</th>
				<td>
					<input type="hidden" name="crew_no" value="${crew_no }"/>
					<select name="qna_category" id="qna_category">
						<option value="배송지연/불만">배송지연/불만</option>
						<option value="배송문의">배송문의</option>
						<option value="반품문의">반품문의</option>
						<option value="환불문의">환불문의</option>
						<option value="주문결제문의">주문결제문의</option>
						<option value="회원정보문의">회원정보문의</option>
						<option value="교환문의">교환문의</option>
						<option value="기타문의">기타문의</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="qna_title" id="qna_title" placeholder="제목을 입력하세요">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea name="qna_content" placeholder="내용을 입력하세요" cols="80" rows="16"></textarea>
				</td>
			</tr>
		</table>
		<input type="submit" value="문의 등록" class="link"/>
	</form>
		</div>
	</main>
	<jsp:include page="../main/sidebar.jsp"></jsp:include>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>