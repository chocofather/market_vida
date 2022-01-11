<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style type="text/css">
      .goodsBody {
        width: 1000px;
        margin: 0 auto;
      }

      .categoryBox {
        display: flex;
        border: 1px solid silver;
        padding: 20px;
      }

      .categoryList,
      .categoryList a {
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

      .imgBox {
        padding: 0;
        margin: 0;
        width: 100%;
        list-style: none;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
      }

      .imgBox_list {
        margin-bottom: 80px;
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
    <script type="text/javascript">
      $(function () {
        $(".subCatGoodsList").on("click", function (index) {
        	console.log(index);
        	console.dir(index);
        	console.dir($(".subCatGoodsList"));
          debugger;
          $.ajax({
            url: "goodsListAjax?",
            type: "GET",
            dataType: "json", //  ajax 통신으로 받는 타입
            contentType: "application/json", // ajax 통신으로 보내는 타입
            data: { subCode: $(".sub_cat_code")[0].value },
            // ajax 통신 성공 시 로직 수행
            success: function (result) {
              console.log(result.imgBySubCode);
              console.log(result.imgBySubCode[0].img_name);
              //var imgBySubCode = JSON.stringify(result.imgBySubCode);
              $(".imgBox_list").empty();

              var imgList = result.imgBySubCode;
              for (var i = 0; i < imgList.length; i++) {
                //console.log(imgList[i].img_name);

                var html = "";
                /*    		$(".imgBox").append(html += '<li class=imgBox_list><a href="goodsDetail?goods_no='+imgList[i].goods_no+'>'
            							html += '<img src='+imgList[i].img_name+'alt='+imgList[i].img_name+' />'
            							html += '<span name="goods_name">'+imgList[i].goods_nam+'</span>'
            							html += '<c:choose><c:when test="'+imgList[i].discount_rate+'>0"  >'
            							html += '<span><span id="discount_rate">'+imgList[i].discount_rate+'% &nbsp; </span>'+Math.round(imgList[i].goods_price-(imgList[i].goods_price*(imgList[i].discount_rate/100)))+'원 </span>'
            							html += '<span id="goods_price">'+imgList[i].goods_price +' </span>'
            							html += '</c:when><c:when test="'+imgList[i].discount_rate+'==0" >'
            							html += '<span id="goods_price_woDC">'+imgList[i].goods_price+'원 </span></c:when></c:choose></a></li>'); */
              }
            },

            error: function () {
              console.log("error");
            },
          });
        });
      });

      /* 	
	function getSortingImg(result){
		var goodsList = $('.imgBox_list');
		console.dir("imgBySubCode");
		goodsList.empty();
		
		for (var i = 0; i < result.length; i++) {
			var contents = `<a href="goodsDetail?goods_no=${result[i].goods_no}"> 
								<img src="${result[i].img_name }" alt="${result[i].img_name }" />
								<span name="goods_name">${result[i].goods_name }</span>
				
									<c:choose>
										<c:when test="${result[i].discount_rate>0 }">
											<span><span id="discount_rate">${result[i].discount_rate }% &nbsp; </span> ${Math.round(result[i].goods_price-(result[i].goods_price*(result[i].discount_rate/100))) }원 </span>
											<span id="goods_price">${result[i].goods_price } </span>
											
										</c:when>
										<c:when test="${result[i].discount_rate==0 }">
											<span id="goods_price_woDC">${result[i].goods_price }원 </span>
										</c:when>
									</c:choose>
							</a>`
							
			goodsList[i].innerHTML = contents;	
		} 
	}
	
 */
    </script>
  </head>
  <body>
    <div class="goodsBody">
        
      <!-- 카테고리 박스 -->
      <div class="categoryBox">
        <ul class="categoryList">
          <li><a href="#" id="totalGoodsList">전체보기</a></li>
          <c:forEach var="subDto" items="${subDto }">
            <li>
              <input type="hidden" name="subCode" class="sub_cat_code" value="${subDto.sub_cat_code}" />
              <a href="#" class="subCatGoodsList">${subDto.sub_cat_name }</a>
            </li>
          </c:forEach>
        </ul>
      </div>

      <!-- 상품 정렬 -->
      <div class="sortGoods">
        <div class="countGoods">
          <p>총${count }개</p>
        </div>
        <div class="sortBy">
          <ul>
            <li>추천순</li>
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
            <a href="goodsDetail?goods_no=${imgDto.goods_no }">
              <img src="${imgDto.img_name }" alt="${imgDto.img_name }" />
              <span name="goods_name">${imgDto.goods_name }</span>

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
  </body>
</html>
