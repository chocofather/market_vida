<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">

	:root {
		--my-color: #006F00;
		--base-color: #EFEFEF;
		--font-color: dimgray;
	}
	
	
	*{
		padding: 0;
		margin: 0;
	}
	
	.goodsQnaDetailnBox {
		width: 800px;
		margin: 30px auto;
	}
	
	.pageTitle {
		padding: 30px;
	}
	
	.qnaTableAdmin {
		width: 100%;
		border-collapse: collapse;
	}
	
	.qnaTableAdmin th {
		border-top: 2px solid var(--my-color);
	    border-bottom: 2px solid var(--base-color);
	    padding: 10px;	
	}
	
	.qnaTableAdmin td {
		text-align: center;
	    padding: 10px;
	    border-bottom: 1px solid var(--base-color);
	}
	
	#goodsQnaTitle {
		font-weight: bold;
		text-align: left;
		padding: 30px 10px;
	}
	
	#goodsQnaContents {
		text-align: left;
		padding: 20px 10px;
	}
	
	#goodsQnaTitle img{
		width: 30px;
		height: 30px;	
		padding: 0 10px;
	}
	
	.answer img {
		width: 30px;
		height: 30px;	
		display: block;
		padding: 30px;
	}
	
	.answer textarea {
		width: 100%;
	}
	
	.buttonSection {
		padding: 50px;
		text-align: end;
	}
	
	
	.buttonSection input[type='button'], input[type='submit'] {
		width: 120px;
		height: 50px;
		background-color: var(--my-color);
		color: white;
		font-weight: bold;
		border: none;
		border-radius: 5px;
		cursor: pointer;
	}
	
</style>
<script type="text/javascript">

$funtion(){
	
	
}



</script>
</head>
<body>
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