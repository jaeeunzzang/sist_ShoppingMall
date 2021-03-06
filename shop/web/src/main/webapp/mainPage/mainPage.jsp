<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>NO NAME</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<style>

/*헤더  */
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
	background-color: #f8f8f8;
	border: 1px solid;
	border-color: #e7e7e7;
	padding: 10px;
}

a:link, a:visited, a:active {
	text-decoration: none;
	color: #646464;
}

a:hover {
	text-decoration: none;
	font-weight: bold;
	color: #646464;
}

.main-menu {
	float: left;
	padding: 20px;
	font-size: 15px;
}

.navbar-brand {
	padding-left: 110px;
}

.navbar-header2 {
	padding-right: 110px;
}

/* 상품이미지 */
.product {
	padding-bottom: 30px;
}

/* 캐러셀 */
.container {
	padding-top: 50px;
	padding-bottom: 50px;
}

.carousel-inner>.item>img {
	top: 0;
	left: 0;
	min-width: 100%;
	height: 500px;
}
</style>
</head>
<body>

	<!--헤더  -->
	<div class="container">
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">
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
								<li><a class="text-muted" href="/web/logout.do">LOGOUT</a></li>
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
								<li><a class="text-muted" href="/web/myPage.do">MYPAGE</a></li>
							</ul>
						</c:otherwise>
					</c:choose>
					<ul class="main-menu">
						<li><a class="text-muted" href="#">BOARD</a>
							<ul class="sub-menu">
								<li><a href="/web/qnaList.do">Q&A</a></li>
								<li><a href="/web/reviewList.do">REVIEW</a></li>
								<li><a href="/web/noticeList.do">NOTICE</a></li>
							</ul></li>
					</ul>
					<ul class="main-menu">
						<li><a class="text-muted" href="cart.jsp">CART</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<!--헤더 끝  -->


	<!-- 캐러셀 슬라이드 -->
	<div class="container">
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel"
			style="height: 500px">

			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="mainPage/img/8.jpg" alt="...">
				</div>
				<div class="item">
					<img src="mainPage/img/2.jpg" alt="...">
				</div>
				<div class="item">
					<img src="mainPage/img/3.jpg" alt="...">
				</div>
			</div>

			<a class="left carousel-control" href="#carousel-example-generic" role="button"
				data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" role="button"
				data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			</a>
		</div>
	</div>


	<!-- 상품이미지 -->
	<div class="container">
		<div class="row product">

			<c:forEach var="i" items="${pList}" varStatus="cnt">

				<div class="col-md-4" style="width: 390px; padding-bottom: 50px;">
					<a href="/web/productDetail.do?p_no=${i.p_no}">
						<img class="card-img-top" src="mainPage/img/${i.p_fileName}" width=100% height="450">
					</a>
				</div>
			</c:forEach>

		</div>
	</div>

	<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>
