<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table,th,td{
		border:1px solid black;
	}
</style>
</head>
<body>
	<h2>qnaBoardDetail.jsp</h2>
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
		<tr>
			<th>내용</th>
			<td>${dto.qna_content }</td>
		</tr>
		<tr>
			<td>
				<a href="./qna">목록으로</a>
			</td>
			<td>
				<a href="./modify?qna_no=${dto.qna_no }">수정</a>
				<a href="./delete?qna_no=${dto.qna_no }">삭제</a>
			</td>
		</tr>
	</table>
</body>
</html>