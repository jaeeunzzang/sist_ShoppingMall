<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MY PAGE</title>
<link href="css/maincss.css" rel="stylesheet">
<link href="css/kfonts2.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("button#idcheck").click(function() {
			if ($("input[name='m_pw']").val().length < 1) {
				alert("비밀번호를 입력해주세요");
				return false;
			}
			$("form[name='checkFrm']").submit();
		});

	});
</script>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<div class="wrap">
		<div class="mainWrap">
			<div class="mainContents">
				<div class="container">
					<h1 align="center">MYPAGE</h1>
					<br>
					<br>
					<div class="row">
						<div class="col-lg-4">
							<div class="card" style="width: 350px; height: 200px; border: 1px black solid;">
								<div class="card-header text-center">
									<h3>${memberInfo.m_name}님</h3>
									<h5>[ ${memberInfo.grade} ] 회원이십니다.</h5>
								</div>
								<div class="card-body text-center" style="margin: 20px">
									<h1>
										<span class="glyphicon glyphicon-user"></span>
									</h1>
								</div>
								<div class="card-footer text-center"></div>
							</div>
						</div>
						<div class="col-lg-4">
							<a data-toggle="modal" data-target="#myModal">
								<div class="card"
									style="color: #646464; width: 350px; height: 200px; border: 1px black solid;">
									<div class="card-header text-center">
										<h3>PROFILE</h3>
										<h5>회원정보</h5>
									</div>
									<div class="card-body text-center" style="margin: 20px">
										<h1>
											<span class="glyphicon glyphicon-pencil"></span>
										</h1>
									</div>
									<div class="card-footer text-center">
										<h5>회원이신 고객님의 회원정보를 관리하는 공간입니다.</h5>
									</div>
								</div>
							</a>
						</div>
						<div class="col-lg-4">
							<a href="wishList.jsp">
								<div class="card" style="width: 350px; height: 200px; border: 1px black solid;">
									<div class="card-header text-center">
										<h3>WISH LIST</h3>
										<h5>관심상품</h5>
									</div>
									<div class="card-body text-center" style="margin: 20px">
										<h1>
											<span class="glyphicon glyphicon-heart"></span>
										</h1>
									</div>
									<div class="card-footer text-center">
										<h5>관심상품으로 등록하신 상품의 목록을 보여드립니다.</h5>
									</div>
								</div>
							</a>
						</div>
						<div class="col-lg-4">
							<a href="point.jsp">
								<div class="card" style="width: 350px; height: 200px; border: 1px black solid;">
									<div class="card-header text-center">
										<h3>POINT</h3>
										<h5>적립금</h5>
									</div>
									<div class="card-body text-center" style="margin: 20px">
										<h1>
											<span class="glyphicon glyphicon-plus"></span>
										</h1>
									</div>
									<div class="card-footer text-center">
										<h5>적립금은 상품 구매 시 사용하실 수 있습니다.</h5>
									</div>
								</div>
							</a>
						</div>
						<div class="col-lg-4">
							<a href="#">
								<div class="card" style="width: 350px; height: 200px; border: 1px black solid;">
									<div class="card-header text-center">
										<h3>BOARD</h3>
										<h5>게시물 관리</h5>
									</div>
									<div class="card-body text-center" style="margin: 20px">
										<h1>
											<span class="glyphicon glyphicon-list-alt"></span>
										</h1>
									</div>
									<div class="card-footer text-center">
										<h5>고객님께서 작성하신 게시물을 관리하는 공간입니다.</h5>
									</div>
								</div>
							</a>
						</div>
						<div class="col-lg-4">
							<a href="orderList.jsp">
								<div class="card" style="width: 350px; height: 200px; border: 1px black solid;">
									<div class="card-header text-center">
										<h3>ORDER</h3>
										<h5>주문내역조회</h5>
									</div>
									<div class="card-body text-center" style="margin: 20px">
										<h1>
											<span class="glyphicon glyphicon-inbox"></span>
										</h1>
									</div>
									<div class="card-footer text-center">
										<h5>고객님이 주문하신 상품의 주문내역을 확인하실 수 있습니다.</h5>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 회원정보  Modal -->
		<div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
			aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">비밀번호 재확인</h4>
					</div>
					<div class="modal-body">
						<p class="ptitle">본인확인을 위해 한번 더 비밀번호를 입력해주세요.</p>
						<br>
						<form class="form-horizontal" role="form" name="checkFrm" method="post"
							action="loginCheck.do?state=mypage">
							<div class="form-group">
								<label for="id" class="col-xs-2 col-lg-2 control-label">아이디</label>
								<div class="col-xs-10 col-lg-10">
									<input type="text" value="${memberInfo.m_id}" style="border-style: none;" name="m_id"
										readonly="readonly">
								</div>
							</div>
							<div class="form-group">
								<label for="pw" class="col-xs-2 col-lg-2 control-label">비밀번호</label>
								<div class="col-xs-10 col-lg-5">
									<input type="password" class="form-control" name="m_pw">
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" id="idcheck">확인</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
		<!--Modal -->

		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>