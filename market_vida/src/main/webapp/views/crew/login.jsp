<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/css/login.css?v=1.1" rel="stylesheet"
	type="text/css">
<script>
	$(function() {
		$(".loginBtn").click(function() {
			var crew_id = $(".crew_id").val();
			var crew_pw = $(".crew_pw").val();
			if (crew_id == "") {
				alert("아이디를 입력하세요");
				$(".crew_id").focus(); //입력포커스 이동
				return; //함수 종료
			}
			if (crew_pw == "") {
				alert("비밀번호를 입력하세요");
				$(".crew_pw").focus();
				return;
			}
			//폼 내부의 데이터를 전송할 주소
			//document.login_form.action = "${path}/crew/logincheck.do";
			//document.login_form.submit(); //제출
		});
	});
</script>
</head>
<body>
	<div id="container">
		<form name="login_form" id="login_form" action="login" method="post">
			<h2>로그인</h2>
			<input type="text" placeholder="아이디를 입력해주세요" class="crew_id"
				name="crew_id" size=20 tabindex="2"> <input type="password"
				placeholder="비밀번호를 입력해주세요" class="crew_pw" name="crew_pw">
			
			<c:if test="${message == 'error'}">
			<div class="login_error">아이디 또는 비밀번호가 일치하지 않습니다.</div>
			</c:if>

			<div class="login_search">
				<a class="link" href="">아이디 찾기</a> <span class="bar"></span> <a
					class="link" href="">비밀번호 찾기</a>
			</div>
			<button type="submit" class="loginBtn" name="loginBtn">
				<span class="loginBtn_txt">로그인</span>
			</button>

		</form>

		<button type="button" class="joinBtn">
			<span class="joinBtn_txt">회원가입</span>
		</button>
	</div>
</body>
</html>