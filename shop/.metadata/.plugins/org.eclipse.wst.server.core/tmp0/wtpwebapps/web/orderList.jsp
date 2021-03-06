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
				<h1 align="center">ORDER LIST</h1>
				<br>
				<br>
				<form role="form" class="form-inline">
					<select class="form-control">
						<option>전체 주문처리상태</option>
						<option>입금전</option>
						<option>배송준비중</option>
						<option>배송중</option>
						<option>배송완료</option>
					</select>
					<button type="button" class="btn btn-default btn-s">오늘</button>
					<button type="button" class="btn btn-default btn-s">1주일</button>
					<button type="button" class="btn btn-default btn-s">1개월</button>
					<button type="button" class="btn btn-default btn-s">3개월</button>
					<button type="button" class="btn btn-default btn-s">6개월</button>
					<input type="date" class="form-control input-s">
					~
					<input type="date" class="form-control input-s">
					<button type="button" class="btn btn-default btn-s">조회</button>
				</form>
				<br>
				<br>

				<li>기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
				<li>주문 번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>

				<br>
				<br>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">주문 상품 정보</h4>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-condensed">
								<colgroup>
									<col width="100" />
									<col width="100" />
									<col width="70" />
									<col width="300" />
									<col width="50" />
									<col width="100" />
									<col width="100" />
								</colgroup>
								<thead>
									<tr>
										<th class="text-center">주문일자</th>
										<th class="text-center">주문번호</th>
										<th class="text-center">이미지</th>
										<th class="text-center">상품정보</th>
										<th class="text-center">수량</th>
										<th class="text-center">상품구매금액</th>
										<th class="text-center">주문처리상태</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th class="text-center">2020-11-20</th>
										<th class="text-center">20201120684</th>
										<th class="text-center"><img src="img/denim.jpg" /></th>
										<th>Denim <br>[ 옵션 : Black / S ]
										</th>
										<th class="text-center">1</th>
										<th class="text-center">38000</th>
										<th class="text-center">배송중</th>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>

