<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/css/find_id.css" rel="stylesheet"
	type="text/css">
﻿<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>﻿
 <script>
      
        $(function(){
            $(".find_id_name_input").on('input', function(){
                if($(".find_id_name_input").val() == '' || $(".find_id_email_input").val() == '')
                $(".findidBtn").attr("disabled",true);
                else
                $(".findidBtn").attr("disabled",false);
            })
        })
        $(function(){
            $(".find_id_email_input").on('input', function(){
                if($(".find_id_name_input").val() == '' || $(".find_id_email_input").val() == '')
                $(".findidBtn").attr("disabled",true);
                else
                $(".findidBtn").attr("disabled",false);
            })
        })
 
  
    </script>
</head>
<body>
	  <div id="container">
		<form name="find_id_form" id="find_id_form" action="login" method="post">
			<h1>아이디 찾기</h1>
			<h2>이메일 인증</h2>
			<div class="find_container">
				<label for="name" class="find_id_name_label">이름</label>
                <div class="find_id_border">
                <input type="text" class="find_id_name_input" placeholder="이름을 입력해 주세요">
                </div>
                <label for="name" class="find_id_email_label">이메일</label>
                <div class="find_id_border">
                <input type="text" class="find_id_email_input" placeholder="이메일을 입력해 주세요">
                </div>
            </div>
           
			<button type="submit" class="findidBtn" name="findidBtn" disabled>
				<span class="loginBtn_txt">확인</span>
			</button>
            

		</form>
	</div>
</body>
<script>
$(".findidBtn").click(function(){
	var email = $(".find_id_email_input").val();
	
	$.ajax({
        
        type:"GET",
        url:"mailCheck?email=" + email
                
    });
});
</script>
</html>