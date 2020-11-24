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
<style type="text/css">
#header .nav {
	padding-top: 10px;
}

#header .dropdown-item {
	color: #6c757d;
	display: inline;
	padding: .5rem 1rem;
	font-size: 16px;
	font-weight: 600;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		"Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
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
<body>
	<div class="header" id="header">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<div class="container">
				<a class="navbar-brand" href="mainPage/index.html">NONAME</a>

				<div class="collapse navbar-collapse" id="navbarResponsive">
					<nav class="nav">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="SignIn2.jsp">LOGIN</a></li>
							<li class="nav-item"><a class="nav-link" href="#">MY PAGE</a></li>
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#"
									id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="true"> CUSTOMER SERVICE </a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="#">REVIEW</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">QNA</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">NOTICE</a>
								</div></li>
							<li class="nav-item"><a class="nav-link" href="#">
									<img alt="" src="img/cart.png" width="30px;">CART
								</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</nav>
	</div>
</body>
</html>

