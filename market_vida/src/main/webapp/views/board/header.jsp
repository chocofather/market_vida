<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 등록</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="${path}/resources/css/header.css" />
<script src="${path}/resources/js/header.js"></script>
<style>
	main div {
		text-align: center;
		flex-grow: 1;
	}
	
	.container {
		margin: 30px auto;
		width: 800px; 
	}
	
	#title {
		border-bottom: solid #006F00 2px;
	}
	
	table {
		margin-top: 20px;
		border-collapse: collapse;
	}
	#category-box  {
	    width: 200px;
	    height: 30px;
	}
	#title-box {
		width: 600px;
		height:30px;
	}
	
	#writer-box {
		width: 200px;
	    height: 30px;
	}
	
	#content-box {
		width: 600px;
		height: 400px;
		font-size: 15px;
	}
	
	td {
		padding: 9px;
	}
	
	.button {
		width:100px;
		height:50px;
		background: #006F00;
		color: white; 
		border: solid #006F00 1px;
		margin: 11px;
	}
	
	.button:hover {
		background: white;
		color: #006F00;
	}

	#notice-button {
		text-align: center;
	}
	
</style>
<script>
 	window.addEventListener('DOMContentLoaded',function(){
 		
		var cancel = document.getElementById("cancel");
		cancel.onclick = function(){
			if(confirm("작성을 취소하시겠습니까?")==true){
				location.href = "noticeBoard";
			}else{
				return false;
			}
		}
		
		var sub = document.getElementById("sub");
		sub.onclick = function(){
			if(!document.getElementById("title-box").value != ''){
				alert("제목을 입력하세요.");
				return;
			}else if(!document.getElementById("writer-box").value != ''){
				alert("작성자를 입력하세요.");
				return;
			}else if(!document.getElementById("content-box").value != ''){
				alert("내용을 입력하세요.");
				return;
			}else{
				document.getElementById("frm").submit();
			}
		}
		
	})
</script>
</head>
<body>
	<jsp:include page="../main/banner_form.jsp"></jsp:include>
	<main>
			<div class="container">
		<div id="title"><h2>공지 등록</h2></div>
		<form action="writeNoticeForm" method="POST" id="frm">
			<table>
				<tr>	
					<th>제목</th>
					<td>
						<input type="text" name="notice_title" id="title-box" placeholder="제목을 입력하세요." />
					</td>
				</tr>	
				<tr>
					<th>구분</th>
					<td>
						<select name="notice_category" id="category-box">
							<option value="공지" selected="selected">공지</option>
							<option value="가격인상공지">가격인상공지</option>
							<option value="가격변경공지">가격변경공지</option>
							<option value="이벤트">이벤트</option>
							<option value="마켓비다">마켓비다</option>
							<option value="배송공지">배송공지</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="crew_id" id="writer-box" placeholder="작성자" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea id="content-box" name="notice_content" row="3"></textarea></td>
				</tr>
			</table>
		</form>
		<div id="notice-button">
			<button id="sub" class="button">등록</button>
			<button id="cancel" class="button">취소</button>
		</div>	
	</div>	
	</main>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>