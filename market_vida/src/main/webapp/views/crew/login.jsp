<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="${path}/resources/css/login.css?v=1.2" rel="stylesheet"
	type="text/css">
<script src="http://developers.kakao.com/sdk/js/kakao.js"></script>
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
				<a class="link" href="find_id">아이디 찾기</a> <span class="bar"></span>
				<a class="link" href="">비밀번호 찾기</a>
			</div>
			<button type="submit" class="loginBtn" name="loginBtn">
				<span class="loginBtn_txt">로그인</span>
			</button>
		</form>

		<button type="button" class="joinBtn" onclick="location.href='join';">
			<span class="joinBtn_txt">회원가입</span>
		</button>
	</div>
	<%-- --%>
	<form name="kakao_login_form" class="kakao_login_form"
		action="kakao_login_form" method="post">
		<div id="kakaologin">
			<div class="kakaoBtn">
				<input type="hidden" name="kakaoemail" id="kakaoemail" /> 
				<input type="hidden" name="kakaoname" id="kakaoname" /> 
				<input type="hidden" name="kakaobirth" id="kakaobirth" />
				<input type="hidden" name="kakaogender" id="kakaogender" /> 
				<a id="kakaoLoginBtn" href="javascript:loginWithKakao();"> <img
					src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
					width="130" height="30" />
				</a>
			</div>
		</div>
	</form>
</body>
<script>
	window.Kakao.init('0220c245b15eb6acc3368cd71394f0a0');
	function loginWithKakao() {
		Kakao.Auth.login({
			scope : 'profile_nickname,account_email, gender, birthday',
			success : function(response) {

				Kakao.API.request({
					url : '/v2/user/me',
					 success: res => {
			             const email = res.kakao_account.email;
			             const name = res.properties.nickname;
			             const birth = res.kakao_account.birthday;
			             const gender = res.kakao_account.gender;
			             	
			             console.log(email);
			             console.log(name);
			             console.log(birth);
			             console.log(gender);
			           
			             $('#kakaoemail').val(email);
			             $('#kakaoname').val(name);
			             $('#kakaobirth').val(birth);
			             $('#kakaoegender').val(gender);
			             
			             document.kakao_login_form.submit();
			             
					 },
			            fail: function(error) {
			              alert(JSON.stringify(error));
			            }
			          });
			        },
		      fail: function(err) {
		        alert(JSON.stringify(err));
		      }
		});
	}
	<%@ include file = "../main/footer.jsp" %>
</script>
</html>