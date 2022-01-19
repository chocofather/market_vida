<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>마이페이지</h2>
	<ul>
	<c:if test="${crew_id ne 'admin'}">
		<li><a href="../board/noticeBoard">공지사항</a></li>
		<li><a href="./myCoupon">쿠폰</a></li>
		<li><a href="../board/qna?crew_no=${crew_no }">1:1게시판</a></li>
		</c:if>
		<c:if test="${crew_id eq 'admin'}">
		<li><a href="../board/writeNoticeForm">공지등록</a></li>
		<li><a href="../admin/couponList">쿠폰등록</a></li>
		<li><a href="../board/qnaAnswer">1:1문의 답변</a></li>
		</c:if>
	</ul>
</body>
</html>