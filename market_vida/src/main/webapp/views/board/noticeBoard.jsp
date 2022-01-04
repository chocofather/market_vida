<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
	<h2>공지사항</h2>
	<div class="container">
		<table>
			<tr>
				<th>번호</th>
				<th>구분</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<c:forEach var="dto" items="${list}">
				<tr>
					<td>${dto.noticeNo}</td>
					<td>${dto.noticeCategory}</td>
					<td>${dto.crewId}</td>
					<td><a href="detail?bno=${dto.noticeNo}">${dto.noticeTitle}</a></td>
					<td>${dto.noticeDate}</td>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>