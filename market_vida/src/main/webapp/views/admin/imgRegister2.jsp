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
		<h1>couponWriteForm</h1>
		<form action="imgwrite" method="post">
			<div>
				<table>
					<tr>
						<th>상품번호</th>
						<td><input type="text" name="goods_no" id="goods_no" /></td>
					</tr>
					<tr>
						<th>이미지등록</th>
						<td><input type="file" name="img_name" id="img_name" /></td>
					</tr>
					<tr>
						<th>메인이미지 여부</th>
						<td><input type="radio" name="img_status" id="img_status"
							value="0" />일반이미지 <input type="radio" name="img_status"
							id="img_status" value="1" />메인이미지</td>
					</tr>
					<tr>
						<td colspan="3">
							<button type="submit" class="btn">등록</button>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</div>
</body>
</html>