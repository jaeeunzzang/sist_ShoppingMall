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
				<h1 align="center">상품코드관리</h1>
				<br> <br>
				<form role="form" class="form-inline text-center">
						<select class="form-control">
							<option value="1">전체</option>
							<option value="2">상품번호</option>
							<option value="3">상품명</option>
							<option value="4">상품분류</option>
						</select> <input type="text" class="form-control input-s">
					<button type="button" class="btn btn-default btn-s">검색</button>
				</form>
				<br><br>
				
				<form role="form" class="form-inline pull-right">
					<button type="button" class="btn btn-default btn-s glyphicon glyphicon-plus">추가</button>
					<button type="button" class="btn btn-default btn-s glyphicon glyphicon-remove">삭제</button>
					<button type="button" class="btn btn-default btn-s glyphicon glyphicon-floppy-disk">저장</button>						
				</form>
				<br><br>
				
						<table class="table table-hover table-bordered">
							<thead style="background-color: #eeeeee">
								<tr>
									<th class="text-center"><input type="checkbox"></th>
									<th class="text-center">No</th>
									<th class="text-center">상품번호</th>
									<th class="text-center">분류</th>
									<th class="text-center">상품명</th>
									<th class="text-center">수량</th>
									<th class="text-center">가격</th>
									<th class="text-center">사진</th>
									<th class="text-center">상품설명</th>
									<th class="text-center">출시일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center"><input type="checkbox"></td>
									<td class="text-center">1</td>
									<td class="text-center">201119</td>
									<td class="text-center">상의</td>
									<td class="text-center">후드티</td>
									<td class="text-center">5</td>
									<td class="text-right">50,000원</td>
									<td class="text-center">없음</td>
									<td class="text-left">기본 후드티</td>
									<td class="text-center">2020-11-19</td>
								</tr>
							</tbody>
						</table>
					</div>
				
				
				<div class="text-center">
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
		<jsp:include page="footer.jsp"></jsp:include>
		</div>



	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="/web/js/bootstrap.min.js"></script>

</body>
</html>
