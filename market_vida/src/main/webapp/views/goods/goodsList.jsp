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
<script src="${path}/resources/js/header.js"></script>
<style>
main div {
	text-align: center;
	flex-grow: 1;
}

:root { -
	-my-color: #006F00; -
	-base-color: #EFEFEF; -
	-font-color: dimgray;
}

.goodsBody {
	width: 1000px;
	margin: 0 auto;
}

.categoryBox {
	display: flex;
	border: 1px solid silver;
	padding: 20px;
}

.categoryList, .categoryList a {
	list-style: none;
	text-decoration: none;
	color: black;
}

.categoryList li {
	float: left;
	width: 200px;
	padding: 10px;
}

.sortGoods {
	width: 1000px;
	margin-top: 35px;
	display: flex;
	justify-content: space-between;
	font-size: small;
}

.sortBy li {
	list-style: none;
	float: left;
	padding: 0 8px;
}

.sortBy li:not(:last-child) {
	border-right: 1.5px solid silver;
}

.adminSection {
	margin-top: 30px;
}

.adminSection input[type='button'] {
	width: 100px;
	height: 50px;
	border: 2px solid var(- -base-color);
	border-radius: 5px;
	background-color: white;
	color: var(- -my-color);
	font-weight: bold;
}

.adminSection input[type='button']:hover {
	background-color: var(- -my-color);
	color: white;
}

.countGoods p {
	display: contents;
}

.imgBox {
	padding: 0;
	margin: 20px 0;
	width: 100%;
	list-style: none;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
}

.imgBox_list {
	margin-bottom: 80px;
	display: grid;
}

.imgBox_list a {
	text-decoration: none;
	color: black;
}

.imgBox_list img {
	width: 320px;
	height: 360px;
}

.imgBox_list span {
	width: 300px;
	overflow: hidden;
	display: list-item;
	padding: 3px 0;
}

.imgBox_list #goods_price {
	text-decoration-line: line-through;
	color: grey;
}

.imgBox_list #discount_rate {
	display: contents;
	font-weight: bold;
	color: red;
}

</style>
<script>
$(function() {
	deleteGoods();
	checkAllGoods();
	updateGoods();
	pagenation();
});

/* 페이징 처리 */
function pagenation() {
	var pageNo = $('.page-item');
	console.log($('.page-item'));

	pageNo.on('click', function() {
		pageNo.each(function(i) {
			console.log($(this));
			location.href = location.href + '&currentPage='
					+ $(this)[0].outerText;
		});

	})
}

/* 전체상품 체크 */
function checkAllGoods() {
	$('#checkAll').on('click', function() {
		$('.goodsChkbox').each(function(i) {
			$(this)[0].checked = $('#checkAll')[0].checked;

		})
	})

}

/* 상품 수정 */
function updateGoods() {
	$('#updateGoods').on('click', function() {
		if ($('.goodsChkbox:checked').length == 0) {
			alert("선택된 상품이 없습니다.")
		} else if ($('.goodsChkbox:checked').length > 1) {
			alert("상품 수정은 1개 상품씩 가능합니다.")
		} else {
			location.href = "./updateGoods";
		}
	})
}

