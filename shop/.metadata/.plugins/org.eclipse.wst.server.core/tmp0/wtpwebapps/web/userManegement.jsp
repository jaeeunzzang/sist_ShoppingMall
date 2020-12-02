<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>USER MANAGEMENT</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/css/kfonts2.css" rel="stylesheet">
<link href="css/maincss.css" rel="stylesheet">

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
			<div class="container">
				<div class="jumbotron text-center" style="background-color: white">
					<h1>회원관리</h1>
				</div>
				<form class="navbar-form text-center" action="#">
					<div class="form-group">
						<select class="form-control">
							<option value="1">전체</option>
							<option value="2">회원번호</option>
							<option value="3">회원명</option>
						</select> <input type="text" class="form-control" placeholder="검색어를 입력하세요." style="width: 230px">
					</div>
					<button type="submit" class="btn btn-default">검색</button>
				</form>
				<div class="form-group form-check text-center">
					<label class="form-check-label"> <input class="form-check-input" type="checkbox">
						이름순 <input class="form-check-input" type="checkbox"> 누적금액순
					</label>
				</div>

				<form action="#" method="POST" name="frmM">
					<br>
					<br>
					<br>
					<div class="container">
						<div class="navbar navbar-right">
							<button class="btn">
								<span class="glyphicon glyphicon-floppy-disk"></span>
								저장
							</button>
						</div>
						<table class="table table-hover table-bordered">
							<thead style="background-color: #969696">
								<tr>
									<th class="text-center"><input type="checkbox"></th>
									<th class="text-center">No</th>
									<th class="text-center">회원번호</th>
									<th class="text-center">이름</th>
									<th class="text-center">ID</th>
									<th class="text-center">성별</th>
									<th class="text-center">생년월일</th>
									<th class="text-center">주소</th>
									<th class="text-center">핸드폰번호</th>
									<th class="text-center">등급</th>
									<th class="text-center">포인트</th>
									<th class="text-center">가입일</th>
									<th class="text-center">누적금액</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center"><input type="checkbox"></td>
									<td class="text-center">1</td>
									<td class="text-center">201119</td>
									<td class="text-center">아이유</td>
									<td class="text-center">IU</td>
									<td class="text-center">여</td>
									<td class="text-right">1990/12/27</td>
									<td class="text-center">서울시 서초구 어쩌구 저쩌구</td>
									<td class="text-left">010-1234-5678</td>
									<td class="text-center">GOLD</td>
									<td class="text-center">100,000P</td>
									<td class="text-center">2019-05-16</td>
									<td class="text-center">10,000,000원</td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
				<div class="container text-center">
					<ul class="pagination">
						<li><a href="#">
								<span class="glyphicon glyphicon-chevron-left"></span>
							</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li class="active"><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">
								<span class="glyphicon glyphicon-chevron-right"></span>
							</a></li>
					</ul>
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