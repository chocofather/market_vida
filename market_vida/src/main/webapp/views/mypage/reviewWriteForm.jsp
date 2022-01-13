<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>후기 작성</h1>
		<div class="header">
			<div>
			<table>
				<tr>
					<th>제목</th>
					<td><input type="text" name="review_title" id="review_title" /></td>
				</tr>
				<tr>
					<th>후기작성</th>
					<td><textarea name="review_contents" id="review_contents" cols="100" rows="20"></textarea></td>
				</tr>
				<tr>
					<th>사진등록</th>
					<td><input type="file" name="review_img" id="review_img" /></td>
				</tr>
				<tr>
					<td><input type="hidden" name="goods_no" /></td>
					<td><input type="hidden" name="crew_id" /></td>
					<td><input type="hidden" name="crew_no" /></td>
					<td><input type="hidden" name="order_no" /></td>
				</tr>
			</table>
				<input type="submit" value="등록하기" />
			</div>
		</div>
	</div>
</body>
</html>