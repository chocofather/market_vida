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
		th{
			background-color: #BCDDBC;
			border: 1px solid #d9d9d9;
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
        select{
        	width: 150px;
        	height: 30px;
        	outline: none;
        }
        input[type=text]{
        	width: 100%;
        	height: 100%;
        	outline: none;
        }
        textarea{
			resize: none;
			outline: none;
			border: none;
			width: 100%;
			font-size: 14px;
		}
</style>
</head>
<body>
<div class="container">
	<form action="writeQna" method="post">
	<div class="title">1:1문의 작성</div>
		<table>
			<tr>
				<th>카테고리</th>
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
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="qna_title" id="qna_title" placeholder="제목을 입력하세요">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea name="qna_content" placeholder="내용을 입력하세요" cols="80" rows="16"></textarea>
				</td>
			</tr>
		</table>
		<input type="submit" value="문의 등록" class="link"/>
	</form>
	</div>
</body>
</html>