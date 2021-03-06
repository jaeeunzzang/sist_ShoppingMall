<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="css/maincss.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
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
				<h1 align="center">WISH LIST</h1>
				<br>
				<br>
				<table class="table table-hover">
					<colgroup>
						<col width="50" />
						<col width="100" />
						<col width="400" />
						<col width="100" />
						<col width="100" />
					</colgroup>
					<thead>
						<tr>
							<th class="text-center"><input type="checkbox" value=""></th>
							<th class="text-center">이미지</th>
							<th class="text-center">상품정보</th>
							<th class="text-center">판매가</th>
							<th class="text-center">선택</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="text-center"><input type="checkbox" value=""></th>
							<th class="text-center"><img src="img/knit.jpg" /></th>
							<th>Knit<br>[ 옵션 : Mint / S ]
							</th>
							<th class="text-center">32000</th>
							<th class="text-center">
								<button type="button" class="btn btn-default btn-s">주문하기</button> <br>
								<button type="button" class="btn btn-default btn-s">장바구니</button> <br>
								<button type="button" class="btn btn-default btn-s">삭제하기</button>
							</th>
						</tr>
						<tr>
							<th class="text-center"><input type="checkbox" value=""></th>
							<th class="text-center"><img src="img/denim.jpg" /></th>
							<th>Denim<br>[ 옵션 : Black / S ]
							</th>
							<th class="text-center">38000</th>
							<th class="text-center">
								<button type="button" class="btn btn-default btn-s">주문하기</button> <br>
								<button type="button" class="btn btn-default btn-s">장바구니</button> <br>
								<button type="button" class="btn btn-default btn-s">삭제하기</button>
							</th>
						</tr>
					</tbody>
				</table>
				<form role="form" class="form-inline  pull-left">
					<button type="button" class="btn btn-default btn-s">선택상품 삭제하기</button>
					<button type="button" class="btn btn-default btn-s">선택상품 장바구니</button>
				</form>
				<form role="form" class="form-inline  pull-right">
					<button type="button" class="btn btn-default btn-s">전체상품 주문</button>
					<button type="button" class="btn btn-default btn-s">관심상품 비우기</button>
				</form>
				<br>
				<br>

				<div class="text-center">
					<ul class="pagination">
						<li class="disabled"><a href="#"> <span>«</span>
						</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#"> <span>»</span>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>

</body>
</html>