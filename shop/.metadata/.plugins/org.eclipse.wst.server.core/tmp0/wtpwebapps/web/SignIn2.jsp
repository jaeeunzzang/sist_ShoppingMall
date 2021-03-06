<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>NO NAME LOGIN</title>
<link href="css/maincss.css" rel="stylesheet">
<style rel="stylesheet">
@import url(https://fonts.googleapis.com/css?family=Lato:400,700);

* {
	box-sizing: border-box;
}

#signIn {
	font-family: 'Lato', sans-serif;
	background-color: #f8f8f8;
}

#signIn .mainWrap .container {
	position: relative;
	overflow: hidden;
	width: 400px;
	height: 550px;
	margin: 80px auto 0;
	background-color: #ffffff;
	box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
}

#signIn .mainWrap .container .half {
	float: left;
	width: 100%;
	height: 100%;
	padding: 58px 40px 0;
}

#signIn .mainWrap .container h1 {
	font-size: 18px;
	font-weight: 700;
	margin-bottom: 23px;
	text-align: center;
	text-indent: 6px;
	letter-spacing: 7px;
	text-transform: uppercase;
	color: #263238;
}

#signIn .mainWrap .container .tabs {
	width: 100%;
	margin-bottom: 29px;
	border-bottom: 1px solid #d9d9d9;
}

#signIn .mainWrap .container .tabs .tab {
	display: inline-block;
	margin-bottom: -1px;
	padding: 20px 15px 10px;
	cursor: pointer;
	letter-spacing: 0;
	border-bottom: 1px solid #d9d9d9;
	user-select: none;
	transition: all 0.1s ease-in-out;
}

#signIn .mainWrap .container .tabs .tab a {
	font-size: 11px;
	text-decoration: none;
	text-transform: uppercase;
	color: #d9d9d9;
	transition: all 0.1s ease-in-out;
}

#signIn .mainWrap .container .tabs .tab.active a, #signIn .container .tabs .tab:hover a
	{
	color: #263238;
}

#signIn .mainWrap .container .tabs .tab.active {
	border-bottom: 1px solid #263238;
}

#signIn .mainWrap .container .content form {
	position: relative;
	height: 320px;
}

#signIn .mainWrap .container .content label {
	font-size: 12px;
	color: #263238;
	-moz-user-select: -moz-none;
	-ms-user-select: none;
	-webkit-user-select: none;
	user-select: none;
}

#signIn .mainWrap .container .content input.inpt {
	font-size: 14px;
	display: block;
	width: 100%;
	height: 42px;
	margin-bottom: 12px;
	padding: 16px 13px;
	color: #999999;
	border: 1px solid #d9d9d9;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
}

#signIn .mainWrap .container .content input.inpt::-webkit-input-placeholder
	{
	font-size: 14px;
	color: #999999;
	font-family: 'Lato', sans-serif;
}

#signIn .mainWrap .container .content input.inpt:focus {
	border-color: #999999;
}

#signIn .mainWrap .container .content input.submit {
	font-size: 12px;
	line-height: 42px;
	display: block;
	width: 100%;
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
}

#signIn .mainWrap .container .content input.submit:hover {
	background-color: #263238;
	color: #ffffff;
	-moz-transition: all 0.2s;
	-o-transition: all 0.2s;
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
}

#signIn .mainWrap .container .content input:focus {
	outline: none;
}

#signIn .mainWrap .container .content .checkbox {
	margin-top: 4px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	width: 0;
	height: 0;
	margin: 17px -1px;
	padding: 0;
	border: 0;
}

#signIn .mainWrap .container .content .checkbox+label {
	vertical-align: middle;
	display: inline-block;
	width: 50%;
}

#signIn .mainWrap .container .content .checkbox+label:before {
	content: "\A";
	color: #999999;
	font-family: Verdana;
	font-weight: bold;
	font-size: 8px;
	line-height: 10px;
	text-align: center;
	display: inline-block;
	vertical-align: middle;
	position: relative;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	background: transparent;
	border: 1px solid #d9d9d9;
	width: 11px;
	height: 11px;
	margin: -2px 8px 0 0;
}

#signIn .mainWrap .container .content .submit-wrap {
	position: absolute;
	bottom: 0;
	width: 100%;
}

#signIn .mainWrap .container .content .submit-wrap a {
	font-size: 12px;
	display: block;
	margin-top: 20px;
	text-align: center;
	text-decoration: none;
	color: #999999;
}

#signIn .mainWrap .container .content .submit-wrap a:hover {
	text-decoration: underline;
}

#signIn .mainWrap .container .content .signup-cont {
	display: none;
}
</style>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body id="signIn">
	<div class="wrap">
		<div class="mainWrap">
			<section class="container">
				<article class="half">
					<h1>NONAME</h1>
					<div class="tabs">
						<span class="tab signin active">
							<a href="#signin">Sign in</a>
						</span>
					</div>
					<div class="content">
						<div class="signin-cont cont">
							<form action="loginCheck.do?state=login" method="post" enctype="multipart/form-data">
								<label for="id">Your ID</label> <input type="text" name="m_id" id="m_id" class="inpt"
									required="required" placeholder="Your ID"> <label for="password">Your
									password</label> <input type="password" name="m_pw" id="m_pw" class="inpt" required="required"
									placeholder="Your password">
								<div class="submit-wrap">
									<input type="submit" value="Sign in" class="submit"> <input type="button"
										id="signUp" value="회원가입" class="submit">
									<a href="FindPW.jsp" class="more">Forgot your password</a>
									<a href="FindId.jsp" class="more">or id?</a>
								</div>
							</form>
						</div>
					</div>
				</article>
				<div class="half bg"></div>
			</section>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>



	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#signUp").click(function() {
				document.location.href = "SignUp.jsp";
			});
		});
	</script>
</body>
</html>