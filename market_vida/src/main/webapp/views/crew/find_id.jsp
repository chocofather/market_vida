<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/css/find_id.css?v=1.2" rel="stylesheet"
	type="text/css">
﻿
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
﻿
<script>
	$(function() {
		$(".find_id_name_input").on(
				'input',
				function() {
					if ($(".find_id_name_input").val() == ''
							|| $(".find_id_email_input").val() == '')
						$(".findidBtn").attr("disabled", true);
					else
						$(".findidBtn").attr("disabled", false);
				})
	})
	$(function() {
		$(".find_id_email_input").on(
				'input',
				function() {
					if ($(".find_id_name_input").val() == ''
							|| $(".find_id_email_input").val() == '')
						$(".findidBtn").attr("disabled", true);
					else
						$(".findidBtn").attr("disabled", false);
				})
	})
</script>
</head>
<body>
	<div id="container">
		<form name="find_id_form" id="find_id_form" action="find_id"
			method="post">
			<h1>아이디 찾기</h1>
			<h2>이메일 인증</h2>
			<div class="find_container">
				<label for="name" class="find_id_name_label">이름</label>
				<div class="find_id_border">
					<input type="text" class="find_id_name_input" name="crew_name"
						placeholder="이름을 입력해 주세요">
				</div>
				<label for="name" class="find_id_email_label">이메일</label>
				<div class="find_id_border">
					<input type="text" class="find_id_email_input" name="crew_email"
						placeholder="이메일을 입력해 주세요">
				</div>		
				<label for="name" class="find_id_num_label">인증번호</label>
				<div class="find_id__num_border">
				<input type="text" class="find_id_num_input" placeholder="인증번호를 입력해주세요">
				<button class="find_id_num_button">인증</button>
				</div>
			</div>
				
			<button type="submit" class="findidBtn" name="findidBtn" disabled>
				<span class="loginBtn_txt">확인</span>
			</button>
		</form>
	</div>
	<div id="modal"></div>
	<div class="modal1">
		<div class="modal_content">
			<h2>당신의 아이디 입니다.</h2>
			<a href="javascript:;" class="close">X</a>
			<input class = "crew_id_show" type="text" value='"아이디는" + ${crew_id} + "입니다"' readonly/>
			<div class="modal_footer">
				<button class="modal_confirm">확인</button>
			</div>
		</div>
	</div>
</body>
<script>
$(document).ready(function() {
	

	var code = "";
	
	$(".findidBtn").click(function() {
		var email = $(".find_id_email_input").val();
		document.get
		$(".find_id_num_label").show();
		$(".find_id_num_input").show();
		$(".find_id_num_button").show();
		$(".find_id__num_border").show();
		$.ajax({

			type : "GET",
			url : "idemailCheck?crew_email=" + email,
			success : function(data) {
				alert("인증번호가 전송되었습니다.")
				code = data;
			}
		});
	});
	

	$("#modal, .close").on('click', function() {
		$("#modal").fadeOut(300);
		$(".modal1").fadeOut(300);
	});

	$(".find_id_num_button").on('click', function() {
		if(code == $(".modal_confirm").val()){
			$("#modal").fadeIn(300);
			$(".modal1").fadeIn(300);
		}
	})
	$("modal_confirm").on('click', function(){
		$("#modal").fadeOut(300);
		$(".modal1").fadeOut(300);
	})
})
</script>
</html>