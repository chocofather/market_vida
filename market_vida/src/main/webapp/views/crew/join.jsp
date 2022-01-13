<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="container">
    <h1>회원가입</h1>
    <div class="join_write_form">
        <span><p>*</p>필수입력사항</span>
	<form class="join_form" action="join.do" method="post">
        <table class="join_table">
            <tbody>
                <tr>
                    <th>
                        아이디
                        <span>
                            *
                            <span class="screen_out">필수항목</span>
                        </span>
                    </th>
               
                <td>
                    <input type="text" class="join_id" name="join_id" value maxlength="16"
                   label="아이디" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
                    <input type="hidden" name="check_id">
                    <a class="btn_check" href="">중복확인</a>
                </td>
             </tr>
             <tr>
                <th>
                    비밀번호
                    <span>
                        *
                        <span class="screen_out">필수항목</span>
                    </span>
                </th>
           
            <td>
                <input type="text" class="join_pw" name="join_pw" maxlength="16"
               label="비밀번호" placeholder="비밀번호를 입력해주세요">
               
            </td>

             </tr>
             <tr>
                <th>
                    비밀번호확인
                    <span>
                        *
                        <span class="screen_out">필수항목</span>
                    </span>
                </th>
           
            <td>
                <input type="text" class="join_pw_check" name="join_pw_check" maxlength="16"
               label="비밀번호" placeholder="비밀번호를 한번 더 입력해주세요">
               
            </td>
             </tr>
            </tr>
            <tr>
               <th>
                   이름
                   <span>
                       *
                       <span class="screen_out">필수항목</span>
                   </span>
               </th>
          
           <td>
               <input type="text" class="join_name" name="join_name" 
              label="이름" placeholder="이름을 입력해주세요">
               
           </td>
            </tr>
            <tr>
                <th>
                    이메일
                    <span>
                        *
                        <span class="screen_out">필수항목</span>
                    </span>
                </th>
           
            <td>
                <input type="text" class="join_email" name="join_email" value data-email size = "30"
               label="이메일" placeholder="이메일을 입력해주세요">
               <a class="btn_check" href="">중복확인</a>
            </td>
             </tr>
             <tr>
                <th>
                    휴대폰
                    <span>
                        *
                        <span class="screen_out">필수항목</span>
                    </span>
                </th>
           
            <td>
                <input type="text" class="join_phone" name="join_phone" value pattern="[0-9]*"
               label="휴대폰" placeholder="숫자만 입력해주세요">
               <a class="phone_check" href="">인증번호 받기</a>
            </td>
             </tr>
             <tr>
                <th>
                    주소
                    <span>
                        *
                        <span class="screen_out">필수항목</span>
                    </span>
                </th>
           
            <td>
               <a class="addr_search" href="">주소 검색</a>
            </td>
             </tr>
             <tr>
                <th>
                    성별
                </th>
           
            <td>
               <label>
               <input type="radio" name="sex" value="m">
               <span class="ico"></span>
               "남자"
                </label>
                <label>
                    <input type="radio" name="sex" value="w">
                    <span class="ico"></span>
                    "여자"
                </label>
            </td>
             </tr>
             <tr>
                <th>
                    "생년월일"
                </th>
           
            <td>
              <div class="birth_day">
                    <input type="text" name="birth_year" id="birth_year" pattern="[0-9]*" 
                    value label="생년월일" size="4" maxlength="4" placeholder="YYYY">
                    <span class="bar"></span>
                    <input type="text" name="birth_month" id="birth_month" pattern="[0-9]*" 
                    value label="생년월일" size="2" maxlength="2" placeholder="MM">
                    <span class="bar"></span>
                    <input type="text" name="birth_day" id="birth_day" pattern="[0-9]*" 
                    value label="생년월일" size="2" maxlength="2" placeholder="DD">
              </div>
            </td>
             </tr>
            </tbody>

        </table>
		
		<div id="join_submit">
            <button type="button" class="joinBtn">가입하기</button>			
		</div>
	</form>
</div>
</div>
</body>
</body>
</html>