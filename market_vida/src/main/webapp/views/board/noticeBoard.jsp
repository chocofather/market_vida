<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
	table {
		border: 1px solid black;
		margin: 0px;
	}
	#page-ul {
		list-style: none;
	}
	
	li {
		float:left;
		margin-left: 20px;
	}
</style>
</head>
<body>
	<h2>공지사항</h2>
	<h3>총 게시물 수 : ${totalNumber}</h3>
	<h3>현재 페이지 번호: ${currentPage}</h3>
	<h3>총 페이지 수 : ${totalPage}</h3>
	<h3>현재페이지의 시작게시물 번호: ${startNo}</h3>
	<h3>현재페이지의 끝게시물 번호: ${endNo}</h3>
	<h3>페이징 시작 페이지 번호: ${startPageNo}</h3>
	<h3>페이징 끝 페이지 번호: ${endPageNo}</h3>
	<div class="container">
		<table>
			<tr>
				<th>번호</th>
				<th>구분</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<c:forEach var="dto" items="${list}">
				<tr>
					<td>${dto.notice_no}</td>
					<td>${dto.notice_category}</td>
					<td><a href="noticeBoardDetail?notice_no=${dto.notice_no}">${dto.notice_title}</a></td>
					<td>${dto.crew_id}</td>
					<td>${dto.notice_date}</td>
				</tr>
			</c:forEach>
			<tr>
				<td><a href="writeNoticeForm">등록</a></td>
			</tr>

			<tr>
				<td colspan="4">
					<nav>
						<ul id="page-ul">
							<c:if test="${map.prev}">
								<li class="page-item"><a href="list?currentPage=${map.currentPage-10}">Previous</a></li>
							</c:if>
							<c:forEach var="i" begin="${map.startPageNo}" end="${map.endPageNo}">
								<li><a href="list?currentPage=${i}">${i}</a></li>
							</c:forEach>
							<c:if test="${map.next}">
								<li class="page-item"><a href="list?currentPage=${map.currentPage+10}">Next</a></li>
							</c:if>
						</ul>
					</nav>
				</td>
			</tr>
		</table>
	</div>

</body>
</html>