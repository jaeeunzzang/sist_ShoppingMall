<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/web/shop/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/shop/css/kfonts2.css" rel="stylesheet">
<link href="css/maincss.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/shop/css/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("button#save").click(function() {
			document.location.href = 'noticeInsert.do';
		});
		$("button#mod").click(function() {
			document.location.href = 'noticeUpdate.do';
		});
	});
</script>

</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<div class="wrap">
		<div class="mainWrap">
			<div class="mainContents">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">NOTICE</h4>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<c:choose>
								<c:when test="${job eq 'new'}">
									<form action="noticeInsert.do">
										<table class="table table-bordered">
											<colgroup>
												<col width="100" />
												<col width="900" />
											</colgroup>
											<tr>
												<td class="text-center">제목</td>
												<td>
													<div class="form-group">
														<input type="text" class="form-control" placeholder="제목을 입력해주세요" style="width: 945px">
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="2"><textarea rows="12" class="form-control text-center"
														placeholder="내용을 입력해주세요"></textarea></td>
											</tr>
										</table>
									</form>
									<form role="form" class="form-inline pull-right">
										<button type="button" class="btn btn-default btn-s" id="save">등록</button>
										<a href="noticeList.do">
											<button type="button" class="btn btn-default btn-s">목록</button>
										</a>
									</form>
								</c:when>
								<c:otherwise>
									<form action="noticeInsert.do">
										<table class="table table-bordered">
											<colgroup>
												<col width="100" />
												<col width="900" />
											</colgroup>
											<tr>
												<td class="text-center">제목</td>
												<td>
													<div class="form-group">
														<input type="text" class="form-control" value="${noticeMod.n_title}"
															style="width: 945px">
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="2"><textarea rows="12" class="form-control text-center">${noticeMod.n_contents}</textarea></td>
											</tr>
										</table>
									</form>
									<form role="form" class="form-inline pull-right">
										<button type="button" class="btn btn-default btn-s" id="mod">수정</button>
										<a href="noticeList.do">
											<button type="button" class="btn btn-default btn-s">목록</button>
										</a>
									</form>
								</c:otherwise>
							</c:choose>
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

