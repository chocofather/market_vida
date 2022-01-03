<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>main.jsp</h1>
	
	<c:if test="${id !=null }">
		<h2>${id} 님 환영합니다</h2>
		<a href="logout.do">로그아웃</a>
	</c:if>
	<c:if test="${ empty id }">
	<ol>
		<li><a href="login.do">로그인</a></li>
		<li><a href="join.do">회원가입</a></li>
	</ol>
	</c:if>
</body>
</html>