/* 상품 삭제 */
function deleteGoods() {
	$('#deleteGoods').on('click', function() {
		var checkedList = [];

		if ($('.goodsChkbox:checked').length == 0) {
			alert("선택된 상품이 없습니다.")
		} else {

			if (confirm("정말 삭제하시겠습니까?") == true) {

				$('.goodsChkbox:checked').each(function(i) {
					checkedList.push($(this).val());
					console.log($(this).val());
					console.log(checkedList);
				});

				$.ajax({
					url : './deleteGoods',
					type : 'GET',
					traditional : true,
					data : {
						goods_no : checkedList
					},
					dataType : "text",
					success : function(result) {
						if (result == "success") {
							alert("삭제 완료");
							location.reload();
							console.log(result);
						}
					},
					error : function(xhr) {
						console.log(xhr.status);
					}
				});

			} else {
				return;
			}
		}

	});
}
</script>
</head>
<body>
	<header>
		<c:if test="${crew_id !=null }">
			<ul>
				<li><a href="#">고객센터</a></li>
				<li><a href="../crew/logout">로그아웃</a></li>
				<li><a href="../mypage/main">${crew_id}님 환영합니다</a></li>
			</ul>
		</c:if>
		<c:if test="${empty crew_id }">
			<ul>
				<li><a href="#">고객센터</a></li>
				<li><a href="../crew/login">로그인</a></li>
				<li><a href="../crew/join">회원가입</a></li>
			</ul>
		</c:if>
		<c:if test="${crew_id !=null }">
			<ul>
				<li><a href="../mypage/myCoupon">쿠폰함</a></li>
				<li><a href="../mypage/myMileage">적립금</a></li>
				<li><a href="../mypage/myReviewBefore?crew_no=1">후기</a></li>
			</ul>
		</c:if>
		<div>
			<a href="../main/main">
				<img src="${path}/resources/img/title.png" alt="타이틀">
			</a>
		</div>
	</header>
	<nav>
		<ul>
			<li class="show_category"><a href="#">
					<i class="xi xi-bars"></i> 전체 카테고리
				</a></li>
			<li><a href="#">신상품</a></li>
			<li><a href="#">인기상품</a></li>
			<li><a href="#">타임세일</a></li>
			<li><a href="#">이벤트</a></li>
		</ul>
		<div class="search">
			<input type="text" name="" id="" placeholder="검색어를 입력해주세요"> <input type="image" src="${path}/resources/img/search.png" alt="검색">
		</div>
		<div class="location">
			<a href="#" id="loc">
				<i class="xi xi-maker xi-2x" aria-hidden="true"></i>
			</a>
		</div>
		<div class="cart">
			<a href="#">
				<i class="xi xi-cart-o xi-2x"></i>
			</a>
		</div>
		<div class="wishList">
			<a href="#">
				<i class="xi-heart-o xi-2x"></i>
			</a>
		</div>
	</nav>
	<div class="sub_menu">
		<ul class="inner">
			<c:forEach var="mainCode" items="${mainCode }">
				<li><a href="../goods/goodsList?cat_code=${ mainCode.main_cat_code}">${mainCode.main_cat_name }</a></li>
			</c:forEach>
		</ul>
	</div>
	<main>
		<div class="goodsBody">

		<!-- 카테고리 박스 -->
		<div class="categoryBox">
			<ul class="categoryList">
				<li><a href="goodsList?cat_code=${mainCode.main_cat_code }" id="totalGoodsList">전체보기</a></li>
				<c:forEach var="subDto" items="${subDtoList }">
					<li><a href="goodsList?cat_code=${subDto.sub_cat_code}" class="subCatGoodsList">${subDto.sub_cat_name }</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="adminSection">
			<input type="button" value="삭제" id="deleteGoods" /> <input type="button" value="수정" id="updateGoods" />
		</div>
		<!-- 상품 정렬 -->
		<div class="sortGoods">
			<div class="countGoods">
				<!--  <form action="goodsList" method="post" id="goodsCnt"> -->
				<%-- <p>총 ${fn:length(imgDto) }개 상품</p> --%>
				<!--   </form> -->
				<input type="checkbox" name="" id="checkAll" />
			</div>
			<div class="sortBy">
				<ul>
					<li>신상품순</li>
					<li>판매량순</li>
					<li>리뷰순</li>
					<li>높은 가격순</li>
					<li>낮은 가격순</li>
				</ul>
			</div>
		</div>

		<!-- 상품 리스트-->
		<ul class="imgBox">
			<c:forEach var="imgDto" items="${imgDto }">
				<li class="imgBox_list"><input type="checkbox" class="goodsChkbox" value="${imgDto.goods_no }" /> <a href="goodsDetail?goods_no=${imgDto.goods_no }">
						<img src="${imgDto.img_name }" alt="${imgDto.img_name }" /> <span>${imgDto.goods_name }</span>

						<c:choose>
							<c:when test="${imgDto.discount_rate>0 }">
								<span> <span id="discount_rate">${imgDto.discount_rate }% &nbsp; </span> ${Math.round(imgDto.goods_price-(imgDto.goods_price*(imgDto.discount_rate/100)))}원
								</span>
								<span id="goods_price">${imgDto.goods_price } </span>
							</c:when>
							<c:when test="${imgDto.discount_rate==0 }">
								<span id="goods_price_noDC">${imgDto.goods_price }원 </span>
							</c:when>
						</c:choose>
					</a></li>
			</c:forEach>
		</ul>
	</div>
	</main>
</body>
</html>