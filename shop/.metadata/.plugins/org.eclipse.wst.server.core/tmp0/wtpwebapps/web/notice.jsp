<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/maincss.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("button#write").click(function() {
			document.location.href = 'noticeWrite.do?job=new';
		});
	});
</script>

</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<div class="wrap">
		<div class="mainWrap">
			<div class="mainContents">
				<h1 align="center">NOTICE</h1>
				<br>
				<br>
				<form role="form" class="form-inline pull-right">
					<select class="form-control">
						<option>제목</option>
						<option>내용</option>
						<option>이름</option>
					</select> <input type="text" class="form-control input-s">
					<button type="button" class="btn btn-default btn-s">찾기</button>
				</form>
				<br>
				<br>
				<br>
				<br>

				<table class="table table-hover">
					<colgroup>
						<col width="50" />
						<col width="500" />
						<col width="100" />
					</colgroup>
					<thead>
						<tr>
							<th class="text-center">NO</th>
							<th class="text-center">TITLE</th>
							<th class="text-center">NAME</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="i" items="${notice}" varStatus="cnt">
							<tr>
								<th class="text-center">${cnt.count}</th>
								<th><a href="noticeInfo.do?n_no=${i.n_no}">${i.n_title}</a></th>
								<th class="text-center">ADMIN</th>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<p align="right">
					<button type="button" class="btn btn-default btn-s" id="write">글쓰기</button>
				</p>
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
