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
a:link {
	text-decoration: none;
	color: #646464;
}

a:visited {
	text-decoration: none;
	color: #646464;
}

a:active {
	text-decoration: none;
	color: #646464;
}

a:hover {
	text-decoration: none;
	color: #646464;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {

	});
</script>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<div class="wrap">
		<div class="mainWrap">
			<div class="mainContents">
				<div class="container">
					<div class="jumbotron text-center" style="background-color: white">
						<h1>ADMIN PAGE</h1>
					</div>
					<div class="row">
						<div class="col-lg-4">
							<a href="userManegement.jsp">
								<div class="card" style="width: 350px; height: 200px; border: 1px black solid;">
									<div class="card-header text-center">
										<h3>USER</h3>
									</div>
									<div class="card-body text-center" style="margin: 30px">
										<h4>회원관리</h4>
									</div>
									<div class="card-footer text-center">
										<h1>
											<span class="glyphicon glyphicon-user"></span>
										</h1>
									</div>
								</div>
							</a>
						</div>
						<div class="col-lg-4">
							<a href="productManegement1.jsp">
								<div class="card" style="width: 350px; height: 200px; border: 1px black solid;">
									<div class="card-header text-center">
										<h3>PRODUCT</h3>
									</div>
									<div class="card-body text-center" style="margin: 30px">
										<h4>
											상품관리
											<br>
										</h4>
									</div>
									<div class="card-footer text-center">
										<h1>
											<span class="glyphicon glyphicon-gift"></span>
										</h1>
									</div>
								</div>
							</a>
						</div>
						<div class="col-lg-4">
							<a href="productManegement2.jsp">
								<div class="card" style="width: 350px; height: 200px; border: 1px black solid;">
									<div class="card-header text-center">
										<h3>BOARD</h3>
									</div>
									<div class="card-body text-center" style="margin: 30px">
										<h4>재고관리</h4>
									</div>
									<div class="card-footer text-center">
										<h1>
											<span class="glyphicon glyphicon-list-alt"></span>
										</h1>
									</div>
								</div>
							</a>
						</div>

					</div>

				</div>
			</div>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>




	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="/web/js/bootstrap.min.js"></script>

</body>
</html>