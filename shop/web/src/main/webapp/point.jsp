<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/kfonts2.css" rel="stylesheet">
<link href="css/maincss.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
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
				<h1 align="center">POINT</h1>
				<br><br>
				
				<!--적립금  -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">적립금</h4>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
						<table class="table table-condensed">
								<colgroup>
									<col width="300" />
									<col width="700" />									
								</colgroup>		
								<tr>
									<td rowspan="2" align=center><h5 class="text-center">총 적립금</h5><h2 class="text-center">2000</h2></td>
									<td>사용가능 적립금액 : 2000 Point</td>
								</tr>
								<tr>
									<td>미가용  적립금액 : 0 Point</td>																																			
								</tr>	
						</table>
						</div>			
					</div>
				</div><!--panel  -->
				
				
				<!--적립내역 -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">적립 내역</h4>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-condensed">
								<colgroup>
									<col width="150" />
									<col width="150" />									
									<col width="500" />
									<col width="200" />
								</colgroup>
								<thead>
									<tr>
										<th class="text-center">주문일자</th>
										<th class="text-center">적립금</th>
										<th class="text-center">관련주문</th>
										<th class="text-center">내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th class="text-center">2020-12-08</th>
										<th class="text-center">2000</th>
										<th class="text-center">-</th>						
										<th class="text-center">신규회원 적립금</th>							
									</tr>									
								</tbody>
							</table>
						</div>
					</div>
				</div>		
				<li>사용가능 적립금은 상품구매 시 바로 사용가능합니다.</li>
				<li>주문으로 발생한 적립금은 배송완료 후 사용가능합니다.</li>			
			</div>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>

