<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NO NAME</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/kfonts2.css" rel="stylesheet">
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

a:hover {
	text-decoration: none;
	font-weight: bold;
	color: #646464;
}

.main-menu li:hover .sub-menu {
	opacity: 1;
	visibility: visible;
	background-color: #f8f8f8;
	border: 1px solid;
	border-color: #e7e7e7;
	padding: 10px;
}

a:link, a:visited, a:active {
	text-decoration: none;
	color: #646464;
}

.main-menu {
	float: left;
	padding: 20px;
	font-size: 15px;
}

.navbar-header {
	padding-left: 110px;
}

.navbar-header2 {
	padding-right: 110px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
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
				<a class="navbar-brand" href="mainPage.do">
					NO
					<br>
					NAME
				</a>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>

			<div class="navbar-header2">
				<div class="collapse navbar-collapse navbar-right navbar-1-collapse">
					<ul class="main-menu">
						<li><a class="text-muted" href="#">SHOP</a>
							<ul class="sub-menu">
								<li><a href="#">OUTER</a></li>
								<li><a href="#">TOP</a></li>
								<li><a href="#">BOTTOM</a></li>
							</ul></li>
					</ul>
					<c:choose>
						<c:when test="${empty sessionScope.id}">
							<ul class="main-menu">
								<li><a class="text-muted" href="SignIn2.jsp">LOGIN</a></li>
							</ul>
						</c:when>
						<c:otherwise>
							<ul class="main-menu">
								<li><a class="text-muted" href="logout.do">LOGOUT</a></li>
							</ul>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${sessionScope.id eq 'Admin'}">
							<ul class="main-menu">
								<li><a class="text-muted" href="adminPage.jsp">ADMINPAGE</a></li>
							</ul>

						</c:when>
						<c:otherwise>
							<ul class="main-menu">
								<li><a class="text-muted" href="myPage.do">MYPAGE</a></li>
							</ul>
						</c:otherwise>
					</c:choose>
					<ul class="main-menu">
						<li><a class="text-muted" href="#">BOARD </a>
							<ul class="sub-menu">
								<li><a href="qnaList.do">Q&A</a></li>
								<li><a href="reviewList.do">REVIEW</a></li>
								<li><a href="noticeList.do">NOTICE</a></li>
							</ul></li>
					</ul>
					<ul class="main-menu">
						<li><a class="text-muted" href="cart.jsp">CART</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
</body>
</html>
