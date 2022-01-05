<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	table{
		margin: 10px;
	}

	td {
		height: 30px;
	}
	
	input[type="text"], input[type="date"] {
		padding: 10px 30px;
	}

</style>
</head>
<body>
	<div class="container">
		<h1>couponWriteForm</h1>
		<form action="write" method="post">
			<div>
				<table>
					<tr>
						<th>쿠폰코드 </th>
						<td><input type="text" name="coupon_code" id="coupon_code" maxlength="12" /></td>
					</tr>
					<tr>
						<th>쿠폰명 </th>
						<td><input type="text" name="coupon_name" id="coupon_name" /></td>
					</tr>
					<tr>
						<th>할인률 </th>
						<td><input type="text" name="coupon_dc" id="coupon_dc" maxlength="2" /></td>
					</tr>
					<tr>
						<th>유효기간 </th>
						<td><input type="date" name="coupon_period"
							id="coupon_period" /></td>
					</tr>
					<tr>
						<th>쿠폰설명 </th>
						<td><input type="text" name="coupon_detail"
							id="coupon_detail" /></td>
					</tr>
					<tr>
						<td colspan="6">
							<button type="submit" class="btn">등록</button>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</div>
</body>
</html>