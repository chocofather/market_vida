<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table,th, td{
		border: 1px solid black;
	}
</style>
</head>
<body>
	<form action="writeQna" method="post">
		<table>
			<tr>
				<th>제목</th>
				<td>
				<input type="hidden" name="crew_no" value="2"/>
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
					<br><input type="text" name="qna_title" id="qna_title">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea name="qna_content" id="" cols="30" rows="10"></textarea>
				</td>
			</tr>
		</table>
		<input type="submit" value="문의 등록" />
	</form>
</body>
</html>