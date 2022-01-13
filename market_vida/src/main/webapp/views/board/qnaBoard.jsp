<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>qnaBoard.jsp</h2>
	<table>
		<tr>
			<th>질문번호</th>
			<th>제목</th>
			<th>카테고리</th>
			<th>문의날짜</th>
		</tr>
		<c:forEach var="dto" items="${list}">
			<tr>
				<td><a href="./detail?qna_no=${dto.qna_no }">${dto.qna_no}</a></td>
				<td>${dto.qna_title }</td>
				<td>${dto.qna_category }</td>
				<td>${dto.qna_date }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="3">
				<a href="./writeQna">1:1문의 등록</a>
			</td>
		</tr>
	</table>
</body>
</html>