<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<form action="./modifyQna" method="post">
		<h2>qnaModifyForm.jsp</h2>
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
				<td>
					<select name="qna_category">
						<option value="배송지연/불만" <c:if test="${dto.qna_category eq '배송지연/불만'}">selected</c:if>>배송지연/불만</option>
						<option value="배송문의" <c:if test="${dto.qna_category eq '배송문의'}">selected</c:if>>배송문의</option>
						<option value="반품문의" <c:if test="${dto.qna_category eq '반품문의'}">selected</c:if>>반품문의</option>
						<option value="환불문의" <c:if test="${dto.qna_category eq '환불문의'}">selected</c:if>>환불문의</option>
						<option value="주문결제문의" <c:if test="${dto.qna_category eq '주문결제문의'}">selected</c:if>>주문결제문의</option>
						<option value="회원정보문의" <c:if test="${dto.qna_category eq '회원정보문의'}">selected</c:if>>회원정보문의</option>
						<option value="교환문의" <c:if test="${dto.qna_category eq '교환문의'}">selected</c:if>>교환문의</option>
						<option value="기타문의" <c:if test="${dto.qna_category eq '기타문의'}">selected</c:if>>기타문의</option>
					</select>
					<input type="hidden" name="qna_no" value="${dto.qna_no }" />
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="qna_title" value="${dto.qna_title }"/> </td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="qna_content" id="" cols="30" rows="10">${dto.qna_content }</textarea></td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="수정" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>