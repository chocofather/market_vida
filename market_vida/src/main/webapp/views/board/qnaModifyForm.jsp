<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	* {
            margin: 0;
            padding: 0;
        }

        .container {
            width: 1200px;
            margin: 0 auto;
        }

        table {
            margin-top: 30px;
            width: 1000px;
            border-spacing: 0;
            border-collapse: collapse;
            margin: 0 auto;
        }
        .title {
            border-bottom: 2px solid #4c4c4c;
            margin-bottom: 50px;
            height: 50px;
            display: block;
            margin: 0 auto;
            color: black;
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 50px;
        }
        .link{
            height: 40px;
            width: 80px;
            border-radius: 5px;
            background-color: #006f00;
            color: #fff;
            line-height: 40px;
            text-align: center;
            margin-top: 30px;
            margin-left: 100px;
            font-weight: 600;
        }
        .link:active{
        	border: 1px solid #fff; 
        	background-color: #359F35;
        }
        .link:hover{
        	opacity: 0.8;
        }
		input{
			border: 0;
		}
		textarea{
			resize: none;
			outline: none;
			border: none;
			width: 100%;
		}
		th{
			background-color: #BCDDBC;
			height: 50px;
			width: 10%;	
		}
        td {
            height: 30px;
            width: 90%;
            border-collapse: collapse;
            border: 1px solid #d9d9d9;
            text-align: left;
            padding-left: 5px;
        }
        input[type=text]{
        	width:100%;
        	height: 100%;
        	outline: none;
        }
</style>
</head>
<body>
<div class="container">
	<form action="./modifyQna" method="post">
		<div class="title">1:1문의 수정</div>
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
				<td><input type="text" name="qna_title" value="${dto.qna_title }" placeholder="제목 수정"/> </td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="qna_content" cols="80" rows="16" placeholder="내용 수정">${dto.qna_content }</textarea></td>
			</tr>
		</table>
			<input type="submit" value="수정" class="link"/>
	</form>
	</div>
</body>
</html>