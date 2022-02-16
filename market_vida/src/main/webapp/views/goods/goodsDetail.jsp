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
<link rel="stylesheet" href="${path}/resources/css/goodsDetail.css?after" />
<script src="${path}/resources/js/header.js"></script>
<script src="${path}/resources/js/goodsDetail.js"></script>
<style>

</style>
</head>
<body>
	<jsp:include page="../main/banner_form.jsp" />
		<div class="goodsDetailBody">
		<div class="goodsMainInfo">
			<div class="mainImg">
			<c:forEach var="detailImgDto" items="${ detailImgDto}" varStatus="status">
				<c:if test="${status.first==true}">
					<img src="${detailImgDto.img_name }" alt="${detailImgDto.img_name }" />
					<c:set var="mainGoodsImg" value="${detailImgDto.img_name }"></c:set>
				</c:if>
			</c:forEach>
			</div>
			<div class="goodsDesc">
				<c:set var="discountPrice" value="${Math.round(goodsDto.goods_price-(goodsDto.goods_price*(goodsDto.discount_rate/100))) }" />
				<p><span>${goodsDto.goods_name }</span></p>
				<p><span id="discountPrice">${discountPrice}</span>원</p>
				<div class="dlList">
					<dl>
						<dt>판매단위</dt>
						<dd>${goodsDto.qty }</dd>
					</dl>
					<dl>
						<dt>포장타입</dt>
						<dd>${goodsDto.package_type }</dd>
					</dl>
					<dl>
						<dt>원산지</dt>
						<dd>${goodsDto.origin }</dd>
					</dl>
					<dl>
						<dt>상품정보</dt>
						<dd>${goodsDto.goods_info }</dd>
					</dl>
					<dl>
						<dt>구매수량</dt>
						<dd>
							<span id="spanQty">
								<input type="button" value="-" id="minusQty"/>
								<input type="number" name="" id="inputQty" value="1" size="1" min="1" max="50" readonly="readonly" />
								<input type="button" value="+" id="plusQty" />
							</span>
						</dd>
					</dl>	
				</div>
				<p class="showAmount">
					<span id="priceinKorean">총 금액 : </span>
					<span id="goodsAmount"></span>원
				</p>
				<div class="getMine">
					<input type="button" value="" id="toMyfavorite"/>
					<input type="button" value="장바구니" id="toCart"/>	
				</div>
			</div>
		</div>
		
		<div class="subInfo">
		
			<!-- 탭으로 상품 상세페이지 구현 -->
			<div class="tabs">
				<div class="tab active" data-tab-target="#tab1">
					<h3>상품설명</h3>
				</div>
				<div class="tab" data-tab-target="#tab2">
					<h3>상세정보</h3>
				</div>
				<div class="tab" data-tab-target="#tab3">
					<h3>후기</h3>
				</div>
				<div class="tab" data-tab-target="#tab4">
					<h3>문의</h3>
				</div>
			</div>
			<div class="tabsItems">
			<!-- 상품설명 -->
				<div id="tab1" data-tab-content class="items active">
				<c:forEach var="detailImgDto" items="${ detailImgDto}" varStatus="status">
					<c:if test="${status.first==false}">
						<img src="${detailImgDto.img_name }" alt="${detailImgDto.img_name }" />
					</c:if>
				</c:forEach>
				</div>
			<!-- 상세정보 -->
				<div id="tab2" data-tab-content class="items">
					<table class="desciption">
						<tr>
							<th>상품 ID</th>
							<td id="goodsNo">${goodsDto.goods_no }</td>
							<th>규격</th>
							<td>${goodsDto.qty }</td>
						</tr>
						<tr>
							<th>원산지</th>
							<td>${goodsDto.origin }</td>
							<th>재고수량</th>
							<td>${goodsDto.stock }</td>
						</tr>
						<tr>
							<th>상세정보</th>
							<td>${goodsDto.goods_info }</td>
							<th>보관방법</th>
							<td>${goodsDto.package_type } 보관</td>
						</tr>
						<tr>
							<th>영양성분</th>
							<td>상품설명 및 상품이미지 참조</td>
							<th>섭취 주의사항</th>
							<td>상품설명 및 상품이미지 참조</td>
						</tr>
						
					</table>
				</div>
			<!-- 후기 -->
				<div id="tab3" data-tab-content class="items">
					<div class="reviewList">
						<table class="reviewTable">
							<colgroup>
								<col style='width:5%'/>
								<col style='width:60%'/>
								<col style='width:15%'/>
								<col style='width:15%'/>
								<col style='width:5%'/>
							</colgroup>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>좋아요</th>
							</tr>
							<c:forEach var="reviewDto" items="${reviewDto }">
							<tr class="review_row">
								<td>${reviewDto.review_no }</td>
								<td>${reviewDto.review_title }</td>
								<td>${reviewDto.crew_id }</td>
								<td>${reviewDto.review_date }</td>
								<td>${reviewDto.review_liked }</td>
							</tr>
							<tr class="reviewContents">
								<td colspan="5">
									<span class="reviews">${reviewDto.review_contents }</span>
									<span class="likeIt"><input type="button" value="도움돼요" id="likeIt"/></span>
									
								</td>
							</tr>
							</c:forEach>
						</table>
					</div>	
				</div>
			<!-- 문의 -->
				<div id="tab4" data-tab-content class="items">
					<div class="goodsQna_info">
						<ul>
							<li>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</li>
							<li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이비다 내 <a href="./board/qnaboard">1:1문의</a>에 남겨주세요.</li>
						</ul>
					</div>
					
					<div class="quaList">
						<table class="qnaTable">
							<colgroup>
								<col style='width:55%'/>
								<col style='width:15%'/>
								<col style='width:15%'/>
								<col style='width:15%'/>
							</colgroup>
							<tr>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>답변상태</th>
							</tr>
							<c:forEach var="goodsQnaDto" items="${goodsQnaDto }">
							<tr class="qna_row">
								<c:choose>
									<c:when test="${goodsQnaDto.qna_lock==1 }">
										<td>비밀글입니다<img src="../resources/img/padlock.png" alt="padlock.png" /></td>
									</c:when>
									<c:when test="${goodsQnaDto.qna_lock==0 }">
										<td class="goods_qna_title">${goodsQnaDto.goods_qna_title }</td>
									</c:when>
								</c:choose>
									<td id="crewId">${goodsQnaDto.crew_id }</td>
									<td>${goodsQnaDto.goods_qna_date }</td>
									<td>${goodsQnaDto.qna_status }</td>
							</tr>
							<tr class="goods_qna_contents" >
								<td colspan="4">
									<div class="question"><img src="../resources/img/question.png" alt="question.png" />${goodsQnaDto.goods_qna_contents }</div>
										<div class="answer"><img src="../resources/img/answer.png" alt="answer.png" />${goodsQnaDto.goods_qna_answer }</div>
										<div class="qnaAmend">
											<input type="hidden" name="crew_id" id="crew_id" value="${crew_id}" />
											<input type="hidden" name="crew_no" id="crew_no" value="${crew_no}" />
											<input type="hidden" name="goods_qna_no" class="goods_qna_no" value="${goodsQnaDto.goods_qna_no }" />
										<c:if test="${crew_id == goodsQnaDto.crew_id}">
											<input type="button" value="수정" class="qnaModify"/>
											<input type="button" value="문의 삭제" class="qnaDelete" />
										</c:if>
										
										</div>
								</td>
							</tr>
							</c:forEach>
						</table>
				
					</div>
					<div class="qnaBottom">
						<input type="button" value="문의하기" id="writeGoodsQna"/>
					</div>
					
				</div>
			
			
			</div>
		</div>
	</div>
	
	<jsp:include page="../main/footer.jsp"/>
	
	<!-- 모달창 -->
	<div class="quaModal">
		<div class="modalBody">
			<form action="./writeGoodsQna" method="post" id="writeGoodsQnaForm">
			<div>
				<h3>상품 문의하기</h3>
			</div>
			<div class="goodsInfoQna">
				<img src="${mainGoodsImg }" alt="${goodsDto.goods_name }" />
				<strong>${goodsDto.goods_name }</strong>
			</div>
			<div class="goodsQnaTnC">
				<div class="qnaTitle">
					<strong>제목</strong> 
					<input type="text" name="goods_qna_title" id="goods_qna_title" placeholder="제목을 입력해주세요" /> 
					<input type="hidden" name="goods_no" id="goods_no" value="${goodsDto.goods_no }" />

				</div>
				<div class="qnaContents">
				<strong>내용</strong> 
				<textarea name="goods_qna_contents" maxlength="3000" id="goods_qna_contents"></textarea>
				</div>	
				<div class="secretYN">
					<input type="checkbox" name="secretYN" id="secretYN" />
					<p>비밀글로 문의하기</p>
				</div>
			</div>
			<div class="modalButton">
				<input type="button" value="취소" id="modalBackButton" />
				<input type="button" value="등록" id="modalWriteButton"/>
			</div>
			</form>
		</div>
	</div>
</body>
</html>