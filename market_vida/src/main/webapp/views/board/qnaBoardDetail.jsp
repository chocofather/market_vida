<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            display: inline-block;
            height: 40px;
            width: 80px;
            border-radius: 5px;
            background-color: #006f00;
            color: #fff;
            line-height: 40px;
            text-align: center;
            margin-top: 30px;
            text-decoration: none;
            font-weight: 600;
            font-size: 14px;
        }
        .link_div{
        	width: 1000px;
        	margin: 0 auto;
        }
        .link:active{
        	border: 1px solid #fff; 
        	background-color: #359F35;
        }
        .link:hover{
        	opacity: 0.8;
        }
        th,
        td {
            text-align: center;
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
        tr:nth-child(5) > tr, tr:nth-child(5) > th {
			height: 200px;
		}
</style>
</head>
<body>
<div class="container">
	<div class="title">1:1문의 내역</div>
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
		<tr class="contents">
			<th>내용</th>
			<td>${dto.qna_content }</td>
		</tr>
	</table>
	<div class="link_div">
		<a href="./qna" class="link">목록으로</a>
		<a href="./modifyQna?qna_no=${dto.qna_no }" class="link">수정</a>
		<a href="./deleteQna?qna_no=${dto.qna_no }" class="link">삭제</a>
	</div>
	</div>
</body>
</html>