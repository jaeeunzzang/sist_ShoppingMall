<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NO NAME QNA</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/kfonts2.css" rel="stylesheet">
<link href="css/maincss.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		if(${alert eq 'private'}){
			alert("비밀글 입니다");
		}
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
				<h1 align="center">Q&A</h1>
				<br>
				<br>
				<form role="form" class="form-inline pull-right" name="searchFrm" method="post"
					action="qnaSearch.do">
					<select class="form-control" name="query">
						<option value="q_title">제목</option>
						<option value="q_contents">내용</option>
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
						<col width="500" />
						<col width="100" />
						<col width="100" />
						<col width="50" />
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
						<c:forEach var="i" items="${qnaList}" varStatus="cnt">
							<tr>
								<th class="text-center">${cnt.count}</th>
								<c:choose>
									<c:when test="${i.state eq 'new'}">
										<th class="text-center"><img src="img/${i.p_fileName}" /></th>
										<th><a href="qnaInfo.do?q_no=${i.q_no}&q_pnum=${i.q_pnum}">
												${i.q_title}
												<c:if test="${i.secret eq 'private'}">
													<img class="reImg" src="img/lock.png">
												</c:if>
											</a></th>
									</c:when>
									<c:otherwise>
										<th></th>
										<th><img class="reImg" src="img/re.png"> <a
												href="qnaInfo.do?q_no=${i.q_no}&q_pnum=${i.q_pnum}">
												[RE]${i.q_title}
												<c:if test="${i.secret eq 'private'}">
													<img class="reImg" src="img/lock.png">
												</c:if>
											</a></th>
									</c:otherwise>
								</c:choose>
								<th class="text-center">${i.m_id}</th>
								<th class="text-center">${i.q_regdate}</th>
							</tr>
						</c:forEach>

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
