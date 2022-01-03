<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>myCoupon.jsp</h1>
	
	<%-- <table>
		<c:forEach var="dto" items="${list }">
		<tr>
			<th>쿠폰번호</th>
			<td>${dto.coupon_code }</td>
		</tr>
	 	</c:forEach>
	</table> --%>
	<h2>${list}</h2>
</body>
</html>