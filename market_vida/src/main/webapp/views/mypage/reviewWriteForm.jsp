<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.top{
		border-bottom: 3px solid #006f00;
	}
	
	#review_title{
		width: 1000px;
		height: 30px;
	}
	
	#title{
		width: 500px;
		height: 50px;
	}
	
	.container{
		margin-left: 700px;
		margin-top: 200px;
	}
	
	.btn {
		width: 300px;
		height: 50px;
		margin-left: 450px;
		margin-top: 100px;
		background: #006f00;
		color: white;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="top" style="width: 1180px;">
			<h1>후기 작성</h1>
		</div>
		<form action="./reviewWrite?crew_no=${dto.crew_no }" method="post">
		<div class="header">
		<input type="hidden" name="crew_no" value="${dto.crew_no }" />
		<input type="hidden" name="goods_no" value="${dto.goods_no }" />
		<input type="hidden" name="order_no" value="${dto.order_no }" />
		<div class="table">
			<div class="title">
				<table>
					<tr>
						<th style="width: 150px; height: 55px; background:#F7F7F6; border-bottom: 1px solid black; border-top: 1px solid black;">제목:</th>
						<td style="padding: 10px; border-bottom: 1px solid black; border-top: 1px solid black;"><input type="text" name="review_title" id="review_title" placeholder="제목을 입력해주세요" /></td>
					</tr>
				</table>
			</div>
			<div class="contents">
				<table>
					<tr>
						<th style="width: 150px; height: 55px; background:#F7F7F6; border-bottom: 1px solid black; ">후기작성</th>
						<td style="padding: 10px; border-bottom: 1px solid black;"><textarea name="review_contents" id="review_contents" cols="141" rows="30" placeholder="자세한 후기는 다른 고객의 구매에 많은 도움이 되며,&#13;&#10;일반식품의 효능이나 효과 등에 오해의 소지가 있는 내용을 작성 시 검토 후 비공개 조치될 수 있습니다.&#13;&#10;반품/환불 문의는 1:1문의로 가능합니다."></textarea></td>
					</tr>
				</table>
			</div>
			<div class="imgfile">
				<table>
					<tr>
						<th style="width: 150px; height: 55px; background:#F7F7F6; border-bottom: 1px solid black; ">사진등록</th>
						<td style="padding: 10px; border-bottom: 1px solid black;"><input type="file" name="review_img" id="review_img" style="width: 1010px;"/></td>
					</tr>
				</table>
				<input type="submit" value="등록하기" class="btn" />
			</div>
		</div>
		</div>
		</form>
	</div>
</body>
</html>