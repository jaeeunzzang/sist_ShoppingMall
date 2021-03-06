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
<script src="js/bootstrap.min.js"></script>
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
				<h1 align="center">BOARD</h1>
				<br>
				<br>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">Q&A</h4>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-condensed">
								<colgroup>
									<col width="50" />
									<col width="500" />
									<col width="100" />
									<col width="100" />
									<col width="50" />
								</colgroup>
								<thead>
									<tr>
										<th class="text-center">번호</th>
										<th class="text-center">제목</th>
										<th class="text-center">작성자</th>
										<th class="text-center">작성일</th>
										<th class="text-center">조회수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th class="text-center">1</th>
										<th class="text-center"><a href="qnaInfo.jsp">[상품문의] 사이즈가 궁금해요!</a></th>
										<th class="text-center">강***</th>
										<th class="text-center">2020-11-20</th>
										<th class="text-center">7</th>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">리뷰</h4>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-condensed">
								<colgroup>
									<col width="50" />
									<col width="500" />
									<col width="100" />
									<col width="100" />
									<col width="50" />
								</colgroup>
								<thead>
									<tr>
										<th class="text-center">번호</th>
										<th class="text-center">제목</th>
										<th class="text-center">작성자</th>
										<th class="text-center">작성일</th>
										<th class="text-center">조회수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th class="text-center">1</th>
										<th class="text-center"><a href="reviewInfo.jsp">마음에 쏙 들어요!</a></th>
										<th class="text-center">강***</th>
										<th class="text-center">2020-11-20</th>
										<th class="text-center">7</th>
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

