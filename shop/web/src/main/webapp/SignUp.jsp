<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NO NAME SIGNUP</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/css/kfonts2.css" rel="stylesheet">
<link href="css/maincss.css" rel="stylesheet">

<style>
.mainWrp .container input.submit:hover {
	background-color: #263238;
	color: #ffffff;
	-moz-transition: all 0.2s;
	-o-transition: all 0.2s;
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
}
.mainWrp .container input.submit {
	font-size: 12px;
	line-height: 42px;
	width: 20%;
	height: 42px;
	cursor: pointer;
	vertical-align: middle;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #263238;
	border: 1px solid #263238;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	position: relative;
	left: 20%;
}
.birth{
	width: 50px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
function openZipSearch(){
	new daum.Postcode({
		oncomplete: function(data) {
			$('#postcode1').val(data.zonecode); // 우편번호 (5자리)
			$('#addr1').val(data.address);
			$('#addr2').val(data.buildingName);
		}
	}).open();
}
	$(function() {
		//아이디 중복체크
		$('#m_id').blur(function(){
	        $.ajax({
		     type:"POST",
		     url:"sameIdCheck.do",
		     data:{
		            "id":$('#m_id').val()
		     },
		     success:function(data){	//data : checkSignup에서 넘겨준 결과값
		            if($.trim(data)=="YES"){
		               if($('#m_id').val()!=''){ 
		               	alert("사용가능한 아이디입니다.");
		               }
		           	}else{
		               if($('#m_id').val()!=''){
		                  alert("중복된 아이디입니다.");
		                  $('#m_id').val('');
		                  $('#m_id').focus();
		               }
		            }
		         }
		    }) 
	     })

		
		
		$('#signUp').click(function(){
			//비밀번호 유효성체크
			if($('#m_pw').val()==$('#m_pw_confirm').val()){
			}else alert('비밀번호를 다시한번 확인하세요.');
			
			var m_addr = $("#postcode1").val()+$("#addr1").val()+$("#addr2").val();
			var hp = $("#mobile1").val()+"-"+$("#mobile2").val()+"-"+$("#mobile3").val();
			var birth = $("#birth_year").val()+"-"+$("#birth_month").val()+"-"+$("#birth_day").val();
			$("#m_addr").val(m_addr);
			$("#hp").val(hp);
			$("#birth").val(birth);
			
			//필수항목 체크
			if($("#m_id").val().length==0||$("#m_pw").val().length==0||$("#addr1").val().length==0||$("#addr2").val().length==0||
					$("#mobile1").val().length==0||$("#mobile2").val().length==0||$("#mobile3").val().length==0) alert('필수항목을 입력하세요.');
			//submit
			$("#signUpFrm").submit();
		});
	});
</script>

</head>
<jsp:include page="header.jsp"></jsp:include>
<body id="singUp">
	<div class="wrap">
		<div class="mainWrap">
			<div class="mainContents">
				<h1 align="center">Create Account</h1><br><br><br><br>
				<form id="signUpFrm" action="signUp.do" method="post">
					<h4>기본정보</h4><br><br>
					<p>
						<img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수">
						필수입력사항
					</p>
					<div>
						<table class="table">
							<colgroup>
								<col style="width: 150px;">
								<col style="width: auto;">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">아이디 <img class="reqImg"
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"
									>
									</th>
									<td><input id="m_id" name="m_id" class="inputTypeText" placeholder=""
											value="" type="text"
										> (영문소문자/숫자, 4~16자)
										<div class="check_font" id="id_check"></div></td>
								</tr>
								<tr>
									<th scope="row">비밀번호 <img class="reqImg"
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"
									>
									</th>
									<td><input id="m_pw" name="m_pw" class="inputTypeText" placeholder=""
											value="" type="password"
										> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</td>
								</tr>
								<tr>
									<th scope="row">비밀번호확인 <img class="reqImg"
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"
									>
									</th>
									<td><input id="m_pw_confirm" name="m_pw_confirm" class="inputTypeText"
											placeholder="" value="" type="password"
										></td>
								</tr>
								<tr>
									<th scope="row">이름 <img class="reqImg"
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"
									>
									</th>
									<td>
									<input id="m_name" name="m_name" class="inputTypeText" type="text">
									</td>
								</tr>
								<tr>
									<th scope="row">성별<img class="reqImg"
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"
									>
									</th>
									<td>
										<select id="gender" name="gender">
											<option value="남성">남성</option>
											<option value="여성">여성</option>
										</select>
									</td>
								</tr>
								<tr>
									<th scope="row">주소<img class="reqImg"
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"
									></th>
									<td><input id="postcode1" name="postcode1" class="" placeholder=""
											readonly="readonly" maxlength="14" value="" type="text"
										> <a href="#none" onclick="openZipSearch()" id="postBtn"> <img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_zipcode.gif" alt="우편번호"
										>
									</a> <br> <input id="addr1" name="addr1" class="" placeholder="" readonly="readonly"
											value="" type="text"
										> 기본주소 <br> <input id="addr2" name="addr2" class="" placeholder="" value=""
											type="text"
										> 나머지주소(선택입력가능)</td>
								
								<tr class="">
									<th scope="row">휴대전화 <img class="reqImg"
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="" alt="필수"
									>
									</th>
									<td><select id="mobile1" name="mobile[]">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
									</select> - <input id="mobile2" name="mobile[]" maxlength="4" value="" type="text" class="tel">
										- <input id="mobile3" name="mobile[]" maxlength="4" value="" type="text" class="tel">
									</td>
								</tr>
							</tbody>
						</table>
					</div><br><br>
					<h4>추가정보</h4><br><br>
					<div>
						<table class="table">
							<colgroup>
								<col style="width: 150px;">
								<col style="width: auto;">
							</colgroup>
							<tbody>
								<tr class="">
									<th scope="row">생년월일
									</th>
									<td><input id="birth_year" name="birth_year" class="birth" maxlength="4" value=""
											type="text"
										> 년 <input id="birth_month" name="birth_month" class="birth" maxlength="2" value=""
											type="text"
										> 월 <input id="birth_day" name="birth_day" class="birth" maxlength="2" value=""
											type="text"
										> 일</td>
										<input id="birth" name="birth" type="hidden">
										<input id="m_addr" name="m_addr" type="hidden">
										<input id="hp" name="hp" type="hidden">
										
								</tr>
							</tbody>
						</table>
					</div><br><br>
				</form>
					
						<div class="submit-wrap" align="center">
							<input type="button" id="signUp" value="회원가입" class="submit" style="width: 20%; height: 42px;"> 
						</div>
						<br>
					</div>
			</div>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>

</body>
</html>
