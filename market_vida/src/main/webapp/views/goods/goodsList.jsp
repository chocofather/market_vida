<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="${path}/resources/css/header.css" />
<link rel="stylesheet" href="${path}/resources/css/goodsList.css" />
<script src="${path}/resources/js/header.js"></script>
<script src="${path}/resources/js/goodsList.js"></script>
<style>

</style>
</head>
<body>
	<jsp:include page="../main/banner_form.jsp" />
	
		<div class="goodsBody">
        
      <!-- 카테고리 박스 -->
      <div class="categoryBox">
        <ul class="categoryList">
          <li><a href="goodsList?cat_code=${mainCode.main_cat_code }" id="totalGoodsList">전체보기</a></li>
          <c:forEach var="subDto" items="${subDtoList }">
            <li>
              <a href="goodsList?cat_code=${subDto.sub_cat_code}" class="subCatGoodsList">${subDto.sub_cat_name }</a>
            </li>
          </c:forEach>
        </ul>
      </div>
      
      <c:if test="${crew_id=='admin' }">
	  <div class="adminSection">	
      	<input type="button" value="삭제" id="deleteGoods"/>
      	<input type="button" value="수정" id="updateGoods"/>
      </div>
      </c:if>
      
      <!-- 상품 정렬 -->
      <div class="sortGoods">
        <div class="countGoods">
          <p>총 ${fn:length(imgDto) }개 상품</p>
     
      	<c:if test="${crew_id=='admin' }">
          <input type="checkbox" name="" id="checkAll" />
        </c:if>
        
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
          <li class="imgBox_list">
          
          <c:if test="${crew_id=='admin' }">
			<input type="checkbox" class="goodsChkbox" value="${imgDto.goods_no }" />        
		  </c:if>
		  
            <a href="goodsDetail?goods_no=${imgDto.goods_no }">
              <img src="${imgDto.img_name }" alt="${imgDto.img_name }" />
              <span>${imgDto.goods_name }</span>

              <c:choose>
                <c:when test="${imgDto.discount_rate>0 }">
                  <span>
                    <span id="discount_rate">${imgDto.discount_rate }% &nbsp; </span>
                    ${Math.round(imgDto.goods_price-(imgDto.goods_price*(imgDto.discount_rate/100)))}원
                  </span>
                  <span id="goods_price">${imgDto.goods_price } </span>
                </c:when>
                <c:when test="${imgDto.discount_rate==0 }">
                  <span id="goods_price_noDC">${imgDto.goods_price }원 </span>
                </c:when>
              </c:choose>
            </a>
          </li>
        </c:forEach>	
      </ul>
    </div>
    
   	<nav aria-label="Page navigation example">
		<ul class="pagination">
			<c:if test="${map.prev}">
				<li class="page-item1"><a class="page-link" href="list?currentPage=${map.currentPage-5 }">Previous</a></li>
			</c:if>
			<c:forEach var="no" begin="${map.startPageNo }" end="${map.endPageNo }">
				<li class="page-item" >${no }</li>
			</c:forEach>
			<c:if test="${map.next}">
						<li class="page-item3"><a class="page-link" href="list?currentPage=${map.currentPage+5 }">Next</a></li>
			</c:if>
		</ul>
	</nav>

  	<jsp:include page="../main/footer.jsp"/>  


</body>
</html>