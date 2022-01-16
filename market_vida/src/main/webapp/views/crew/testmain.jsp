<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="http://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
window.Kakao.init('0220c245b15eb6acc3368cd71394f0a0');
	function kakapLogout(){
		if(!Kakao.Auth.getAccessToken()){
			return;
		}
		Kakao.Auth.logout(funciton(){
			location.href = "crew/testmain";
		});
	};
</script>
<body>
	<c:if test="${crew_id !=null }">
		<h2>${crew_id} 님 환영합니다.</h2>
		<a href="logout">로그아웃</a>
		<a href="javascript:kakapLogout();">카카오 로그아웃</a>
	</c:if>	
	<c:if test="${empty id }">
	<ol>
		<li><a href="login">로그인</a></li>
		<li><a href="join">회원가입</a></li>
	</ol>
	</c:if>	
</body>
</html>