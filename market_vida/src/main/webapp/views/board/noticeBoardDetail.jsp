<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지상세보기</title>
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
		width : 60%;
	}
	#title {
		text-align: center;
		margin: 23px;
	}
	
	table {
		border-collapse : collapse;
		border-top : solid #006F00 2px ;
		width:1000px;
		margin: auto;
	}
	td {
		padding: 15px;
	}
	
	#content-td {
		width: 900px;
		height: 400px;
		border-bottom : solid #006F00 2px ;
	}

	#col { 
		width: 15%;
		font-weight: bold;
	}
	
	.tds {
		border: solid #C8C8C8 0.5px;
	}
	
	#title-td {
		text-align: left;
	} 
	a {
		text-decoration: none;
	}
	
	#list-box {
		float: left;
	}
	
	.button-box {
	    float: right;
	    padding-top: 9px;
	    padding: 20px;
	}
	
	.button {
		padding: 11px 35px;
    	border: solid #006F00 1px;
		background: #006F00;
		color: white;  
	}
	
	.button:hover {
		background: white;
		color: #006F00;
	}
</style>
<script>

	function deleteNotice(){
		alert("게시물을 삭제하시겠습니까?");
	}
	
</script>
</head>
<body>
	<jsp:include page="../main/banner_form.jsp"></jsp:include>
	<main>
			<div class="container">
		<div id="title"><h2>공지사항</h2></div>
		<table>
			<tr>
				<td class="tds" id="col">제목</td>
				<td class="tds" id="title-td" colspan="3">${dto.notice_title}</td>
			</tr>
			<tr>	
				<td class="tds" id="col">작성자</td>
				<td class="tds">${dto.crew_id}</td>
				<td class="tds" id="col">작성일</td>
				<td class="tds">${dto.notice_date}</td>
			</tr>
			<tr>	
				<td id="content-td" colspan="4">${dto.notice_content}</td>
			</tr>
			<tr>
				<td id="button-td"colspan="4">
				<div class="button-box" id="list-box"><a class="button" href="noticeBoard">목록</a></div>
				<div class="button-box">
					<a class="button" href="delete?notice_no=${dto.notice_no}" onclick="deleteNotice()">삭제</a>
				</div>
				<div class="button-box"><a class="button" href="modify?notice_no=${dto.notice_no}">수정</a></div>
			</tr>
		</table>
	</div>
	</main>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>