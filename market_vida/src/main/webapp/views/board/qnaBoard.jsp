<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

        a {
            text-decoration: none;
            color: #333;
            font-weight: 600;
            font-size: 14px;
        }

        .title {
            border-bottom: 2px solid #4c4c4c;
            margin-bottom: 50px;
        }

        .title a {
            height: 50px;
            display: block;
            margin: 0 auto;
            color: black;
            font-size: 24px;
        }
        .link{
            display: inline-block;
            height: 40px;
            width: 110px;
            border-radius: 5px;
            background-color: #006f00;
            color: #fff;
            line-height: 40px;
            text-align: center;
            margin-top: 30px;
            margin-left: 100px;
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
			height: 30px;
			border: 1px solid #BDBDBD;
		}
        td {
            height: 30px;
            border-collapse: collapse;
            border: 1px solid #d9d9d9;
        }

        td:nth-child(2) {
            text-align: left;
            margin-left: 10px;
            width: 650px;
        }
        td:nth-child(1){
        	width: 50px;
        }
        td:nth-child(3),td:nth-child(4) {
			width: 150px;
        }
        td a{
        	width: 100%;
        	height:100%;
        	display: block;
        	line-height: 30px;
        }
        td a:hover {
			color: #006f00;
			background-color: #f7f7f7;
		}
</style>
</head>
<body>
	<div class="container">
		<div class="title"><a href="./qna">1:1문의 게시판</a></div>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>카테고리</th>
				<th>문의날짜</th>
			</tr>
			<c:forEach var="dto" items="${list}">
				<tr>
					<td>${dto.qna_no}</td>
					<td>
						<a href="./detail?qna_no=${dto.qna_no }">&nbsp;${dto.qna_title }</a>
					</td>
					<td>${dto.qna_category }</td>
					<td>${dto.qna_date }</td>
				</tr>
			</c:forEach>
		</table>
		<a href="./writeQna" class="link">
            1:1문의 등록
        </a>
	</div>
</body>
</html>