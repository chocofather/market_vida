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
		margin: 0;
		padding: 0;
	}
	
	.goodsDetailBody {
		width: 1000px;
		margin: 0 auto;
	}
	
	.goodsMainInfo {
		display: flex;
		gap: 0 70px;
		flex-grow: 2;
	}
	
	.goodsDesc {
		flex-grow: 3;
	}
	
 	.goodsDesc p span:not(#priceinKorean) {
		font-size: x-large;
		font-weight: bold;
		padding-bottom: 20px;
	} 
	
	.goodsDesc p:first-child {
		font-weight: bold;
		padding-bottom: 30px;
	}
	
	.dlList {
		padding-bottom: 15px;
	}
	
	.goodsDesc dl {
		display: flex;
		padding: 5px 0;
	}
	
	.goodsDesc dt {
		width: 120px;
	}

	
	input[type="number"]::-webkit-inner-spin-button {
		-webkit-appearance: none;
		margin: 0;
	}
	
	.dlList input[type="button"], input[type="number"] {
		background-color: white;
	 	border: none; 
		text-align: center;
		
	}
	
	.dlList input[type="button"] {
		font-size: large;
		padding: 0 5px;
		width: 30px;
		cursor: grabbing;
	}
	
	.dlList input[type="number"] {
		width: 20px;
	}
	
	.dlList #spanQty {
		border: 3px solid var(--base-color);
   		border-radius: 5px;
   		padding: 3px 0;
   		font-weight: bold;
	}
	
	
	.showAmount {
		text-align: right;
		font-weight: bold;
		border-top: 2px solid var(--base-color);
		padding: 20px 0;
	}

	.getMine {
		display: flex;
		gap: 0 30px;
		height: 55px;
		
	}
	
	.getMine #toMyfavorite {
		flex-grow: 1;
		border: 2px solid var(--base-color);
		background-image: url("../resources/img/heart.png");
		border-radius: 3px;
		background-size: 30px;
	    background-color: white;
	    background-repeat: no-repeat;
	    background-position: center;
	    cursor: grabbing;
	}
	
	.getMine #toCart {
		border-radius: 3px;
		flex-grow: 3;
		border: none;
		background-color: var(--my-color);
		color: white;
		font-weight: bold;
		font-size: x-large;
		cursor: grabbing;
	}
	
	.tabs {
		display: flex;
		flex-direction: row;
		justify-content: space-around;
	}
	
	.tabs div {
		width: 100%;
		height: 70px;
		cursor: grabbing;
		background-color: var(--base-color);
		text-align: center;
		display: flex;
	    justify-content: center;
	    align-items: center;
	    color: var(--font-color);
	    border: 1.5px solid white;
	}
	
	.items {
		width: 100%;
		padding: 50px;
		display: none;
	}
	
	.items.active {
		display: inline-block;
	}
	
	
	
	

	
</style>

<script type="text/javascript">
	$(function(){
		
		calculateAmount();
		adjustQty();
		addMyfavorite();	
	});
	
	
	/* 가격 계산 */
	function calculateAmount(){	
		console.dir($('#goodsAmount'));
		$('#goodsAmount')[0].toLocaleString('ko-KR');
		$('#goodsAmount')[0].innerText = $('#inputQty')[0].valueAsNumber*$('#discountPrice')[0].textContent;
		$('#goodsAmount')[0].style.fontSize="xx-large";
		
	}
	
	
	/* 수량 조정 */
	function adjustQty(){
		var inputQty = $('#inputQty')[0];
		
		$('#minusQty').on('click', function(){
			if (inputQty.valueAsNumber > 1){
				inputQty.valueAsNumber -= 1;
			}
			
			calculateAmount();
		});
		
		$('#plusQty').on('click', function(){
			if (inputQty.valueAsNumber < 50) {
				inputQty.valueAsNumber += 1;
			}else if (inputQty.valueAsNumber>=50){
				alert("최대 구매수량은 50입니다.");
			}
			
			calculateAmount();
		});	
		
	}
	
	
	/* 찜하기 */
	function addMyfavorite(){
		var index = 0;
		$('#toMyfavorite').on('click', function(){
			index ++;
			if (index%2!=0){
				$('#toMyfavorite')[0].style.backgroundImage='url("../resources/img/filledheart.png")'; 
			}else {
				$('#toMyfavorite')[0].style.backgroundImage='url("../resources/img/heart.png")';
			}
			if (index>=10) index = 0;
		})
	}
	
	
	/* 장바구니 */
	function addCart(){
		
	}
		

</script>
</head>
<body>

	<div class="goodsDetailBody">
		<div class="goodsMainInfo">
			<div class="mainImg">
			<c:forEach var="detailImgDto" items="${ detailImgDto}" varStatus="status">
				<c:if test="${status.first==true}">
					<img src="${detailImgDto.img_name }" alt="${detailImgDto.img_name }" />
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
				<div class="tab1">
					<h3>상품설명</h3>
				</div>
				<div class="tab2">
					<h3>상세정보</h3>
				</div>
				<div class="tab3">
					<h3>후기</h3>
				</div>
				<div class="tab4">
					<h3>문의</h3>
				</div>
			</div>
			<div class="goondsContents">
				<div id="tab11" class="items active">
					<p>설명블라</p>
				</div>
				<div id="tab12" class="items">
					<p>정보블라</p>
				</div>
				<div id="tab13" class="items">
					<p>후기블라</p>
				</div>
				<div id="tab14" class="items">
					<p>문의블라</p>
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>