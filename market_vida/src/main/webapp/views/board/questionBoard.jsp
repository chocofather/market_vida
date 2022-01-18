<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>공지사항</h2>
	<div class="container">
		<table>
			<tr>
				<th>번호</th>
				<th>카테고리</th>
				<th>제목</th>
			</tr>
			<c:forEach var="dto" items="${list}">
				<tr>
					<td>${dto.notice_no}</td>
					<td>${dto.notice_category}</td>
					<td>${dto.notice_title}</td>
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