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
#memberInfoMod {
	font-family: 'Lato', sans-serif;
	background-color: #f8f8f8;
}

#memberInfoMod .mainWrp .container {
	position: relative;
	overflow: hidden;
	width: 1000px;
	margin: 80px auto 80px;
	background-color: #ffffff;
	box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
}

#memberInfoMod .mainWrp .container input.submit {
	font-size: 12px;
	line-height: 42px;
	width: 30%;
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

#memberInfoMod .mainWrp .container input.submit:hover {
	background-color: #263238;
	color: #ffffff;
	-moz-transition: all 0.2s;
	-o-transition: all 0.2s;
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
}

#memberInfoMod .mainWrp .container .tel {
	width: 47px;
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
<body id="memberInfoMod">
	<div class="wrap">
		<div class="mainWrap">
			<div class="container">
				<div>
					<h2>Create Account</h2>
				</div>
				<form action="">
					<h3>기본정보</h3>
					<p>
						<img class="reqImg" src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
							alt="필수"> 필수입력사항
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
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수">
									</th>
									<td><input id="member_id" name="member_id" class="inputTypeText" placeholder=""
										value="" type="text"> (영문소문자/숫자, 4~16자)</td>
								</tr>
								<tr>
									<th scope="row">비밀번호 <img class="reqImg"
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수">
									</th>
									<td><input id="member_id" name="member_pw" class="inputTypeText" placeholder=""
										value="" type="text"> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</td>
								</tr>
								<tr>
									<th scope="row">비밀번호확인 <img class="reqImg"
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수">
									</th>
									<td><input id="member_id" name="member_pw_confirm" class="inputTypeText"
										placeholder="" value="" type="text"></td>
								</tr>
								<tr>
									<th scope="row">주소</th>
									<td><input id="postcode1" name="postcode1" class="" placeholder=""
										readonly="readonly" maxlength="14" value="" type="text"> <a href="#none"
											onclick="" id="postBtn">
											<img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_zipcode.gif" alt="우편번호">
										</a> <br> <input id="addr1" name="addr1" class="" placeholder="" readonly="readonly"
										value="" type="text"> 기본주소 <br> <input id="addr2" name="addr2" class=""
										placeholder="" value="" type="text"> 나머지주소(선택입력가능)</td>
								<tr class="">
									<th scope="row">일반전화 <img class="reqImg"
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone"
										alt="필수">
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
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="" alt="필수">
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
										src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수">
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
										alt="필수">
									</th>
									<td><input id="birth_year" name="birth_year" class="tel" maxlength="4" value=""
										type="text"> 년 <input id="birth_month" name="birth_month" class="tel"
										maxlength="2" value="" type="text"> 월 <input id="birth_day" name="birth_day"
										class="tel" maxlength="2" value="" type="text"> 일</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="submit-wrap" align="center">
						<input type="submit" value="정보수정" class="submit" style="width: 30%; height: 42px;"> <input
							type="submit" value="회원탈퇴" class="submit" style="width: 30%; height: 42px;">
					</div>
					<br>
			</div>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
