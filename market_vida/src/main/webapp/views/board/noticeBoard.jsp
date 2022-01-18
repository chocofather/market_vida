<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<style>
	.container {
		margin: 0px auto;
		width : 60%;
	}
	table {
		border-collapse : collapse;
		border-bottom : solid #006F00 2px ;
		margin: 23px auto;
		padding: 5px;
		width:1000px;
	}
	
	#col1 { width: 8%; }
	#col2 { width: 15%; }
	#col3 { width: 40%; }
	#col4 { width: 15%; }
	#col5 { width: 13%; }
	#col6 { width: 9%; }
	
	td {
		text-align : center;
		padding: 14px;
		border-bottom: solid #C8C8C8 0.5px;
		font-size: 14px;
	}
	th {
		padding: 18px;
		border-bottom: solid #C8C8C8 0.5px;
		border-top: solid #006F00 2px;
	}
	
	#col-title {
		text-align:left;
	}
	
	a {
		text-decoration: none;
		color: black;
	}
	
	h2,h5 {
		display: inline;
	}
	
	#title {
		margin: 18px;
	}
	h5 { color: grey; }

	#pagediv {
		font-size: 20px;
	}
	
	.current-page {
		color: #006F00;
		padding: 3px;
	}

	.button-box {
	    float: right;
	    padding-top: 9px;
	   	padding: 20px;
	}
	
	#button {
	    padding: 11px 35px;
    	border: solid #006F00 1px;
		background: #006F00;
		color: white; 
	}
	
	#button:hover {
		background: white;
		color: #006F00;
	}
	
	#button-td {
		border-bottom: none;
	}
	

</style>

<script type="text/javascript">
	
	// 체크박스 전체선택,해지
	$(document).ready(function() {
	 	$("#allCheck").click(function(){
			 var chk = $("#allCheck").prop("checked");
			 if(chk) {
			  $(".chBox").prop("checked", true);
			 } else {
			  $(".chBox").prop("checked", false);
			 }
		});
			
		 $(".chBox").click(function(){
			  $("#allCheck").prop("checked", false);
		});
	});
	
	// 게시글 삭제
	function deleteNotice() {
		var url = "/market_vida/board/list/delete";
		var valueArr = new Array();
		var list = $("input[name='chBox']");
		for(var i = 0; i < list.length; i++){
			if(list[i].checked){
				valueArr.push(list[i].value);
			}
		} // 1. 버튼 눌렀을 때 쳌박 true인 애들 값 가져오기, 2. 값 리스트 보내기, 3. 컨트롤러에서 리스트 for문 돌리기
		if (valueArr.length == 0){
			alert("선택된 글이 없습니다.");
		} else {
			var chk = confirm("게시물을 삭제하시겠습니까?");
			$.ajax({
				url : url,
				type : 'DELETE',
				data: JSON.stringify(valueArr),
				contentType: "application/json; charset=utf-8",
				async: false,
				dataType: 'json',
				error: function (error) {
						location.reload();
					}, 
				success: function (data) {
					location.reload();
				}
			});
		}
	}
	
</script>
</head>
<body>
	<h3>페이징 끝 페이지 번호: ${map.endPageNo}</h3>
	<h3>이전 : ${map.prev}</h3>
	<h3>다음 : ${map.next}</h3>
	
	<div class="container">
	<div id ="title"><h2>공지사항</h2>&nbsp;&nbsp;&nbsp;<h5>비다의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</h5></div>
		<table>
			<tr>
				<th>
					<div class="allCheck">
						<input type="checkbox" name="allCheck" id="allCheck" />
					</div>
				</th>
				<th id="col1">번호</th>
				<th id="col2">구분</th>
				<th id="col3">제목</th>
				<th id="col4">작성자</th>
				<th id="col5">작성일</th>
				<th id="col6">조회수</th>
			</tr>
			<c:forEach var="dto" items="${list}">
				<tr>
					<td>
						<div class="checkBox">
							<input type="checkbox" name="chBox" class="chBox" value="${dto.notice_no}" />
						</div>
					</td>
					<td>${dto.notice_no}</td>
					<td>${dto.notice_category}</td>
					<td id="col-title"><a href="noticeBoardDetail?notice_no=${dto.notice_no}">${dto.notice_title}</a></td>
					<td>${dto.crew_id}</td>
					<td>${dto.notice_date}</td>
					<td>${dto.notice_hits}</td>
				</tr>
			</c:forEach>
			<tr>
				<td id="button-td"colspan="7" >
					<div class="button-box">
						<button id="button" onclick="deleteNotice();">삭제</button>
					</div>
					<div class="button-box"><a id="button" href="writeNoticeForm">등록</a></div>
				</td>
			</tr>
			<tr>
				<td colspan="6">
					<div id="pagediv">
						<c:if test="${map.prev}">
							<a href="noticeBoard?currentPage=${map.currentPage-1}">이전</a>
						</c:if>
						<c:forEach var="i" begin="${map.startPageNo}" end="${map.endPageNo}">
							<a class="current-page" href="noticeBoard?currentPage=${i}">${i}</a>
						</c:forEach>
						<c:if test="${map.next}">
							<a href="noticeBoard?currentPage=${map.currentPage+1}">다음</a>
						</c:if>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>