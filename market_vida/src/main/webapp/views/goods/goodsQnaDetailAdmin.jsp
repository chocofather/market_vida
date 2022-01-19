<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="${path}/resources/css/header.css" />
<link rel="stylesheet" href="${path}/resources/css/goodsQnaDetailAdmin.css" />
<script src="${path}/resources/js/header.js"></script>
<style>
main div {

	height: 800px;
	flex-grow: 1;
}
</style>
</head>
<body>
	<jsp:include page="../main/banner_form.jsp" />

			<div class="goodsQnaDetailnBox">
		<div class="pageTitle">
			<h2>문의사항</h2>
		</div>
		<div>
		<form action="qnaAnswerUpdate" method="post">
			<table class="qnaTableAdmin">
				<tr>
					<th>작성자</th>
					<th>작성일</th>
					<th>답변상태</th>
				</tr>
				<tr class="qna_row">
					<td class="qna_row_list">${goodsQnaDto.crew_id }</td>
					<td class="qna_row_list">${goodsQnaDto.goods_qna_date }</td>
					<td class="qna_row_list">${goodsQnaDto.qna_status }</td>
				</tr>
				<tr>
					<td colspan="3">
					<div id="goodsQnaTitle"><img src="../resources/img/question.png" alt="question.png" />${goodsQnaDto.goods_qna_title }</div>
					<div id="goodsQnaContents">${goodsQnaDto.goods_qna_contents }</div>
					</td>
				</tr>
			</table>
			
			<div class="answer">
				<img src="../resources/img/answer.png" alt="answer.png" />
				<c:choose>
					<c:when test="${goodsQnaDto.qna_status==1 }">
						<textarea rows="30" name="goods_qna_answer">${goodsQnaDto.goods_qna_answer }</textarea>
					</c:when>
					<c:when test="${goodsQnaDto.qna_status==0 }">
						<textarea rows="30" name="goods_qna_answer"></textarea>
					</c:when>
				</c:choose>
			</div>
			<div class="buttonSection">
				<input type="hidden" name="goods_qna_no" value="${goodsQnaDto.goods_qna_no }"/>
				<input type="submit" value="등록" />
				<input type="button" value="취소" onclick="history.back();"/>
				<a href="deleteGoodsQna?goods_qna_no=${goodsQnaDto.goods_qna_no }"><input type="button" value="삭제" /></a>
			</div>
		</form>	
		</div>
	
	</div>
	<jsp:include page="../main/footer.jsp" />

</body>
</html>