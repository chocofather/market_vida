<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/css/find_id.css?v=1.5" rel="stylesheet"
	type="text/css">
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
	  <!--  <form name="find_id_form" id="find_id_form">-->
	  <div id="find_id_form">
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
			</div>

			<button class="findidBtn" name="findidBtn" disabled>
				<span class="loginBtn_txt">인증번호 전송</span>
			</button>
			<label for="name" class="find_id_num_label">인증번호</label>
			<div class="find_id__num_border">
				<input type="text" class="find_id_num_input"
					placeholder="인증번호를 입력해주세요" disabled="disabled">
				<button class="find_id_num_button">인증</button>
			</div>
			<span class="crew_id" name="crew_id"></span>
			</div>
			<!--  </form>-->
	</div>
	
	<div id="modal"></div>
	<div class="modal1">
		<div class="modal_content">
			<h2>당신의 아이디 입니다.</h2>
			<a href="javascript:;" class="close">X</a> 
			<span class="crew_id_show">아이디 : ${crew.crew_id}</span>
			<div class="modal_footer">
				<button class="modal_confirm">확인</button>
			</div>
		</div>
	</div>
	<div class="modal2">
		<div class="modal_content">
			<h2>인증번호가 일치하지 않습니다.</h2>
			<a href="javascript:;" class="close">X</a> 
			<div class="modal_footer">
				<button class="modal_confirm">확인</button>
			</div>
		</div>
	</div>
</body>
<script>

	var code = "";
	
	$(".findidBtn").click(function() {
		var email = $(".find_id_email_input").val();
		
		
		$.ajax({

			type : "GET",
			url : "idemailCheck?crew_email=" + email,
			success : function(data) {
				alert("인증번호가 전송되었습니다.")
				
				$(".find_id_num_input").attr('disabled', false);
				$(".find_id_num_input").css('background-color', 'rgb(255,255,255)');
				
				code = data;
			}
		});
	})
	/*
	$(".find_id_num_button").click(function() {
		var email = $(".find_id_email_input").val();
		var crew_name = $(".find_id_name_label").val();
		var crew_email = $(".find_id_email_input").val();
		
		$.ajax({

			type : "POST",
			url : "find_id",
			data : {
				crew_name : "crew_name",
				crew_email : "crew_email"
			},
			success : function(data) {					
				console.log("성공");
				code = data;
			},
			error:function(){
				
			}
		});
	})
	*/	
	$("#modal, .close").on('click', function() {
		$("#modal").fadeOut(300);
		$(".modal1").fadeOut(300);
		$(".modal2").fadeOut(300);
	});

	$(".modal_confirm").on('click', function(){
		$("#modal").fadeOut(300);
		$(".modal1").fadeOut(300);
		$(".modal2").fadeOut(300);
	})
	/* 인증번호 비교 */
	$(".find_id_num_button").on('click', function(){
	    
	    var inputCode = $(".find_id_num_input").val();        // 입력코드    
	    var email = $(".find_id_email_input").val();
		var crew_name = $(".find_id_name_label").val();
		var crew_email = $(".find_id_email_input").val();
		
	    if(inputCode == code){
	    	$.ajax({
				
				type : "POST",
				url : "find_id",
				data : {
					"crew_name" : crew_name,
					"crew_email" : crew_email
				},
				success : function(data) {					
					console.log("성공");
					var crew_id = data.crew_id
					
					console.log(crew_id);
					code = data;
					
		
				},
				error:function(){
					
				}
			});
	    	$("#modal").fadeIn(300);
			$(".modal1").fadeIn(300);
	    }else{
	    	$("#modal").fadeIn(300);
			$(".modal2").fadeIn(300);
	    }
	        
	});
	
</script>
</html>