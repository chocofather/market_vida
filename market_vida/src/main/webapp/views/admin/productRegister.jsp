<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<div class="container">
		<h1>상품등록</h1>
		<form action="goodswrite" method="post">
			<div>
				<label>상품명</label> <input type="text" name="goods_name"
					id="goods_name" />
			</div>
			<div>
				<label>판매단위</label> <input type="text" name="qty" id="qty" />
			</div>
			<div>
				<label>상품가격</label> <input type="text" name="goods_price"
					id="goods_price" />
			</div>
			<div>
				<label>상품할인률</label> <input type="text" name="discount_rate"
					id="discount_rate" />
			</div>
			<div>
				<label>상품재고</label> <input type="text" name="stock" id="stock" />
			</div>
			<div>
				<label>포장정보</label> <input type="text" name="package_type"
					id="package_type" />
			</div>
			<div>
				<label>원산지</label> <input type="text" name="origin" id="origin" />
			</div>
			<div>
				<label>안내사항</label> <input type="text" name="goods_info"
					id="goods_info" />
			</div>
			<div>
				<h2>상품분류</h2> <h3>채소</h3> <input type="radio" name="sub_cat_code"
					id="sub_cat_code" value="101" />고구마.감자.당근 <input type="radio"
					name="sub_cat_code" id="sub_cat_code" value="102" />시금치.쌈채소.나물 <input
					type="radio" name="sub_cat_code" id="sub_cat_code" value="103" />브로콜리.파프리카.양배추
				<input type="radio" name="sub_cat_code" id="sub_cat_code"
					value="104" />양파.대파.마늘.배추 <input type="radio" name="sub_cat_code"
					id="sub_cat_code" value="105" />오이.호박.고추 <input type="radio"
					name="sub_cat_code" id="sub_cat_code" value="106" />콩나물.버섯 <br /> <h3>과일</h3> <input
					type="radio" name="sub_cat_code" id="sub_cat_code" value="201" />제철과일
				<input type="radio" name="sub_cat_code" id="sub_cat_code"
					value="202" />국산과일 <input type="radio" name="sub_cat_code"
					id="sub_cat_code" value="203" />수입과일 <input type="radio"
					name="sub_cat_code" id="sub_cat_code" value="204" />간편과일 <input
					type="radio" name="sub_cat_code" id="sub_cat_code" value="205" />냉동.건과일
				<input type="radio" name="sub_cat_code" id="sub_cat_code"
					value="206" />견과류 <input type="radio" name="sub_cat_code"
					id="sub_cat_code" value="207" />쌀.잡곡 <br /> <h3>수산</h3> <input type="radio"
					name="sub_cat_code" id="sub_cat_code" value="301" />생선류 <input
					type="radio" name="sub_cat_code" id="sub_cat_code" value="302" />굴비.반건류
				<input type="radio" name="sub_cat_code" id="sub_cat_code"
					value="303" />오징어.낙지.문어 <input type="radio" name="sub_cat_code"
					id="sub_cat_code" value="304" />새우.게.랍스터 <input type="radio"
					name="sub_cat_code" id="sub_cat_code" value="305" />해산물.조개류 <input
					type="radio" name="sub_cat_code" id="sub_cat_code" value="306" />수산가공품
				<input type="radio" name="sub_cat_code" id="sub_cat_code"
					value="307" />김.미역.해조류 <input type="radio" name="sub_cat_code"
					id="sub_cat_code" value="308" />건어물.다시팩 <br /> <h3>정육</h3> <input type="radio"
					name="sub_cat_code" id="sub_cat_code" value="401" />국내산소고기 <input
					type="radio" name="sub_cat_code" id="sub_cat_code" value="402" />수입산소고기
				<input type="radio" name="sub_cat_code" id="sub_cat_code"
					value="403" />돼지고기 <input type="radio" name="sub_cat_code"
					id="sub_cat_code" value="404" />계란류 <input type="radio"
					name="sub_cat_code" id="sub_cat_code" value="405" />닭.오리고기 <input
					type="radio" name="sub_cat_code" id="sub_cat_code" value="406" />양념육.돈까스
				<input type="radio" name="sub_cat_code" id="sub_cat_code"
					value="407" />양고기 <br /> <h3>국.반찬.메인</h3> <input type="radio" name="sub_cat_code"
					id="sub_cat_code" value="501" />국.탕.찌개 <input type="radio"
					name="sub_cat_code" id="sub_cat_code" value="502" />밑반찬 <input
					type="radio" name="sub_cat_code" id="sub_cat_code" value="503" />김치.젓갈.장류
				<input type="radio" name="sub_cat_code" id="sub_cat_code"
					value="504" />두부.어묵.부침개 <input type="radio" name="sub_cat_code"
					id="sub_cat_code" value="505" />베이컨.햄.통조림 <br /> <h3>샐러드.간편식</h3> <input type="radio"
					name="sub_cat_code" id="sub_cat_code" value="601" />샐러드.닭가슴살 <input
					type="radio" name="sub_cat_code" id="sub_cat_code" value="602" />도시락.밥류
				<input type="radio" name="sub_cat_code" id="sub_cat_code"
					value="603" />파스타.면류 <input type="radio" name="sub_cat_code"
					id="sub_cat_code" value="604" />떡볶이.튀김.순대 <input type="radio"
					name="sub_cat_code" id="sub_cat_code" value="605" />피자.핫도그.만두 <input
					type="radio" name="sub_cat_code" id="sub_cat_code" value="606" />폭립.떡갈비.안주
				<input type="radio" name="sub_cat_code" id="sub_cat_code"
					value="607" />죽.스프.카레 <input type="radio" name="sub_cat_code"
					id="sub_cat_code" value="608" />선식.시리얼 <br /> <h3>면.양념.오일</h3> <input type="radio"
					name="sub_cat_code" id="sub_cat_code" value="701" />파스타.면류 <input
					type="radio" name="sub_cat_code" id="sub_cat_code" value="702" />식초.소스.드레싱
				<input type="radio" name="sub_cat_code" id="sub_cat_code"
					value="703" />양념.액젓.장류 <input type="radio" name="sub_cat_code"
					id="sub_cat_code" value="705" />소금.설탕.향신료 <br /> <h3>생수.음료.우유.커피</h3> <input type="radio"
					name="sub_cat_code" id="sub_cat_code" value="801" />생수.탄산수 <input
					type="radio" name="sub_cat_code" id="sub_cat_code" value="802" />음료.주스
				<input type="radio" name="sub_cat_code" id="sub_cat_code"
					value="803" />우유.두유.요거트 <input type="radio" name="sub_cat_code"
					id="sub_cat_code" value="804" />커피 <input type="radio"
					name="sub_cat_code" id="sub_cat_code" value="805" />차 <br /> <h3>간식.과자.떡</h3> <input
					type="radio" name="sub_cat_code" id="sub_cat_code" value="901" />과자.스낵.쿠키
				<input type="radio" name="sub_cat_code" id="sub_cat_code"
					value="902" />초콜릿.젤리.캔디 <input type="radio" name="sub_cat_code"
					id="sub_cat_code" value="903" />떡.한과 <input type="radio"
					name="sub_cat_code" id="sub_cat_code" value="904" />아이스크림 <br /> <h3>베이커리.치즈.델리</h3> <input
					type="radio" name="sub_cat_code" id="sub_cat_code" value="1001" />식빵.빵류
				<input type="radio" name="sub_cat_code" id="sub_cat_code"
					value="1002" />잼.버터.스프레드 <input type="radio" name="sub_cat_code"
					id="sub_cat_code" value="1003" />케이크.파이.디저트 <input type="radio"
					name="sub_cat_code" id="sub_cat_code" value="1004" />치즈 <input
					type="radio" name="sub_cat_code" id="sub_cat_code" value="1005" />델리
				<input type="radio" name="sub_cat_code" id="sub_cat_code"
					value="1006" />올리브.피클 <br /><br />
			</div>
			<button type="submit" class="btn">등록</button>
		</form>
	</div>
</body>
</html>