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
<style type="text/css">
#order{
	width: 235px;
}
</style>
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
				<h1 align="center">ORDER</h1>
				<br><br>
				
				<!--주문내역  -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">주문내역</h4>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-condensed">
								<colgroup>
									<col width="70" />
									<col width="300" />
									<col width="100" />
									<col width="70" />
									<col width="100" />
									<col width="100" />
								</colgroup>
								<thead>
									<tr>
										<th class="text-center">이미지</th>
										<th class="text-center">상품정보</th>
										<th class="text-center">판매가</th>
										<th class="text-center">수량</th>
										<th class="text-center">배송비</th>
										<th class="text-center">합계</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th class="text-center"><img src="/web/shop/img/denim.jpg" /></th>
										<th>Denim <br>[ 옵션 : Black / S ]</th>
										<th class="text-center">38000</th>
										<th class="text-center">1</th>
										<th class="text-center">2500</th>
										<th class="text-center">40500</th>
									</tr>
									<tr>
										<th colspan="6" class="text-right">상품 구매 금액 38000 + 배송비 2500 = 합계: 40500</th>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div><!--panel  -->
				
				<!--배송정보  -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">배송정보</h4>
					</div>
					<div class="panel-body">
						<div class="table-responsive">				
							<table class="table table-bordered">		
								<tr>
									<th scope="row">배송지 선택</th>
									<td>
										<label class="radio-inline"> <input type="radio" name="optionsRadios" id="optionsRadios value="option1" checked>회원 정보와 동일</label> 
										<label class="radio-inline"> <input type="radio" name="optionsRadios" id="optionsRadios value="option1" checked>새로운 배송지</label> 										
									</td>
								</tr>
								<tr>
									<th scope="row">받으시는 분</th>
									<td>
										<input type="text">
									</td>
								</tr>
								<tr>
									<th scope="row">주소</th>
									<td>
										<input type="text" class="col-xs-1"><a href="#"><button type="button" class="btn btn-default btn-xs">우편번호</button></a><br><br> 
										<input type="text" class="col-xs-6" placeholder="기본주소"><br><br>
										<input type="text" class="col-xs-6" placeholder="나머지주소">								  
									</td>													
								</tr>					
								<tr>
									<th scope="row">휴대전화</th>
									<td>
										<select>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select>-<input type="text" >-<input type="text" >
									</td>
								</tr>								
								<tr>
									<th scope="row">이메일</th>
									<td>
										<input type="text">@<input type="text">
										<select>
												<option value="" selected="selected">이메일 선택</option>
												<option value="naver.com">naver.com</option>
												<option value="daum.net">daum.net</option>
												<option value="gmail.com">gmail.com</option>
												<option value="etc">직접입력</option>
										</select>
									</td>
								</tr>							
								<tr class="">
									<th scope="row">배송메시지 </th>
									<td>
									<textarea class="form-control" placeholder="배송시 참고할 사항이 있으면 적어주세요"></textarea>
									</td>
								</tr>	
							</table>	
						</div>
					</div>			
				</div><!--panel  -->
				
				<!--결제 예정 금액 -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">결제 예정 금액</h4>
					</div>
					<div class="panel-body">
						<div class="table-responsive">															
							<table class="table table-bordered">
								<colgroup>
									<col width="200" />
									<col width="800" />	
								</colgroup>	
								<tbody>	
								<tr>
									<th scope="row">총 할인금액</th>
									<td>0</td>
								   	</tr>										
									<tr>
										<th scope="row">쿠폰할인</th>
								        <td><button class="btn btn-default btn-xs">쿠폰선택</button></td>
								    </tr>
									<tr>
										<th scope="row">총 부가결제금액</th>
								        <td>0</strong></td>
								   	</tr>
									<tr>
										<th scope="row">적립금</th>
								        <td>
								  			<p><input type="text"> Point (총 사용가능 적립금 : 2000 Point)</p>
											<li>적립금은 최소 3,000 이상일 때 결제가 가능합니다.</li>
								            <li>최대 사용금액은 제한이 없습니다.</li>
								            <li>적립금 사용 시 배송비는 적립금으로 사용 할 수 없습니다.</li>
								            <li>적립금 사용 시 해당 상품에 대한 적립금은 적립되지 않습니다.</li>							
										</td>
									</tr>
								</tbody>
							</table>
							<table class="table table-condensed">
								<colgroup>				
									<col width="100" />
									<col width="100" />
									<col width="100" />
								</colgroup>
								<thead>
									<tr>
										<th class="text-center">총 주문 금액</th>
										<th class="text-center">총 할인 + 부가결제 금액</strong></th>
										<th class="text-center"><strong>총 결제 예정 금액</strong></th>							
									</tr>
								</thead>
								<tbody>
									<tr>
										<th class="text-center">40500</th>
										<th class="text-center">- 0</th>
										<th class="text-center">= 40500</th>
									</tr>
								</tbody>
							</table>							
						</div>
					</div>			
				</div><!--panel  -->	
		
				<!--결제수단  -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">결제수단</h4>
					</div>
					<div class="panel-body">
						<div class="table-responsive">	
							<label class="radio-inline"> <input type="radio" name="optionsRadios" id="optionsRadios value="option1" checked>카드결제</label> 
							<label class="radio-inline"> <input type="radio" name="optionsRadios" id="optionsRadios value="option1" checked>무통장 입금</label><br><br> 										
							
							<!--카드결제-->
							<table class="table table-bordered">
								<colgroup>
									<col width="200" />
									<col width="600" />					
									<col width="200" />					
								</colgroup>		
								<tr>
									<th scope="row">카드선택</th>
									<td>
										<select>
												<option value="" selected="selected">선택해주세요.</option>
												<option>신한카드</option>
												<option>비씨카드</option>
												<option>KB국민카드</option>
												<option>현대카드</option>
												<option>우리카드</option>
												<option>농협카드</option>
												<option>씨티카드</option>
												<option>삼성카드</option>
												<option>롯데카드</option>																				
										</select>
									</td>
									<td rowspan="2">		
										<h5 class="text-center">최종 결제 금액</h5><h2 class="text-center">40500</h2>							
									</td>
								</tr>
								<tr>
									<th scope="row">할부기간</th>
									<td>
										<select>
												<option value="" selected="selected">일시불</option>
												<option>2개월</option>
												<option>3개월</option>
												<option>4개월</option>
												<option>5개월</option>
												<option>6개월</option>
												<option>7개월</option>
												<option>8개월</option>
												<option>9개월</option>
												<option>10개월</option>
												<option>11개월</option>
												<option>12개월</option>																														
										</select>								  
									</td>													
								</tr>	
							</table>
							
							<!--무통장 입금-->
							<%-- <table class="table table-bordered"">
								<colgroup>
									<col width="200" />
									<col width="600" />					
									<col width="200" />					
								</colgroup>		
								<tr>
									<th scope="row">입금자명</th>
									<td>
										<input type="text">
									</td>
									<td rowspan="2">		
										<h5 class="text-center">최종 결제 금액</h5><h2 class="text-center">40500</h2>							
									</td>
								</tr>
								<tr>
									<th scope="row">입금은행</th>
									<td>
										<select>
												<option value="" selected="selected">선택해주세요</option>
												<option value="">농협은행 119-56-143811 노네임(NONAME)</option>
																																		
										</select>								  
									</td>													
								</tr>	
							</table> --%>
							
							<input type="checkbox">결제정보를 확인하였으며, 구매진행에 동의합니다.
							<button class="btn btn-secondary btn-s pull-right" id="order">결제하기</button>																						
						</div>
					</div>			
				</div><!--panel  -->	
						
			</div>
		</div>	
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>

