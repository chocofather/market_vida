<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Market Vida_admin_상품문의</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="${path}/resources/css/header.css" />
<link rel="stylesheet" href="${path}/resources/css/goodsQnaAdmin.css" />
<script src="${path}/resources/js/header.js"></script>
<script src="${path}/resources/js/goodsQnaAdmin.js"></script>
<style>
main div {
	height: 800px;
	flex-grow: 1;
}
</style>
</head>
<body>
	<jsp:include page="../main/banner_form.jsp" />

		<div class="goodsQnaAdminBox">
		<div class="pageTitle">
			<h2>상품문의 게시판</h2>
		</div>
		<div class="quaListAdmin">
			<table class="qnaTableAdmin">
				<colgroup>
					<col style='width: 5%' />
					<col style='width: 50%' />
					<col style='width: 15%' />
					<col style='width: 15%' />
					<col style='width: 15%' />
				</colgroup>
				<tr>
					<th><input type="checkbox" name="checkAll" id="checkAll" /></th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>답변상태</th>
				</tr>
				<c:forEach var="goodsQnaDto" items="${goodsQnaDto }">
					<tr class="qna_row">
						<td class="qna_row_list"><input type="checkbox" name="qna_row" class="qna_row_chckbox" value="${goodsQnaDto.goods_qna_no }"/></td>
						<td class="qna_row_list"><a href="./goodsQnaDetailAdmin?goods_qna_no=${goodsQnaDto.goods_qna_no }">${goodsQnaDto.goods_qna_title }</a></td>
						<td class="qna_row_list">${goodsQnaDto.crew_id }</td>
						<td class="qna_row_list">${goodsQnaDto.goods_qna_date }</td>
						<td class="qna_row_list">${goodsQnaDto.qna_status }</td>
					</tr>
				</c:forEach>
			</table>
		
		<div class="paging">
			<ul class="pagination">
				<c:if test="${map.prev}">
					<a href="goodsQnaAdmin?currentPage=${map.currentPage-1 }">이전</a>
				</c:if>
				<c:forEach var="no" begin="${map.startPageNo }" end="${map.endPageNo }">
					<a href="goodsQnaAdmin?currentPage=${no }">${no }</a>
				</c:forEach>
				<c:if test="${map.next}">
					<a href="goodsQnaAdmin?currentPage=${map.currentPage+1 }">다음</a>
				</c:if>
			</ul>
		</div>	
			
		<div class="buttonSection">
			<input type="button" value="삭제" id="qnaDelete" />
		</div>
					
		</div>
	</div>
	<jsp:include page="../main/footer.jsp" />
	

</body>
</html>