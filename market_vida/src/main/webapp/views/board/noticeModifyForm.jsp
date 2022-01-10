<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 수정</title>
</head>
<body>
	<div class="container">
		<h1>공지 수정</h1>
		<form action="modify" method="post">
			<table>
				<tr>
					<th>게시물 번호</th>
					<td>${dto.notice_no}</td>
					<input type="hidden" name="notice_no" value="${dto.notice_no}" />
					<th>구분</th>
					<td><input type="text" name="notice_category" id="" value="${dto.notice_category}" /></td>

				</tr>
				<tr>
					<th>제목</th>
					<td colspan="3"><input type="text" name="notice_title" id="" value="${dto.notice_title}"/></td>
				</tr>
				<tr>	
					<th>작성자</th>
					<td><input type="text" name="crew_id" id="" value="${dto.crew_id}" /></td>
					<th>작성일</th>
					<td>${dto.notice_date}</td>
				</tr>
				<tr>	
					<th>내용</th>
					<td colspan="3"><textarea name="notice_content" cols="80" rows="10">${dto.notice_content}</textarea></td>
				</tr>
				<tr>
					<td colspan="4">
						<a href="noticeBoard">목록</a>
						<button type="submit">수정</button>
					</td>
				</tr>
			</table>
		</form>
	</div>	
</body>
</html>