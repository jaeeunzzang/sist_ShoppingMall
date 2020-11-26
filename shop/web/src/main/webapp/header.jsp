<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/web/shop/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/shop/css/kfonts2.css" rel="stylesheet">
<style>
.main-menu, .sub-menu {
	list-style-type: none;
	margin: 0;
	padding: 0;
}
.sub-menu {
	position: absolute;
	opacity: 0;
	visibility: none;
}

.sub-menu li {
	padding-top: 30px;
	font-size: 13px;
}

.main-menu li:hover .sub-menu {
	opacity: 1;
	visibility: visible;
}
.main-menu{
	float: left;
	padding: 20px;
	font-size: 15px;
}
.navbar-brand{
padding-left: 100px;
}

</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/shop/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {

	});
</script>

</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">NO<br>NAME </a>
			</div>
			<div class="collapse navbar-collapse navbar-right navbar-1-collapse">
				<ul class="main-menu">
					<li><a class="text-muted" href="#">SHOP</a>
						<ul class="sub-menu">
							<li><a href="#">OUTER</a></li>
							<li><a href="#">TOP</a></li>
							<li><a href="#">BOTTOM</a></li>
						</ul>
					</li>
				</ul>
				<ul class="main-menu">
					<li><a class="text-muted"  href="SignIn2.jsp">LOGIN</a></li>
				</ul>
				<ul class="main-menu">
					<li><a class="text-muted" href="myPage.jsp">MYPAGE</a></li>
				</ul>	
				<ul class="main-menu">
					<li><a class="text-muted" href="#">BOARD </a>
						<ul class="sub-menu">
							<li><a href="qnaList.do">Q&A</a></li>
							<li><a href="reviewList.do">REVIEW</a></li>
							<li><a href="noticeList.do">NOTICE</a></li>
						</ul>
					</li>
				</ul>
				<ul class="main-menu">
					<li><a class="text-muted" href="cart.jsp">CART</a></li>
				</ul>
			</div>
		</nav>
	</div>
</body>
</html>