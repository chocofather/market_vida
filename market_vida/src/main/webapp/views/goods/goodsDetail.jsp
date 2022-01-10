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
		--border-color: #EFEFEF;
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
	}
	
	.dlList input[type="number"] {
		width: 20px;
	}
	
	.dlList #spanQty {
		border: 3px solid var(--border-color);
   		border-radius: 5px;
   		padding: 3px 0;
   		font-weight: bold;
	}
	
	
	.showAmount {
		text-align: right;
		font-weight: bold;
		border-top: 2px solid var(--border-color);
		padding: 20px 0;
	}

	.getMine {
		display: flex;
		gap: 0 30px;
		height: 55px;
		
	}
	
	.getMine input[type="button"]:first-child {
		flex-grow: 1;
		border: 2px solid var(--border-color);
		background-image: url("../resources/img/heart.png");
		border-radius: 3px;
		background-size: 40px;
	    background-color: white;
	    background-repeat: no-repeat;
	    background-position: center;
	}
	
	.getMine input[type="button"]:last-child {
		border-radius: 3px;
		flex-grow: 3;
		border: none;
		background-color: var(--my-color);
		color: white;
		font-weight: bold;
		font-size: x-large;
	}
	
	
	

	
</style>

<script type="text/javascript">
	$(function(){
		var discountPrice = $('#discountPrice')[0].textContent;
		var inputQty = $('#inputQty')[0].value;
		
		$('#goodsAmount')[0].innerText = inputQty*discountPrice;
		$('#goodsAmount')[0].style.fontSize="xx-large";
		
		
	})
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
								<input type="button" value="-" />
								<input type="number" name="" id="inputQty" value="1" size="1" min="1" max="20" />
								<input type="button" value="+" />
							</span>
						</dd>
					</dl>	
				</div>
				<p class="showAmount">
					<span id="priceinKorean">총 금액 : </span>
					<span id="goodsAmount"></span>원
				</p>
				<div class="getMine">
					<input type="button" value="" />
					<input type="button" value="장바구니" />	
				</div>
			</div>
		</div>
	</div>
</body>
</html>