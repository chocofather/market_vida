<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/css/join.css" rel="stylesheet" >
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
	<div id="container">
		<h1>회원가입</h1>
		<div class="join_write_form">
			<p class="icon_txt">
				<span class="icon">*</span>필수입력사항
			</p>
			<form class="join_form" method="post">
				<table class="join_table">
					<tbody>
						<tr>
							<th>아이디 <span class="icon"> * <span
									class="screen_out">필수항목</span>
							</span>
							</th>
							<td><input type="text" class="crew_id" name="crew_id"
								maxlength="16" label="아이디" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
								<input type="hidden" name="check_id">
								<button type="button" class="id_check">중복확인</button>
								<div class="alert_container">
									<span class="alert_point01">·</span> <span class="alert01">6자
										이상의 영문 혹은 영문과 숫자를 조합</span> <br> <span class="alert_point02">·</span>
									<span class="alert02">아이디 중복확인</span>
								</div></td>
						</tr>
						<tr>
							<th>비밀번호 <span class="icon"> * <span
									class="screen_out">필수항목</span>
							</span>
							</th>

							<td><input type="password" class="crew_pw" name="crew_pw"
								maxlength="16" label="비밀번호" placeholder="비밀번호를 입력해주세요">
								<div class="alert_container">
									<span class="alert_point03">·</span> <span class="alert03">10자
										이상 입력</span> <br> <span class="alert_point04">·</span> <span
										class="alert04">영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</span> <br>

								</div></td>

						</tr>
						<tr>
							<th>비밀번호확인 <span class="icon"> * <span
									class="screen_out">필수항목</span>
							</span>
							</th>

							<td><input type="password" class="crew_pw_check"
								name="crew_pw_check" maxlength="16" label="비밀번호"
								placeholder="비밀번호를 한번 더 입력해주세요">
								<div class="alert_container">
									<span class="alert06">비밀번호가 일치하지 않습니다.</span>
								</div></td>
						</tr>
						</tr>
						<tr>
							<th>이름 <span class="icon"> * <span class="screen_out">필수항목</span>
							</span>
							</th>

							<td><input type="text" class="crew_name" name="crew_name"
								label="이름" placeholder="이름을 입력해주세요"></td>
						</tr>
						<tr>
							<th>이메일 <span class="icon"> * <span
									class="screen_out">필수항목</span>
							</span>
							</th>

							<td><input type="text" class="crew_email" name="crew_email"
								value data-email size="30" label="이메일" placeholder="이메일을 입력해주세요">
								<button type="button" class="email_check">중복확인</button></td>
						</tr>
						<tr>
							<th>휴대폰 <span class="icon"> * <span
									class="screen_out">필수항목</span>
							</span>
							</th>

							<td><input type="text" class="crew_phone" name="crew_phone"
								value pattern="[0-9]*" label="휴대폰" placeholder="숫자만 입력해주세요">
							</td>
						</tr>
						<tr>
							<th>주소 <span class="icon"> * <span class="screen_out">필수항목</span>
							</span>
							</th>

							<td><a class="addr_search" href="#" onclick="findAddr()">
									<span class="addr_search_txt"> 주소 검색 </span>
							</a> <input id="crew_post" type="text" placeholder="우편번호" readonly>
								<input id="research_addr" type="button" value="재검색"
								onclick="findAddr()"> <input id="crew_addr" type="text"
								placeholder="주소" readonly> <br> <input
								id="detail_addr" type="text" placeholder="상세주소를 입력해주세요">
							</td>
						</tr>
						<tr>
							<th>성별</th>

							<td><label class="gender_label"> <input
									class="crew_gender" type="radio" name="gender" value="m">
									<span class="gender"></span> 남자
							</label> <label class="gender_label"> <input class="crew_gender"
									type="radio" name="gender" value="w"> <span
									class="gender"></span> 여자
							</label></td>
						</tr>
						<tr>
							<th>생년월일</th>

							<td>
								<div class="birth_day">
									<input type="text" name="birth_year" id="birth_year"
										pattern="[0-9]*" value label="생년월일" size="4" maxlength="4"
										placeholder="YYYY"> <span class="bar"></span> <input
										type="text" name="birth_month" id="birth_month"
										pattern="[0-9]*" value label="생년월일" size="2" maxlength="2"
										placeholder="MM"> <span class="bar"></span> <input
										type="text" name="birth_day" id="birth_day" pattern="[0-9]*"
										value label="생년월일" size="2" maxlength="2" placeholder="DD">
								</div>
							</td>
						</tr>
						<tr class="agree_table">
							<th>이용약관동의 <span class="icon"> * <span
									class="screen_out">필수항목</span>
							</span>
							</th>
							<td>
								<div class="check">
									<label class="check_all"> <input type="checkbox"
										name="agree" value="checkAll" onclick="selectAll(this)">
										<span class="icon"></span> 전체 동의합니다
									</label>
									<p class="all_check_txt">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를
										이용할 수 있습니다.</p>

								</div>
								<div class="check02">
									<label class="check_agree"> <input type="checkbox"
										name="agree" value="n" required label="이용약관"> <span
										class="icon"></span> 이용약관 동의 <span class="sub">(필수)</span>
									</label> <a href="javascript:openModal('modal1');"
										class="link_agreement">약관보기></a>
								</div>
								<div class="check02">
									<label class="check_agree"> <input id="private1"
										type="checkbox" name="agree" value="n" required
										label="개인정보 수집·이용"> <span class="icon"></span> 개인정보
										수집·이용 동의 <span class="sub">(필수)</span>
									</label> <a href="javascript:openModal('modal2');"
										class="link_agreement">약관보기></a>
								</div>
								<div class="check02">
									<label class="check_agree"> <input id="private2"
										type="checkbox" name="agree" value="n" required
										label="개인정보 수집·이용"> <span class="icon"></span> 개인정보
										수집·이용 동의 <span class="sub">(선택)</span>
									</label> <a href="javascript:openModal('modal3');"
										class="link_agreement">약관보기></a>
								</div>
								<div class="check02">
									<label class="check_agree"> <input id="marketing"
										type="checkbox" name="agree" value="n" required
										label="개인정보 수집·이용"> <span class="icon"></span> 무료배송,
										할인쿠폰 등 혜택/정보 수신 동의 <span class="sub">(선택)</span>
									</label>
								</div>
								<div class="check02">
									<label class="check_agree"> <input id="fourteen_check"
										type="checkbox" name="agree" value="n" required
										label="개인정보 수집·이용"> <span class="icon"></span> 본인은 만
										14세 이상입니다. <span class="sub">(필수)</span>
									</label>
								</div>
							</td>
						</tr>
					</tbody>

				</table>

				<div id="join_submit">
					<input type="button" class="joinBtn" value="가입하기">
				</div>
			</form>
		</div>
	</div>
	<!-- 팝업 될 레이어 -->
	<div id="modal"></div>
	<div class="modal1">
		<div class="modal_header">
			<h2>
				이용약관<span class="icon2">(필수)</span>
			</h2>
			<a href="javascript:;" class="close">X</a>
		</div>
		<div class="modal_content">
			<br>
			<p>총칙</p>
			<p>제 1조(목적)</p>
			<p>이 약관은 주식회사 컬리 회사(전자상거래 사업자)가 운영하는 인터넷사이트 마켓컬리(이하 "컬리"라 한다)에서
				제공하는 전자상거래 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 컬리와 이용자의 권리, 의무 및 책임사항을
				규정함을 목적으로 합니다.</p>
			<p>*PC통신, 스마트폰 앱, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 준용합니다.</p>
			<br>
			<p>① "컬리"란 회사가 재화 또는 용역(이하 "재화 등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등
				정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 서비스를 운영하는 사업자의
				의미로도 사용합니다.</p>
			<p>② "이용자"란 "컬리"에 접속하여 이 약관에 따라 "컬리"가 제공하는 서비스를 받는 회원 및 비회원을
				말합니다.</p>
			<p>③ ‘회원’이라 함은 "컬리"에 회원등록을 한 자로서, 계속적으로 "컬리"가 제공하는 서비스를 이용할 수 있는
				자를 말합니다.</p>
			<p>④ ‘비회원’이라 함은 회원에 가입하지 않고 "컬리"가 제공하는 서비스를 이용하는 자를 말합니다.</p>
			<p>⑤ "휴면회원"이라 함은 "컬리"의 ‘회원’중 1년 이상 서비스 이용 기록이 없는 자를 말합니다. 휴면 회원은
				"컬리"의 정책에 따라 서비스 이용이 제한 될 수 있으며, 다시 서비스를 이용하기 위하여는 거래 안전 등을 위하여
				"컬리"가 정하는 본인확인 절차 등을 이행하여야 올바른 ‘회원’의 서비스를 이용할 수 있습니다.</p>
			<br>
			<p>제3조 (약관 등의 명시와 설명 및 개정)</p>
			<p>① "컬리"는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의
				주소를 포함), 전화번호/모사전송번호/전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보 보호책임자 등을 이용자가
				쉽게 알 수 있도록 컬리의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수
				있도록 할 수 있습니다.</p>
			<p>② "컬리"는 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회/배송책임/환불조건 등과
				같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야
				합니다.</p>
			<p>③ "컬리"는「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및
				전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「개인정보보호법」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등
				관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.</p>
			<p>④ "컬리"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그
				적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일
				이상의 사전 유예기간을 두고 공지합니다. 이 경우 "컬리"는 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가
				알기 쉽도록 표시합니다.</p>
			<p>⑤ "컬리"가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에
				이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의
				적용을 받기를 원하는 뜻을 제4항에 의한 개정약관의 공지기간 내에 "컬리"에 송신하여 "컬리"의 동의를 받은 경우에는
				개정약관 조항이 적용됩니다.</p>
			<p>⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률,
				약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에
				따릅니다.</p>
		</div>
		<div class="modal_footer">
			<button class="modal_confirm">확인</button>
		</div>
	</div>
	<div class="modal2">
		<div class="modal_header">
			<h2>
				개인정보 수집·이용 동의<span class="icon2">(필수)</span>
			</h2>
			<a href="javascript:;" class="close">X</a>
		</div>
		<div class="modal_content">
			<div class="box_tbl">
				<table cellpadding="0" cellspacing="0" width="100%">
					<caption class="screen_out">개인정보 수집·이용 동의 (필수)</caption>
					<thead>
						<tr>
							<th scope="row" class="tit1">수집 목적</th>
							<th scope="row" class="tit2">수집 항목</th>
							<th scope="row" class="tit3">보유 기간</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>이용자 식별 및 본인여부</td>
							<td rowspan="4">이름, 아이디, 비밀번호, 휴대폰번호, 이메일, 주소</td>
							<td rowspan="4" class="emph">회원 탈퇴 <br>즉시 파기 <br>
								<br>부정이용 방지를 위하여 30일 동안 보관 (아이디, 휴대폰 번호) 후 파기
							</td>
						</tr>
						<tr>
							<td>거점 기반 서비스 제공</td>
						</tr>
						<tr>
							<td>계약 이행 및 약관변경 등의 고지를 위한 연락, 본인의사 확인 및 민원 등의 고객 고충 처리</td>
						</tr>
						<tr>
							<td>부정 이용 방지, 비인가 사용방지 및 서비스 제공 및 계약의 이행</td>
						</tr>
						<tr>
							<td>서비스방문 및 이용기록 분석, 부정이용 방지 등을 위한 기록 관리</td>
							<td>서비스 이용기록, IP주소, 쿠키, MAC 주소, 모바일 기기정보(광고식별자, OS/ 앱 버전)</td>
							<td class="emph">회원 탈퇴 즉시 또는 이용 목적 달성 즉시 파기</td>
						</tr>
					</tbody>
				</table>
				<p class="txt_service">서비스 제공을 위해서 필요한 최소한의 개인정보입니다. 동의를 해 주셔야
					서비스를 이용하실 수 있으며, 동의하지 않으실 경우 서비스에 제한이 있을 수 있습니다.</p>
			</div>
		</div>
		<div class="modal_footer">
			<button class="modal_confirm">확인</button>
		</div>
	</div>
	<div class="modal3">
		<div class="modal_header">
			<h2>
				개인정보 수집·이용 동의<span class="icon2">(선택)</span>
			</h2>
			<a href="javascript:;" class="close">X</a>
		</div>
		<div class="modal_content">
			<div class="box_tbl">
				<table cellpadding="0" cellspacing="0" width="100%">
					<caption class="screen_out">개인정보의 수집 및 이용목적</caption>
					<thead>
						<tr>
							<th scope="row" class="tit1">수집 목적</th>
							<th scope="row" class="tit2">수집 항목</th>
							<th scope="row" class="tit3">보유 기간</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>맞춤형 회원 서비스 제공</td>
							<td>성별, 생년월일</td>
							<td class="emph">회원 탈퇴<br> 즉시 파기
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<p class="txt_service">동의를 거부하시는 경우에도 서비스는 이용하실 수 있습니다.</p>
		</div>
		<div class="modal_footer">
			<button class="modal_confirm">확인</button>
		</div>
	</div>
	<script>
  	 /* 유효성 검사 통과유무 변수 */
  	 var idCheck = false;			// 아이디
  	 var idckCheck = false;			// 아이디 중복 검사
  	 var pwCheck = false;			// 비번
  	 var pwckCheck = false;			// 비번 확인
  	 var pwckcorCheck = false;		// 비번 확인 일치 확인
  	 var nameCheck = false;			// 이름
  	 var mailCheck = false;			// 이메일
  	 var mailckCheck = false;	
  	 var phoneCheck = false;
  	 var mailnumCheck = false;		// 이메일 인증번호 확인
  	 var addressCheck = false 		// 주소
  	 
	// 아이디 중복검사
	$(".id_check").click(function(){
			var crew_id = $(".crew_id").val();
		
			 $.ajax({
				url : "idcheck",
				type : "post",
				dataType : "json",
				data : {"crew_id" : $(".crew_id").val()},
				success : function(data){
					if(data == 1){
						alert("중복되는 아이디 입니다.");
					}else if(data == 0){
						alert("사용가능한 아이디입니다.");
						$('.alert02').css("color","blue"); 
						idckCheck = true;
					}
				},
				error: function(){ /* 404, 415, 400등 이런 에러 발생 시 실행 */
	                console.log("checkDuplicating error!");
	            }
			})
		})
	// 이메일 중복검사
	$(".email_check").click(function(){
			var crew_email = $(".crew_email").val();
		
			 $.ajax({
				url : "emailcheck",
				type : "post",
				dataType : "json",
				data : {"crew_email" : $(".crew_email").val()},
				success : function(data){
					if(data == 1){
						alert("이미 존재하는 이메일 입니다.");
					}else if(data == 0){
						alert("사용가능한 이메일 입니다.");
						mailckCheck = true;
					}
				},
				error: function(){ 
	                console.log("checkDuplicating error!");
	            }
			})
		}) 
	
    //비동기식 유효성 검증
	$(document).ready(function(){
        // 아이디 유효성 검사
        var re = /^[a-zA-Z0-9]{6,12}$/;   
		var num = /[0-9]/g;
		var eng = /[a-z]/g;
		var spe = /[!~@#$%^&*()?+=\/]/g;
		
		$('.crew_id').on('propertychange change keyup paste input',function(){	                 
            if (!re.test($('.crew_id').val())) {
                $('.alert01').css("color","red");   
                return false;
            }
            else{
            	$('.alert01').css("color","blue");
            	 return false;
            }     
		});
		$('.crew_pw').on('propertychange change keyup paste input',function(){	                 
			
			if($('.crew_pw').val().length < 10 || $('.crew_pw').val().length > 20){
				 $('.alert03').css("color","red");    
				 if(!num.test($('.crew_pw').val())){
			           $('.alert04').css("color","red");   
			           return false;
			    }else if(!eng.test($('.crew_pw').val())){
			    	 $('.alert04').css("color","red");   
			           return false;
			    }else if(!spe.test($('.crew_pw').val())){
			    	 $('.alert04').css("color","red");   
			           return false;
			    }else{
			            $('.alert04').css("color","blue");
			            return false;
			    }  
				 return false;
				 
			}else{
				$('.alert03').css("color","blue");
				 return false;
			}
			
			
		});
		$('.crew_pw_check').on('propertychange change keyup paste input',function(){	             
    	
    		if($('.crew_pw_check').val() == ''){
    			$('.alert06').css("display","none");
    			$('.alert06').css("color","red");
    			$('.alert06').text("비밀번호가 일치하지 않습니다.");
    		}		
			else if($('.crew_pw').val() != $('.crew_pw_check').val()){
    			$('.alert06').css("display","block");
    			$('.alert06').css("color","red");
    			$('.alert06').text("비밀번호가 일치하지 않습니다.");
    		}
    		else if($('.crew_pw').val() == $('.crew_pw_check').val()){
    			$('.alert06').css("display","block");
    			$('.alert06').css("color","blue");
    			$('.alert06').text("비밀번호 일치");
    		}else{
    			$('.alert06').css("display","none");
    			$('.alert06').css("color","red");
    			$('.alert06').text("비밀번호가 일치하지 않습니다.");
    		}
    	});
    });
    	

        function selectAll(checkAll)  {
            const checkboxes 
                = document.getElementsByName('agree');
            
            checkboxes.forEach((checkbox) => {
                checkbox.checked = checkAll.checked;
            })
        }
        function openModal(modalname){
            document.get
            $("#modal").fadeIn(300);
            $("."+modalname).fadeIn(300);
        }

        $("#modal, .close").on('click',function(){
            $("#modal").fadeOut(300);
            $(".modal1").fadeOut(300);
            $(".modal2").fadeOut(300);
            $(".modal3").fadeOut(300);
        });

        $(".modal_confirm").on('click',function(){
            $("#modal").fadeOut(300);
            $(".modal1").fadeOut(300);
            $(".modal2").fadeOut(300);
            $(".modal3").fadeOut(300);
        })
   
        function findAddr(){
            new daum.Postcode({
                oncomplete: function(data) {                                
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                    var jibunAddr = data.jibunAddress; // 지번 주소 변수
                    document.getElementById('crew_post').value = data.zonecode;
                    if(roadAddr !== ''){
                        document.getElementById("crew_addr").value = roadAddr;
                    } 
                    else if(jibunAddr !== ''){
                        document.getElementById("crew_addr").value = jibunAddr;
                    }
                }
            }).open();

            $('.addr_search').hide();
            $('#research_addr').show();
            $('#crew_post').show();
            $('#crew_addr').show();
            $('#detail_addr').show();                  
        }

   	$(document).ready(function(){
   		//회원가입 버튼(회원가입 기능 작동)
   		$(".joinBtn").click(function(){
   			
   			/* 입력값 변수 */
   			var id = $('.crew_id').val(); 				// id 입력란
   			var pw = $('.crew_pw').val();				// 비밀번호 입력란
   			var pwck = $('.crew_pw_check').val();			// 비밀번호 확인 입력란
   			var name = $('.crew_name').val();			// 이름 입력란
   			var mail = $('.crew_email').val();			// 이메일 입력란
   			var phone = $('.crew_phone').val();
   			var addr = $('#detail_addr').val();
   			
   			/* 아이디 유효성검사 */
   			if(id == ""){
   				alert("아이디를 적어주세요");
   				$('.crew_id').focus();
   				idCheck = false;
   			}else {		
   				idCheck = true;
   			}		
   			/* 비밀번호 유효성 검사 */
   			if(pw == ""){
   				if(id != ''){
   					alert("비밀번호를 적어주세요");
   					$('.crew_pw').focus();
   				}
   				pwCheck = false;
   			}else{
   				pwCheck = true;
   			}
   			
   			/* 비밀번호 확인 유효성 검사 */
   			if(pwck == ""){
   				if(id != "" && pw != ""){
   					alert("비밀번호가 일치하지 않습니다.");
   					$('.crew_pw_check').focus();
   				}
   				pwckCheck = false;
   			}else{
   				pwckCheck = true;
   			}
   			/* 이름 유효성 검사 */
   			if(name == ""){
   				if(id != "" && pw != "" && pwck != ""){
   					alert("이름을 적어주세요.");
   					$('.crew_name').focus();
   				}
   				nameCheck = false;
   			}else{
   				
   				nameCheck = true;
   			}		
   			
   			/* 이메일 유효성 검사 */
   			if(mail == ""){
   				if(id != "" && pw != "" && pwck != "" && name !=""){
   					alert("이메일을 적어주세요.");
   					$('.crew_email').focus();
   				}
   				mailCheck = false;
   			}else{
   				
   				mailCheck = true;
   			}		
   			if(phone == ""){
   				if(id != "" && pw != "" && pwck != "" && name !="" && mail !=""){
   					alert("휴대폰 정보를 적어주세요.");
   					$('.crew_phone').focus();
   				}	
   				phoneCheck = false;
   			}else{
   				phoneCheck = true;
   			}	
   			/* 주소 유효성 검사 */
   			if(addr == ""){	
   				if(id != "" && pw != "" && pwck != "" && name !="" && mail !="" && phone !=""){
   					alert("주소를 입력해 주세요");
   					$('.detail_addr').focus();
   				}	
   				addressCheck = false;
   			}else{
   				addressCheck = true;
   			}		
   			
   			/* 최종 유효성 검사 */
   			if(idCheck&&pwCheck&&nameCheck&&mailCheck&&addressCheck&&phoneCheck&&mailckCheck&&idckCheck){
   				console.log("test");
   				$(".join_form").attr("action", "join");
   				$(".join_form").submit();			
   				
   			}		
   			return false;
   		});
   	});    
    </script>
</body>
</html>