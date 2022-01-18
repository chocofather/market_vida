<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품문의 admin</title>
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
	
	.goodsQnaAdminBox {
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
		border-top: 2px solid var(--font-color);
		border-bottom: 2px solid var(--font-color);
	}
	
	.qnaTableAdmin tr {
		border: 1.5px solid var(--base-color);
		border-left: none;
		border-right: none;
		height: 40px;
	}
	
	.qnaTableAdmin td {
		padding: 10px;
		color: var(--font-color);
	}
	
	.qna_row_list:nth-child(3), .qna_row_list:last-child {
		text-align: center;
	}
	
	.qna_row_list:nth-child(2) {
		padding-left: 50px;
	}
	
	.qna_row_list a {
		color: var(--font-color);
		text-decoration: none;
	}
	
	.buttonSection {
		padding: 50px;
		text-align: end;
	}
	
	.buttonSection input[type='button']{
		width: 120px;
		height: 50px;
		background-color: var(--my-color);
		color: white;
		font-weight: bold;
		border: none;
		border-radius: 5px;
	
	}
	
	.pagination {
		text-align: center;
		padding: 30px;
	}	
	
	.pagination a {
		text-decoration: none;
	    color: var(--my-color);
	    font-size: large;
	    font-weight: bold;
	    padding: 10px;
	}

	
</style>
<script type="text/javascript">

	$(function() {
		checkAllGoods();
		deleteGoodsQna();
	})
	
	/* 전체상품 체크 */
  	function checkAllGoods(){
  		$('#checkAll').on('click', function(){
  			$('.qna_row_chckbox').each(function(i){
  				console.dir($(this));
  				$(this)[0].checked = $('#checkAll')[0].checked;
  			
  			})
  		})	
  	
  	}
	
	
	// 상품 삭제
	function deleteGoodsQna() {
		
		$('#qnaDelete').on('click', function(){
			var checkedList = [];
			
			if ($('.qna_row_chckbox:checked').length==0){
	  			alert("선택된 상품이 없습니다.")
	  		}else{
	  			if(confirm("정말 삭제하시겠습니까?") == true){
	  				
	  				$('.qna_row_chckbox:checked').each(function(i){
	  					checkedList.push($(this).val()); 
	  					console.log($(this).val());
	  					console.log(checkedList);
	  				});
	  				
	  				
	  				$.ajax({
	  					url: './deleteGoodsQnaAjax',
	  					type: 'GET',
	  					traditional: true,
	  					data: {goods_qna_no:checkedList},
	  					dataType:"text",
	  					success: function(result){
	  						
	  							alert("삭제 완료");
	  							location.reload();
	  							console.log(result);
	  						
	  					},
	  					error: function(xhr){
	  							console.log(xhr.status);
	  					}
	  				}); 
	  					
	  				}else{
	  					return;
	  				}
	  		  		}
	  				
	  			});
		
	}
	
</script>
</head>
<body>
	
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