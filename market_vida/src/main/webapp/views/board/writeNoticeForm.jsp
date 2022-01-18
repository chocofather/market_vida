<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 등록</title>
</head>
<body>
	<div class="container">
		<h1>writeForm.jsp</h1>
		<form action="writeNoticeForm" method="post">
			<div>
				<label>제목</label>
				<input type="text" name="notice_title" id="notice_title" placeholder="제목" />
			</div>
			<div>
				<label>공지</label>
				<input type="text" name="notice_category" id="notice_category" placeholder="구분" />
			</div>
			<div>
				<label>작성자</label>
				<input type="text" name="crew_id" id="crew_id" placeholder="작성자" />
			</div>
				<div>
				<label>내용</label>
				<textarea id="notice_content" name="notice_content" row="3"></textarea>
			</div>
			<div>
				<button type="submit">등록</button>
			</div>
		</form>
	</div>	
</body>
</html>