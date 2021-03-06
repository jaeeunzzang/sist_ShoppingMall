<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NO NAME REVIEW</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/kfonts2.css" rel="stylesheet">
<link href="css/maincss.css" rel="stylesheet">
<style>
.best {
	height: 440px;
}

.best h5 {
	border-bottom: 1px solid #C0C0C0;
	font-size: 16px;
	padding-bottom: 5px
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("button#search").click(function() {
			if ($("input[name='data']").val().length < 1) {
				$("input[name='data']").val("");
			}
			$("form[name='searchFrm']").submit();
		});
	});
</script>

</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<div class="wrap">
		<div class="mainWrap">
			<div class="mainContents">
				<h1 align="center">REVIEW</h1>
				<br>
				<br>
				<br>
				<br>
				<!-- <h4 align="center">BEST REVIEW</h4>
				<br>
				<br>
				<br>
				<br>
				<div id="carousel-generic" class="carousel2 slide">
					<div class="carousel-inner">
						<div class="item active">
							<div class="row">
								<div class="col-xs-3 col-md-3">
									<div class="thumbnail best">
										<a class="fancybox" rel="gallery1" href="reviewInfo.jsp">
											<img src="img/coat.jpg">
										</a>
										<div class="caption">
											<h5>마음에 쏙 들어요!</h5>
											<p>
												<img src="img/coat.jpg" width="40" height="40"> Coat
											</p>
										</div>
									</div>
								</div>
								<div class="col-xs-3 col-md-3">
									<div class="thumbnail best">
										<a class="fancybox" rel="gallery1" href="#">
											<img src="img/trouser.jpg">
										</a>
										<div class="caption">
											<h5>소재가 완전 고급스러워요~</h5>
											<p>
												<img src="img/trouser.jpg" width="40" height="40"> Trouser
											</p>
										</div>
									</div>
								</div>
								<div class="col-xs-3 col-md-3">
									<div class="thumbnail best">
										<a class="fancybox" rel="gallery1" href="#">
											<img src="img/skirt.jpg">
										</a>
										<div class="caption">
											<h5>다른 색상도 재구매 예정입니다!!</h5>
											<p>
												<img src="img/knit.jpg" width="40" height="40"> Knit
											</p>
										</div>
									</div>
								</div>
								<div class="col-xs-3 col-md-3">
									<div class="thumbnail best">
										<a class="fancybox" rel="gallery1" href="#">
											<img src="img/e.jpg">
										</a>
										<div class="caption">
											<h5>편하고 좋아요</h5>
											<p>
												<img src="img/denim.jpg" width="40" height="40"> Denim
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<br>
				<br>
				<br>
				<br>
 -->
				<form role="form" class="form-inline pull-right" action="reviewSearch.do" name="searchFrm"
					method="post">
					<select class="form-control" name="query">
						<option value="r_title">제목</option>
						<option value="r_contents">내용</option>
						<option value="m_id">아이디</option>
					</select> <input type="text" class="form-control input-s" name="data">
					<button type="button" class="btn btn-default btn-s" id="search">찾기</button>
				</form>
				<br>
				<br>
				<br>
				<br>
				<table class="table table-hover">
					<colgroup>
						<col width="50" />
						<col width="100" />
						<col width="450" />
						<col width="100" />
						<col width="100" />
					</colgroup>
					<thead>
						<tr>
							<th class="text-center">NO</th>
							<th class="text-center">PRODUCT</th>
							<th class="text-center">TITLE</th>
							<th class="text-center">ID</th>
							<th class="text-center">DATE</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="i" items="${reviewList}" varStatus="cnt">
							<tr>
								<th class="text-center">${cnt.count}</th>
								<th class="text-center"><img src="upload/${i.r_fileName}" /></th>
								<th><a href="reviewInfo.do?r_no=${i.r_no}">${i.r_title}</a></th>
								<th class="text-center">${i.m_id}</th>
								<th class="text-center">${i.r_regdate}</th>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<br>
				<br>
				<br>
				<br>

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