<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/css/kfonts2.css" rel="stylesheet">
<link href="css/maincss.css" rel="stylesheet">

<style>
body {
	font-family: 'Lato', sans-serif;
	background-color: #f8f8f8;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {

	});
</script>

</head>
<jsp:include page="header.jsp"></jsp:include>
<body id="singUp">
	<div class="wrap">
		<div class="mainWrap">
			<section class="container">
				<div>
					<h2>Create Account</h2>
				</div>
				<form action="">
					<h3>기본정보</h3>
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
									<td><input id="member_id" name="member_id" class="inputTypeText" placeholder=""
											value="" type="text"
										> (영문소문자/숫자, 4~16자)</td>
								</tr>
								<tr>
									<th scope="row">비밀번호 <img class="reqImg"
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"
									>
									</th>
									<td><input id="member_id" name="member_pw" class="inputTypeText" placeholder=""
											value="" type="text"
										> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</td>
								</tr>
								<tr>
									<th scope="row">비밀번호확인 <img class="reqImg"
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"
									>
									</th>
									<td><input id="member_id" name="member_pw_confirm" class="inputTypeText"
											placeholder="" value="" type="text"
										></td>
								</tr>
								<tr>
									<th scope="row">주소</th>
									<td><input id="postcode1" name="postcode1" class="" placeholder=""
											readonly="readonly" maxlength="14" value="" type="text"
										> <a href="#none" onclick="" id="postBtn"> <img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_zipcode.gif" alt="우편번호"
										>
									</a> <br> <input id="addr1" name="addr1" class="" placeholder="" readonly="readonly"
											value="" type="text"
										> 기본주소 <br> <input id="addr2" name="addr2" class="" placeholder="" value=""
											type="text"
										> 나머지주소(선택입력가능)</td>
								<tr class="">
									<th scope="row">일반전화 <img class="reqImg"
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone"
										alt="필수"
									>
									</th>
									<td><select id="phone1" name="phone[]">
											<option value="02">02</option>
											<option value="031">031</option>
											<option value="032">032</option>
											<option value="033">033</option>
											<option value="041">041</option>
											<option value="042">042</option>
											<option value="043">043</option>
											<option value="044">044</option>
											<option value="051">051</option>
											<option value="052">052</option>
											<option value="053">053</option>
											<option value="054">054</option>
											<option value="055">055</option>
											<option value="061">061</option>
											<option value="062">062</option>
											<option value="063">063</option>
											<option value="064">064</option>
											<option value="070">070</option>
									</select> - <input id="phone2" name="phone[]" maxlength="4" value="" type="text" class="tel">
										- <input id="phone3" name="phone[]" maxlength="4" value="" type="text" class="tel">
									</td>
								</tr>
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
								<tr>
									<th scope="row">이메일 <img class="reqImg"
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"
									>
									</th>
									<td><input id="email1" name="email1" value="" type="text"></td>
								</tr>
							</tbody>
						</table>
					</div>
					<h3>추가정보</h3>
					<div>
						<table class="table">
							<colgroup>
								<col style="width: 150px;">
								<col style="width: auto;">
							</colgroup>
							<tbody>
								<tr class="">
									<th scope="row">생년월일 <img class="reqImg"
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone"
										alt="필수"
									>
									</th>
									<td><input id="birth_year" name="birth_year" class="tel" maxlength="4" value=""
											type="text"
										> 년 <input id="birth_month" name="birth_month" class="tel" maxlength="2" value=""
											type="text"
										> 월 <input id="birth_day" name="birth_day" class="tel" maxlength="2" value=""
											type="text"
										> 일</td>
								</tr>
							</tbody>
						</table>
					</div>
					<h3>이용약관</h3>
					<div class="">
						<p>
							<span>
								<input type="checkbox" id="sAgreeAllChecked">
								<label for="sAgreeAllChecked"> <strong>이용약관 및 개인정보수집 및 이용, 쇼핑정보 수신(선택)에 모두
										동의합니다.</strong>
								</label>
							</span>
						</p>
						<br>
						<h4>[필수]이용약관동의</h4>
						<div style="overflow: scroll; width: 970px; height: 200px;">
							<p>
								<font face="">제1조(목적) <br> 이 약관은 라룸 회사(전자상거래 사업자)가 운영하는 라룸 사이버 몰(이하 “몰”이라 한다)에서
									제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리․의무 및 책임사항을 규정함을 목적으로 합니다. <br>
									※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」
								</font>
							</p>
							<p>
								<font face=""> 제2조(정의) <br> ① “몰”이란 라룸회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기
									위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다. <br>
									② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다. <br> ③ ‘회원’이라 함은 “몰”에
									(삭제) 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다. <br> ④ ‘비회원’이라 함은 회원에 가입하지
									않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.
								</font>
							</p>
							<p>
								<font face="Tahoma"> 제3조 (약관 등의 명시와 설명 및 개정) <br>① “몰”은 이 약관의 내용과 상호 및 대표자 성명,
									영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호․모사전송번호․전자우편주소, 사업자등록번호, 통신판매업 신고번호,
									개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 라룸 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수
									있도록 할 수 있습니다. <br>② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회․배송책임․환불조건 등과 같은 중요한
									내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다. <br>③ “몰”은 「전자상거래 등에서의
									소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호
									등에 관한 법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다. <br>④
									“몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만,
									이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "몰“은 개정 전 내용과 개정 후 내용을 명확하게
									비교하여 이용자가 알기 쉽도록 표시합니다. <br>⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그
									이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에
									의한 개정약관의 공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다. <br>⑥ 이 약관에서 정하지 아니한 사항과
									이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침
									및 관계법령 또는 상관례에 따릅니다.
								</font>
							</p>
							<p>
								<font face="Tahoma"> 제4조(서비스의 제공 및 변경) <br> ① “몰”은 다음과 같은 업무를 수행합니다. <br>&nbsp;
									1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결 <br>&nbsp; 2. 구매계약이 체결된 재화 또는 용역의 배송 <br>&nbsp;
									3. 기타 “몰”이 정하는 업무 <br>② “몰”은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화
									또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시
									공지합니다.<br>③ “몰”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그
									사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다. <br>④ 전항의 경우 “몰”은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “몰”이
									고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
								</font>
							</p>
						</div>
						<p>
							<span>이용약관에 동의하십니까?</span>
							<input id="agree_service_check0" name="agree_service_check[]" value="1" type="checkbox">
							<label for="agree_service_check0">동의함</label>
						</p>
						<br>
						<h4>[필수]개인정보 수집 및 이용 동의</h4>
						<div style="overflow: scroll; width: 970px; height: 200px;">
							<p>
								<span style="font-size: 9pt;">1. 개인정보 수집목적 및 이용목적</span>
							</p>
							<p>가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산</p>
							<p>콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스</p>
							<p>나. 회원 관리</p>
							<p>회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인 , 만14세 미만
								아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 등 민원처리 , 고지사항 전달</p>
							<p>2. 수집하는 개인정보 항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 자택 전화번호 , 휴대전화번호 , 이메일 , 14세미만 가입자의
								경우 법정대리인의 정보</p>
							<p>3. 개인정보의 보유기간 및 이용기간</p>
							<p>원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안
								보존합니다.</p>
							<p>가. 회사 내부 방침에 의한 정보 보유 사유</p>
							<p>o 부정거래 방지 및 쇼핑몰 운영방침에 따른 보관 : OO년</p>
							<p>나. 관련 법령에 의한 정보보유 사유</p>
							<p>o 계약 또는 청약철회 등에 관한 기록</p>
							<p>-보존이유 : 전자상거래등에서의소비자보호에관한법률</p>
							<p>-보존기간 : 5년</p>
							<p>o 대금 결제 및 재화 등의 공급에 관한 기록</p>
							<p>-보존이유: 전자상거래등에서의소비자보호에관한법률</p>
							<p>-보존기간 : 5년&nbsp;</p>
							<p>o 소비자 불만 또는 분쟁처리에 관한 기록</p>
							<p>-보존이유 : 전자상거래등에서의소비자보호에관한법률</p>
							<p>-보존기간 : 3년&nbsp;</p>
							<p>o 로그 기록&nbsp;</p>
							<p>-보존이유: 통신비밀보호법</p>
							<p>-보존기간 : 3개월</p>
							<p>※ 동의를 거부할 수 있으나 거부시 회원 가입이 불가능합니다.</p>
						</div>
						<p>
							<span>이용약관에 동의하십니까?</span>
							<input id="agree_service_check0" name="agree_service_check[]" value="2" type="checkbox">
							<label for="agree_service_check0">동의함</label>
						</p>
						<br>
						<h4>[선택]쇼핑정보 수신 동의</h4>
						<div style="overflow: scroll; width: 970px; height: 200px;">
							<p>할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 유익한 쇼핑정보를 SMS나 이메일로 받아보실 수 있습니다.</p>
							<p>단, 주문/거래 정보 및 주요 정책과 관련된 내용은 수신동의 여부와 관계없이 발송됩니다.</p>
							<p>선택 약관에 동의하지 않으셔도 회원가입은 가능하며, 회원가입 후 회원정보수정 페이지에서 언제든지 수신여부를 변경하실 수 있습니다.</p>
						</div>
						<p>
							<span>SMS 수신을 동의하십니까?</span>
							<input id="agree_service_check0" name="agree_service_check[]" value="3" type="checkbox">
							<label for="agree_service_check0">동의함</label>
							<br>
							<span>이메일 수신을 동의하십니까?</span>
							<input id="agree_service_check0" name="agree_service_check[]" value="4" type="checkbox">
							<label for="agree_service_check0">동의함</label>

						</p>
						<div class="">
							<a href="#none" onclick="" class="signin"> <img
								src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_member_join1.gif" alt="회원가입"
							>
							</a>
						</div>
						<br>
					</div>
				</form>
			</section>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>

</body>
</html>
