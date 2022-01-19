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
	
	.container {
		margin: 30px auto;
		width:80%;
	}
	#title {
		text-align: center;
		border-bottom : solid #006F00 2px ;
		padding-bottom: 20px;
	}
	.goodsList {
        margin: 26px;
	
	}

	#goodsBox {
        list-style: none;
        border-bottom : solid #006F00 2px ;
        margin-bottom: 27px;
        width: 1200px;
	}
	ul, li {
		float: left;
	}
	
	#allCheck {
		float: left;
		margin: 6px;
	}
	#allCheck-div {
		margin: 15px;
	}
	
	#button {
	    padding: 5px 29px;
    	border: solid #006F00 1px;
		background: #006F00;
		color: white;
		margin-left: 32px; 
		float: left;
	}
	
	#button:hover {
		background: white;
		color: #006F00;
	}
	
	span {
		color: #006F00;
		font-size: 18px;
		float: left;
	}

</style>
<script type="text/javascript">

	// 체크박스 전체선택,해지
	$(document).ready(function() {
	 	$("#allCheck").click(function(){
			 var chk = $("#allCheck").prop("checked");
			 if(chk) {
			  $(".chBox").prop("checked", true);
			 } else {
			  $(".chBox").prop("checked", false);
			 }
		});
			
		 $(".chBox").click(function(){
			  $("#allCheck").prop("checked", false);
		});
	});
	
	// 게시글 삭제
	function deleteNotice() {
		var url = "/market_vida/mypage/myFavoriteList";
		var valueArr = new Array();
		var list = $("input[name='chBox']");
		for(var i = 0; i < list.length; i++){
			if(list[i].checked){
				valueArr.push(list[i].value);
			}
		} 
		if (valueArr.length == 0){
			alert("선택된 상품이 없습니다.");
		} else {
			var chk = confirm("선택된 상품을 삭제하시겠습니까?");
			$.ajax({
				url : url,
				type : 'DELETE',
				data: JSON.stringify(valueArr),
				contentType: "application/json; charset=utf-8",
				async: false,
				dataType: 'json',
				error: function (error) {
						location.reload();
					}, 
				success: function (data) {
					location.reload();
				}
			});
		}
	}
	
</script>
</head>
<body>
	<jsp:include page="../main/banner_form.jsp"></jsp:include>
	<main>
	<div class="container">
		<div id ="title"><h2>나의 찜목록</h2></div> 
		<ul id="goodsBox">
			<c:forEach var="imgLink" items="${goodsImg}">
				<li class="goodsList">
					<input type="checkbox" name="chBox" class="chBox" value="${imgLink}" />
					<img src="${imgLink}" alt="${imgLink}" height="200" width="200"/>
				</li>
			</c:forEach>
		</ul> 
		
		<div id="allCheck-div"><input type="checkbox" name="allCheck" id="allCheck" /><span>전체선택</span></div>
		<div class="button-box">
			<button id="button" onclick="deleteNotice();">삭제</button>
		</div>     

	</div>
	</main>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>