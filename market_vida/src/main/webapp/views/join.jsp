<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>join 페이지</h1>
	<form action="join.do" method="post">
		<div>
			<span>이름 :</span><input type="text" name="name" id= "" />
		</div>
		<div>
			<span>아이디 :</span><input type="text" name="id" id= "" />
		</div>
		<div>
			<span>비밀번호 :</span><input type="password" name="pwd" id= "" />
		</div>
		<div>
			<span>비밀번호 확인 :</span><input type="password" name="pwd_check" id= "" />
		</div>
		<div>
			<span>이메일 :</span><input type="text" name="email" id= "" />
		</div>
		<div>
			<span>주소 :</span><input type="text" name="addrs" id= "" />
		</div>
		<div>
			<input type="submit" value="회원가입" />
			<input type="button" value="취	소" />
		</div>
	</form>
</body>
</html>