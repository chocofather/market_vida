<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 수정</title>
<style>
	.container {
		margin: 0px auto;
		width: 800px; 
	}
	
	#title {
		border-bottom: solid #006F00 2px;
	}
	
	table {
		margin-top: 20px;
		border-collapse: collapse;
	}
	
	td {
		padding: 9px;
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
		
/* 		var sub = document.getElementById("modi");
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
		
	}) */
</script>
</head>
<body>
	<div class="container">
		<div id="title"><h2>공지 수정</h2></div>
		<form action="modify" method="post">
			<table>
				<tr>
					<th>제목</th>
					<td colspan="3"><input type="text" name="notice_title" id="title-box" value="${dto.notice_title}"/></td>
				</tr>
				<tr>
					<th>구분</th>
					<%-- <td><input type="text" name="notice_category" id="" value="${dto.notice_category}" /></td> --%>
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
					<td><input type="text" name="crew_id" id="writer-box" value="${dto.crew_id}" /></td>
				</tr>
				<tr>	
					<th>내용</th>
					<td colspan="3"><textarea id="content-box" name="notice_content" cols="80" rows="10">${dto.notice_content}</textarea></td>
				</tr>
			</table>
			<div id="notice-button">
				<button type="submit" class="button">수정</button>
				<button id="cancel" class="button">취소</button>
			</div>	
		</form>
	</div>	
</body>
</html>