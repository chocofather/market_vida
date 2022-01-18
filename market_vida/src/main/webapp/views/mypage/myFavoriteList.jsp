<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜목록</title>
<style>
	
	.container {
		margin: auto;
		width:80%;
	}

	#goodsBox {
        list-style: none;
	}
	ul, li {
		float: left;
		margin: 20px;
	}
	img {
		width:200px;
		height:200px;
	}

</style>
</head>
<body>
	<div class="container">
	<div id ="title"><h2>나의 찜목록</h2></div> 
	<ul id="goodsBox">
		<c:forEach var="imgLink" items="${goodsImg}">
			<li class="goodsList">
				<input type="checkbox" class="goodsChkbox" value="${imgLink}" />
				<img src="${imgLink}" alt="${imgLink}" />
			</li>
		</c:forEach>
	</ul>      
	
	<input type="button" value="삭제" id="deleteGoods"/>
	</div>
</body>
</html>