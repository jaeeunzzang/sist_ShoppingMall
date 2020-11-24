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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/shop/js/bootstrap.min.js"></script>
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
				<h1 align="center">CART</h1>
				<br><br>
				<table class="table table-hover">
					<colgroup>
						<col width="50" />
						<col width="100" />
						<col width="400" />
						<col width="100" />
						<col width="100" />
						<col width="100" />
						<col width="100" />
						<col width="100" />
					</colgroup>
					<thead>
						<tr>
							<th class="text-center"><input type="checkbox" value=""></th>
							<th class="text-center">이미지</th>
							<th class="text-center">상품정보</th>
							<th class="text-center">판매가</th>
							<th class="text-center">수량</th>
							<th class="text-center">배송비</th>
							<th class="text-center">합계</th>
							<th class="text-center">선택</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="text-center"><input type="checkbox" value=""></th>
							<th class="text-center"><img src="/web/shop/img/knit.jpg" /></th>
							<th>Knit<br>[ 옵션 : Mint / S ]<br>
								<button class="btn btn-default btn-xs" data-toggle="modal" data-target="#myModal">옵션변경</button>
							</th>

							<th class="text-center">32000</th>
							<th class="text-center">1</th>
							<th class="text-center">2500</th>
							<th class="text-center">57000</th>
							<th class="text-center">
								<button type="button" class="btn btn-default btn-xs">주문하기</button>
								<br>
								<button type="button" class="btn btn-default btn-xs">관심상품</button>
								<br>
								<button type="button" class="btn btn-default btn-xs">삭제하기</button>
							</th>
						</tr>
						<tr>
							<th class="text-center"><input type="checkbox" value=""></th>
							<th class="text-center"><img src="img/denim.jpg" /></th>
							<th>Denim<br>[ 옵션 : Black / S ]<br>
								<button class="btn btn-default btn-xs" data-toggle="modal" data-target="#myModal">옵션변경</button>
							</th>
							<th class="text-center">38000</th>
							<th class="text-center">1</th>
							<th class="text-center">2500</th>
							<th class="text-center">63000</th>
							<th class="text-center">
								<button type="button" class="btn btn-default btn-xs">주문하기</button>
								<br>
								<button type="button" class="btn btn-default btn-xs">관심상품</button>
								<br>
								<button type="button" class="btn btn-default btn-xs">삭제하기</button>
							</th>
						</tr>
					</tbody>
				</table>
				<form role="form" class="pull-left">
					<button type="button" class="btn btn-default btn-xs">선택상품삭제</button>
				</form>
				<form role="form" class="pull-right">
					<button type="button" class="btn btn-default btn-xs">장바구니비우기</button>
				</form>
				<br><br><br><br>
				
				<table class="table">
					<colgroup>
						<col width="150" />
						<col width="100" />
						<col width="400" />
					</colgroup>
					<thead class="thead-active">
						<tr>
							<th class="text-center">총 상품금액</th>
							<th class="text-center">총 배송비</th>
							<th class="text-center">결제예정금액</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="text-center">32000</th>
							<th class="text-center">2500</th>
							<th class="text-center">=34500</th>
						</tr>
					</tbody>
				</table>
				<br><br>
				
				<form role="form" class="form-inline text-center">
					<button type="button" class="btn btn-default btn-s">전체상품주문</button>
					<button type="button" class="btn btn-default btn-s">선택상품주문</button>
				</form>
				<form role="form" class="form-inline  pull-right">
					<button type="button" class="btn btn-default btn-s">쇼핑계속하기</button>
				</form>
				<br><br>
				
			<!-- 옵션변경 Modal -->
			<div class="modal" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">옵션변경</h4>
						</div>
						<div class="modal-body">
							<p class="ptitle">Knit(상품이름)</p><br>
							<p>색상/사이즈</p>
							<select class="form-control">
								<option selected>-[필수]옵션을 선택해주세요-</option>
								<option>블랙</option>
								<option>민트</option>
							</select>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary">변경</button>
							<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
						</div>
					</div>
				</div>
			</div> <!--Modal -->

			</div>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>