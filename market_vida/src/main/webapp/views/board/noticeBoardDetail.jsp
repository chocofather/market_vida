<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
	<div class="container">
		<h1>공지 사항</h1>
		<table>
			<tr>
				<th>제목</th>
				<td colspan="3">${dto.notice_title}</td>
			</tr>
			<tr>
				<th>게시물번호</th>
				<td>${dto.notice_no}</td>
				<th>구분</th>
				<td>${dto.notice_category}</td>
			</tr>
			<tr>	
				<th>작성자</th>
				<td>${dto.crew_id}</td>
				<th>작성일</th>
				<td>${dto.notice_date}</td>
			</tr>
			<tr>	
				<th>내용</th>
				<td colspan="3">${dto.notice_content}</td>
			</tr>
			<tr>
				<td colspan="4">
				<a href="noticeBoard">목록</a>
				<a href="modify?notice_no=${dto.notice_no}">수정</a>
				<a href="delete?notice_no=${dto.notice_no}">삭제</a>
				
			</tr>
		</table>
	</div>
</body>
</html>