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
				<h1 align="center">Q&A</h1>
				<br>
				<br>
				<form role="form" class="form-inline pull-right">
					<select class="form-control">
						<option>제목</option>
						<option>내용</option>
						<option>이름</option>
						<option>아이디</option>
					</select> <input type="text" class="form-control input-s">
					<button type="button" class="btn btn-default btn-s">찾기</button>
					<a href="qnaWrite.jsp"><button type="button" class="btn btn-default btn-s">글쓰기</button></a>
				</form>
				<br>
				<br>
				<br>
				<br>
				<table class="table table-hover">
					<colgroup>
						<col width="50" />
						<col width="100" />
						<col width="500" />
						<col width="100" />
						<col width="100" />
						<col width="50" />
					</colgroup>
					<thead>
						<tr>
							<th class="text-center">NO</th>
							<th class="text-center">PRODUCT</th>
							<th class="text-center">SUBJECT</th>
							<th class="text-center">NAME</th>
							<th class="text-center">DATE</th>
							<th class="text-center">HIT</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="text-center">1</th>
							<th class="text-center"><img src="/web/shop/img/trouser.jpg" /></th>
							<th><a href="qnaInfo.jsp">[상품문의] 사이즈가 궁금해요! <img class="reImg" src="/web/shop/img/lock.png"></a></th>
							<th class="text-center">강***</th>
							<th class="text-center">2020-11-20</th>
							<th class="text-center">7</th>
						</tr>
						<tr>
							<th class="text-center">2</th>
							<th></th>
							<th><img class="reImg" src="/web/shop/img/re.png">[RE] 사이즈가 궁금해요! <img class="reImg"
								src="/web/shop/img/lock.png"></th>
							<th class="text-center">NONAME</th>
							<th class="text-center">2020-11-20</th>
							<th class="text-center">1</th>
						</tr>
						<tr>
							<th class="text-center">3</th>
							<th class="text-center"><img src="/web/shop/img/e.jpg" /></th>
							<th>[배송문의] 배송문의 드려요~ <img class="reImg" src="/web/shop/img/lock.png"></th>
							<th class="text-center">김***</th>
							<th class="text-center">2020-11-20</th>
							<th class="text-center">7</th>
						</tr>
						<tr>
							<th class="text-center">4</th>
							<th></th>
							<th><img class="reImg" src="/web/shop/img/re.png"> [RE] 배송문의 드려요~<img class="reImg"
								src="/web/shop/img/lock.png"></th>
							<th class="text-center">NONAME</th>
							<th class="text-center">2020-11-20</th>
							<th class="text-center">1</th>
						</tr>
					</tbody>
				</table>

				<div class="text-center">
					<ul class="pagination">
						<li class="disabled"><a href="#">
								<span>«</span>
							</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">
								<span>»</span>
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
