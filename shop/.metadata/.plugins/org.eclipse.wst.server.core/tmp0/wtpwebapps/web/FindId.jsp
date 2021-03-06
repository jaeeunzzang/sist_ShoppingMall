<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/kfonts2.css" rel="stylesheet">
<link href="css/maincss.css" rel="stylesheet">
<style>
#findId .mainWrap {
padding-top: 100px;
padding-bottom: 60px;
}
#findId {
	font-family: 'Lato', sans-serif;
	background-color: #f8f8f8;
}

#findId .mainWrap .container {
	position: relative;
	overflow: hidden;
	width: 400px;
	height: 500px; 
	margin: 80px auto 80px;
	background-color: #ffffff;
	box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
	padding-top: 40px;
	padding-bottom: 40px;
}

#findId .mainWrap .container input.submit {
	font-size: 12px;
	line-height: 42px;
	display: block;
	width: 40%;
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
	left: 30%;
}

#findId .mainWrap .container input.submit:hover {
	background-color: #777777;
	color: #ffffff;
	-moz-transition: all 0.2s;
	-o-transition: all 0.2s;
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
}

#findId .mainWrap .container .mobile {
	width: 47px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("input[name=check_method]").change(function() {
			if ($(this).val() == 2) {
				$(".findByEmail").css("display", "block");
				$(".findByPhone").css("display", "none");
			} else {
				$(".findByEmail").css("display", "none");
				$(".findByPhone").css("display", "block");
			}
		});
	});
</script>

</head>
<jsp:include page="header.jsp"></jsp:include>
<body id="findId">
	<div class="wrap">
		<div class="mainWrap">
			<div class="container">
				<h3 align="center">아이디찾기</h3>
				<br><br>
				<form action="">
					<div>
						<p>
							<input id="check_method1" name="check_method" value="2" type="radio" checked="checked">
							<label for="check_method1">이메일</label>
							<input id="check_method2" name="check_method" value="3" type="radio">
							<label for="check_method2">휴대폰번호</label><br><br>
						</p>
						<table class="table">
							<col style="width: 170px;">
							<col style="width: auto;">
							<tbody>
								<tr>
									<td><strong>이름</strong></td>
									<td><input id="name" name="name" class="" placeholder="" value="" type="text">
									</td>
								</tr>
								<tr>
									<td>
										<p class="findByEmail" style="">
											<strong>이메일로찾기</strong>
										</p>
										<p class="findByPhone" style="display: none">
											<strong>휴대폰번호로찾기</strong>
										</p>
									</td>
									<td>
										<p class="findByEmail" style="">
											<input id="email" name="email" class="" placeholder="" value="" type="text">
										</p>
										<p class="findByPhone" style="display: none">
											<input id="mobile1" name="mobile1" class="mobile" maxlength="3" value="" type="text">
											-
											<input id="mobile2" name="mobile2" class="mobile" maxlength="3" value="" type="text">
											-
											<input id="mobile3" name="mobile3" class="mobile" maxlength="3" value="" type="text">
										</p>
									</td>
								</tr>
							</tbody>
						</table>
						<input type="submit" value="확인" class="submit">
						<br>
					</div>
				</form>
			</div>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
